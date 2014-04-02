//*************************************************************
//
// Module: MSK_generator 
//
// Copyright 2013 Aaron P. Dahlen
//
// APDahlen@gmail.com
//
//*************************************************************
//
//  This RTL source is free hardware: you can redistribute it 
//  and/or modify it under the terms of the GNU Lesser General  
//  Public License as published by the Free Software Foundation,  
//  either version 3 of the License, or (at your option) any 
//  later version.
//
//  This RTL source is distributed in the hope that it will be 
//  useful, but WITHOUT ANY WARRANTY; without even the implied 
//  warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR   
//  PURPOSE.  See the GNU Lesser General Public License for 
//  more details.
//
//  You should have received a copy of the GNU Lesser General 
//  Public License along with this RTM source.  If not, see
//  <http://www.gnu.org/licenses/>.
//
//*************************************************************
//       ______________________________________________
//      |                                              |
//      |    MSK_generator                             |
//      |                                              |
//  -30-| data_in                       FIFO_read_tick |----  
//      |                                              |    
//      |                                              |
//      |                                      carrier |-15s-
//      |                                              |
//      |                                          MSK |-15s-
//      |                               Tb_test_point  |----
//      |                               T2b_test_point |----
//      |                                              |
//  ----| clk                  TESTBENCH SIGNALS:      |
//  ----| reset                                        |
//      |______________________________________________|
//
//** Description **********************************************   
//    
//  This module serves as a MSK signal generator.  It includes 
//  a state machine to accept the 30-bit DGPS words from a 
//  FIFO.   
//
//** Instantiation ********************************************
//
//
//  FIXME - add proper instantiation
//
//
//** Parameters ***********************************************
//
//** Signal Inputs: ******************************************
//
//  1) TODO - add hooks for uaer adjustable PIR registers
// 
//  2) DGPS_word: The DGPS signal is based on 30-bit words
//     This input is designed to work with a FIFO.
//
//  3) clk: high speed system clock (typically 100MHz)
//
//  4) reset: global reset
//
//** Signal Outputs *******************************************
//
//  1) next_DGPS_data: Signal the FIFO to present the 
//     next DGPS_word
//
//  2) Tb_test_point: Bit clock test point.
//
//  3) T2b_test_point: Two times the bit clock test point
//
//  4) carrier: 16-bit signed representation of the 
//     carrier frequency.  This DDS generated signal has an
//     effective sample rate of clk (100 MHz).
//
//  5) MSK: 16-bit signed representation of the MSK signal.  
//     This DDS generated signal has an effective sample rate 
//     of clk (100 MHz).
//
//** Comments *************************************************
//
//	1) The timing for this module is based solely on the 
//     carrier frequency DDS.  This should ensure that the MSK 
//     bit clock and the transmitted MSK carrier are always 
//     move in lockstep.  Observe that a second DDS is used to 
//     produce the actual MSK signal.  This second DDS is 
//     slaved to the first as its PIR and reset functions are 
//     slaved to the carrier frequency DDS. 
//
//  2) The carrier frequency is hard coded to 317 kHz.  In the 
//     future this should be user configurable.  See constant 
//     declarations section...
//
//** HISTORY **************************************************
//
// 08 Sep 12: Initial design & simulation using XILINX ISE 12.4
//
// 11 Mar 13: Clean up
//
// 16 Apr 13: Placed into "A_verilog_library" 
//
//*************************************************************

module MSK_generator(
        input wire clk,
        input wire reset,

        input wire [31:0] PIR_carrier, 
        input wire [31:0] PIR_H,
        input wire [31:0] PIR_L,
        input wire [15:0] divisor,

        input wire [29:0] data_in,
        output wire FIFO_read_tick,
        output wire bit_clk_tick,
        output wire two_bit_clk_TP,
        output wire [15:0] carrier,
        output wire [15:0] MSK,
        output wire [2:0] TB_reset_matrix,
		  output wire reset_DDS,
		  output wire PIR_mux_ctrl
);

//** CONSTANT DECLARATIONS ************************************

    /* General shortcuts */
        localparam T = 1'b1;
        localparam F = 1'b0;

    // for now hard code the carrier frequency to 317 kHz

//        localparam PIR_carrier = 32'd13615046; 
//        localparam PIR_H = 32'd13616120;
//        localparam PIR_L = 32'd13613972;
//        localparam Tb_divisor = 3170;

//** SYMBOLIC STATE DECLARATIONS ******************************

//** SIGNAL DECLARATIONS **************************************

   //wire bit_clk_tick;
    wire Tb_extended;

   // wire PIR_mux_ctrl;
   // wire reset_DDS;
   // wire reset_DDS_180;
    wire two_bit_clk;

  //  wire next_DGPS_data;
    wire [31:0] MSK_PIR;

//** INSTANTIATIONS *******************************************

    // This DDS produces the carrier frequency.

        wire signed [15:0] DDS_carrier_samples;
        
            DDS #(
                .acc_width(32)
            )
            DDS_carrier(
                .clk(clk),
                .reset(reset),
                .PIR(PIR_carrier),                  // Bus [32 : 0]
                .sin_sample(DDS_carrier_samples)    // Bus [15 : 0]
            );



    // A mod-m counter is used to generate the MSK bit
    // clock (Tb) based on the sinusoid signal produced
    // by the carrier DDS.

        mod_m_rise_edge_var #(.width(16))
            bit_clock_counter(
            .clk(clk), 
            .reset(reset),
            .M(divisor),
            .stimulus(!DDS_carrier_samples[15]),
          //.cnt(cnt),
            .zero_tick(bit_clk_tick)
          //.tb_state(tb_state)
        );



    // Convienient test points for the Tb and T2b 
    // signal are produced by entending associated
    // signals.

        pulse_extender #(
            .M(8'hFF)
            )
            T2b_extender 
            (
                .clk(clk), 
                .reset(reset),
                .in_tick(two_bit_clk),
                .extended_pulse(two_bit_clk_TP)
            );




    // The MSK signal is generated via a DDS.  Note that
    // the PIR is toggled between two values.  The 
    // MSK_controller module select the appropriate PIR
    // based on the Tb tick.

        wire signed [15:0] DDS_MSK_samples;
            DDS #(
                .acc_width(32)
            )
            DDS_MSK(
                .clk(clk), 
                .reset(reset_DDS), 
                .PIR(MSK_PIR),                  // Bus [32 : 0]
                .sin_sample(DDS_MSK_samples)  // Bus [15 : 0]
              //.phase_acc(phase_acc),
              //.tb_addr(addr),
              //  .quadrant(DDS_0_quadrant)   // Bus [1 : 0]
            );


    // The MSK controler module selects the PIR for 
    // the MSK DDS based on the Tb tick.  It also performs 
    // a periodic reset of the MSK DDS so that there is never
    // a slip between the bit clock and the transmitted 
    // MSK signal.  Note, the actual PIR selectin is perfomed 
    // via a assign statement.

        MSK_controller MSK_controller(
            .clk(clk), 
            .reset(reset),
            .bit_clk_tick(bit_clk_tick),
            .data_in(data_in),
            .FIFO_read_tick(FIFO_read_tick),
            .PIR_mux_ctrl(PIR_mux_ctrl),
            .reset_DDS(reset_DDS),
          //.reset_DDS_180(reset_DDS_180),   TODO - add a reset 180...
            .two_bit_clk(two_bit_clk)
          //.done_tick(done_tick),
          //.TB_count(TB_count),
          //.TB_state(TB_state),
          //.TB_buffer(TB_buffer)
        );


//** ASSIGN STATEMENTS ****************************************

    assign MSK_PIR = (PIR_mux_ctrl == T) ? PIR_H : PIR_L;

   // assign Tb_test_point = Tb_extended;
   // assign T2b_test_point = T2b_extended;
    assign MSK = DDS_MSK_samples;
    assign carrier = DDS_carrier_samples;
  
//        wire [15:0] JA_pre;  
//        assign JA_pre = 2**15 + DDS_MSK_samples;     // convert to unsigned
//        assign JA = JA_pre[15-:8];              // output high 8 bits


//** TASKS / FUNCTIONS **************************************** 

endmodule 
