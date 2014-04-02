//******************************************************************************
//
// Module: mod_m_rise_edge_var
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
//  along with this RTM source.  If not, see <http://www.gnu.org/licenses/>.
//
//******************************************************************************  
//       ______________________________________________
//      |                                              |
//      | mod_m_rise_edge_var                          |
//      |______________________________________________|
//      |                                              |
//      |    Parameters defaults                       |
//      |        width = 8                             |
//      |                                              |
//  ----| stimulus                                 cnt |==V=
//      |                                    zero_tick |----
//  ==V=| M                                            |
//      |                                              |
//  ----| clk                       TESTBENCH SIGNALS: |
//  ----| reset                                  state |----
//      |______________________________________________|
//
//** Description **************************************************************
//
//  A mod-m counter where M may be changed externally on the fly.  The count 
//  advances on the rising edge of stimulus.
//
//** Instantiation *************************************************************
//
//    mod_m_rise_edge_var #(.width(width))
//    mod_m_rise_edge_var(
//        .clk(clk), 
//        .reset(reset),
//        .M(M),
//        .stimulus(stimulus),
//        .cnt(cnt),
//        .zero_tick(zero_tick),
//        .tb_state(tb_state)
//    );
//
//** Parameters ****************************************************************
//
//  width: defines width of the counter.  Here it is necessary to define the 
//  width to hold cnt as cnt is not known to synthesis tools.  Recommend using 
//  multiples of 8 to define the width.
//
//** Signal Inputs: ************************************************************
//
//  1) clk: high speed system clock (typically 100MHz)
//
//  2) reset: global reset
//
//  3) M: count modulus.
//
//  4) stimulus: count is incremented when stimulus is asserted high.  The 
//     stimulus line must be first released for subsequent counting.
//
//** Signal Outputs ************************************************************
//
//  1) cnt: provides the current mod-M count.  Note that count starts at zero.
//     Consequently, count never reaches M.  For example, if M = 10, count start
//     at 0 and ends at 9.
//
//  2) zero_tick: this signal will be asserted high for one cycle when count 
//     rolls over to zero.
//
//** Comments ******************************************************************
//
//  1) input M is read on reset or when the counter rolls over to zero. 
// 
//  2) CAUTION: there must be at least 2 sys clk ticks between stimulus assertions 
//
//*******************************************************************************

module mod_m_rise_edge_var #(parameter width = 8)(
    input wire clk,
    input wire reset,
    input wire [width - 1:0] M,
    input wire stimulus,
    output reg [width - 1:0] cnt,
    output wire zero_tick,
    output wire [3:0] tb_state 
);

//** CONSTANT DECLARATIONS *****************************************************

    /* General shortcuts */
        localparam T = 1'b1;
        localparam F = 1'b0;

//** SYMBOLIC STATE DECLARATIONS ***********************************************

    localparam [3:0]
        idle            = 4'h1,
        recover         = 4'h2,
        send_zero_tick  = 4'h4;

//** SIGNAL DECLARATIONS *******************************************************

    reg [3:0] state, state_next;
    reg [width - 1:0] M_buf;

//** INSTANTIATIONS ************************************************************

//** ASSIGN STATEMENTS *********************************************************

    assign zero_tick = (state == send_zero_tick) ? T : F;

    /* Testbench signals */

        assign tb_state = state;

//** TASKS / FUNCTIONS ********************************************************* 
//
//    function integer log2(input integer M);
//        integer i;
//    begin
//        log2 = 1;
//        for (i = 0; 2**i < M; i = i + 1)
//            log2 = i + 1;
//    end endfunction
//
//** BODY **********************************************************************

// State register maintenance

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            state <= idle;
        end else begin
            state <= state_next;
    end end


    always @* begin

        state_next = state;

        case(state)
            idle:               if(stimulus)    state_next = (cnt < M_buf - 1'd1) ? recover : send_zero_tick;

            recover:            if(!stimulus)   state_next = idle;

            send_zero_tick:                     state_next = (stimulus) ? recover : idle;

            default:                            state_next = idle;

        endcase
    end


// Datapath control and registered outputs 

    always @(posedge clk) begin

        case(state)

            idle: begin
                if (reset) begin
                    cnt <= 0;
                    M_buf <= M;
                end else if (stimulus)
                    cnt <= (cnt < M_buf - 1'd1) ? cnt + 1'd1 : {width{1'd0}};
            end

            recover: begin end

            send_zero_tick: begin 
                M_buf <= M;
            end

        endcase
    end

endmodule 
