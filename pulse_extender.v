//******************************************************************************
//
// Module: pulse_extender
//
// Copyright 2013 Aaron P. Dahlen               APDahlen@gmail.com
//
//******************************************************************************
//
//  This RTL source is free hardware: you can redistribute it and/or modify it 
//  under the terms of the GNU Lesser General Public License as published by the 
//  Free Software Foundation, either version 3 of the License, or (at your 
//  option) any later version.
//
//  This RTL source is distributed in the hope that it will be useful, but 
//  WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY 
//  or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public 
//  License for more details.
//
//  You should have received a copy of the GNU Lesser General Public License 
//  along with this RTL source.  If not, see <http://www.gnu.org/licenses/>.
//
//******************************************************************************
//           ______________________________________________
//          |                                              |
//          |    Parameters defaults:                      |
//          |        M = 10                                |
//          | _____________________________________________|
//          |                                              |
//      ----| in_tick                       extended_pulse |----
//          |                                              |
//          |                                        count |--v-
//          |                                    done_tick |----
//      ----| clk                                          |
//      ----| reset                                        |
//          |                     TESTBENCH SIGNALS:       |
//          |                                        state |--4-
//          |______________________________________________|
//
//
//** Description *************************************************************** 
//      
//  This module serves to extend the width of a tick
//  to the specified period.  Here period is defined as
//  "M" number of clk ticks.
//
//  The outputs count and done tick are also included allowing
//  the module to be used a delay element or counter.
//
//** Instantiation *************************************************************
//
//    pulse_extender #(
//        .M(8'h0A)
//        )
//        pulse_extender 
//        (
//            .clk(clk), 
//            .reset(reset),
//            .in_tick(in_tick),
//            .count(count),
//            .extended_pulse(extended_pulse),
//            .done_tick(done_tick),
//            .TB_state(TB_state)
//        );
//
//** Parameters ****************************************************************
//
//  1) M: signal in_tick will be extended by this number of clk ticks
//
//** Signal Inputs: ************************************************************
//
//  1) in_tick: stimulus 
//
//  2) clk: high speed system clock (typically 100MHz)
//
//  3) reset: global reset
//
//** Signal Outputs ************************************************************
//
//  1) extended_pulse: is the extended in_tick
//
//  2) count: starting at zero, count is incremented on the rising edge of 
//     clock.  This output counts to M-1 and then resets to zero. 
//
//  3) done_tick: is asserted high for one clock cycle when count equals M.
//     
//** Comments ******************************************************************
//
//  1) Contrary to my usual design practices, this is a Mealy machine.  There is
//     no clock delay between the assertion of signal in_tick and response of 
//     extended_pulse.  Register "extension" serves to mitigate glitches.    
//
//  2) Signal in_tick is assumed to be in the same clock domain as clk.  If not
//     then its period must be greater than the period of clock.  
//
//  3) Signal in_tick may also be a level.  In this situation it must return to 
//     zero before another count cycle may be initiated.
//
//** HISTORY *******************************************************************
//
// 24 Sep 11: Initial design & simulation using XILINX ISE 12.4
//
// 08 Mar 13: Added automatic bus width computation using a
//            log2(M) function.
//
// 29 Apr 13: minor clean up of comments
//
//******************************************************************************

module pulse_extender

   #(
        parameter
            M = 8'h0A
    )
    (
        input wire clk,
        input wire reset,
        input wire in_tick,
        output wire extended_pulse,
        output wire [log2(M)-1:0] count,
        output wire done_tick,
        output wire [3:0] TB_state
    );

//** CONSTANT DECLARATIONS *****************************************************

    /* General shortcuts */
        localparam T = 1'b1;
        localparam F = 1'b0;

//** SYMBOLIC STATE DECLARATIONS ***********************************************

    localparam [3:0]

        idle                = 4'h1,
        countdown           = 4'h2,
        recover             = 4'h4;

//** SIGNAL DECLARATIONS *******************************************************

    reg [3:0] state_reg, state_next;
    reg extension;

    reg [log2(M)-1:0] count_reg, count_next;
    reg done_tick_reg, done_tick_next;

//** INSTANTIATIONS ************************************************************
//
//** ASSIGN STATEMENTS *********************************************************
 
    assign extended_pulse = in_tick | extension;  
    assign count = count_reg;

    assign done_tick = done_tick_reg;

    /* Testbench signals */

        assign TB_state = state_reg;

//** TASKS / FUNCTIONS ********************************************************* 

    function integer log2(input integer M);
        integer i;
    begin
        log2 = 1;
        for (i = 0; 2**i <= M; i = i + 1)
            log2 = i + 1;
    end endfunction

//** FSMD STATE & DATA REGISTERS ***********************************************

    always @(posedge clk, posedge reset) begin
        if(reset) begin
            state_reg <= idle;
            count_reg <= 0; 
            done_tick_reg <= F;
        end  
        else begin
            state_reg <= state_next;
            count_reg <= count_next; 
            done_tick_reg <= done_tick_next;
    end end

//** FSMD NEXT STATE and LOGIC *************************************************

    always@* begin
        state_next = state_reg;
        count_next = count_reg;
        extension = F;
        done_tick_next = F;

        case (state_reg)

            idle: begin
                count_next = 0;
                if(in_tick == T) begin
                    extension = T;
                    state_next = countdown;
            end end 

            countdown: begin
                extension = T;
                if (count_reg == (M - 1))begin  
                    state_next = recover;
                    done_tick_next = T; 
                    count_next = 0;
                end
                else begin  
                    count_next = count_reg + 1;
             end end

        // This state verifies that count_tick returns to zero.  Without it
        // the counter would cycle continuously while count_tick was high.

            recover: begin
                if (in_tick == F) begin
                    state_next = idle;
            end end

            default: state_next = idle;

         endcase

    end

endmodule 
