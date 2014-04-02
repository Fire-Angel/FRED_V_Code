`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:22 10/25/2013 
// Design Name: 
// Module Name:    Main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Main(
	input [7:0] sw,
	input clk, 
	input resetbtn, 
	output [7:0] Led,
	output [7:0] JB,
	output [7:0] JA,
	output JC
    );
	 
	 
	/* Module Inputs */
	assign reset = resetbtn;
        reg [29:0] DGPS_word = 30'b011001110001110111110101010101;
		  always @ (sw) begin
		  DGPS_word = DGPS_word + sw;
		  end
		  assign Led = sw [7:0];
    
    /* Module Outputs */
        
        wire signed [15:0] carrier, MSK, sin_sample, sin_ZOH, MSK_ZOH, mem_out;
        wire Tb_test_point, T2b_test_point;
        wire next_data;
		  wire reset_DDS;
		  wire PIR_mux_ctrl;
		  wire bit_clk_tick;
		  

//** CONSTANT DECLARATION ************************************

   /* Local */     

    /* clock simulation */
        
        localparam clock_T_ns = 10;  
    
    /* General shortcuts */
    
        localparam T = 1'b1;
        localparam F = 1'b0;
        
    // For this example let fc = 317000 Hz with a baud rate = 100 
    
        localparam bit_freq = 64'd100;
        localparam carrier_freq = 64'd300000;
        
    // The DDR "frequency" is set by its PIR as:
    // 
    //      PIR = f_out * (2^acc_width) * T_clk
    //
                  
        localparam DDS_width = 64'd32;
        localparam f_clk = 64'd100000000;
                                                                                  // Example numbers
                                                                                  //----------------
        localparam PIR_carrier = (carrier_freq * 2**DDS_width) / f_clk ;            //13615046; 
        localparam PIR_H = ((carrier_freq + bit_freq / 4) * 2**DDS_width) / f_clk ; //13616120;
        localparam PIR_L = ((carrier_freq - bit_freq / 4) * 2**DDS_width) / f_clk ; //13613972;
        localparam divisor = carrier_freq / bit_freq;                               //3170

MSK_generator Run(
        .clk(clk),
        .reset(reset),
        .PIR_carrier(PIR_carrier), //[31:0]
        .PIR_H(PIR_H),//[31:0]
        .PIR_L(PIR_L),//[31:0]
        .divisor(divisor),//[15:0]
        .data_in(DGPS_word), //[29:0]
        .FIFO_read_tick(FIFO_read_tick),
        .bit_clk_tick(bit_clk_tick),
        .two_bit_clk_TP(two_bit_clk_TP),
        .carrier(carrier), //[15:0]
        .MSK(MSK),  //[15:0]
		  .reset_DDS(reset_DDS),
		  .PIR_mux_ctrl(PIR_mux_ctrl)
        //TB_reset_matrix // [2:0] 
);

//wire [7:0] sine,cos;
//sine_cos sinewave (
//    .clk(clk), 
//    .reset(~resetbtn), 
//    .en(T), 
//    .sine(sine), 
//    .cos(cos)
//    );
	 
    
	 // wire [31:0] PIR = 4295000;12026000 
// sine waves	 
     
		
// Create local sine wave		
	 DDS LO (
    .clk(clk), 
    .reset(reset), 
    .PIR(12026000), //PIR to set 280KHz, 
    .sin_sample(sin_sample)
    );
	 

	 // Decimate to 5MHz
ZOH zoh_sin (
    .DDS_in(sin_sample), 
    .DDS_out(sin_ZOH), 
    .clk(clk),  
    .reset(reset) 
    );
	 
// Decimate to 5MHz
ZOH zoh_MSK (
	.reset(reset),
    .DDS_in(MSK), 
    .DDS_out(MSK_ZOH), 
    .clk(clk)
    );
	
// Store MSK in memory
LoadMSK Store (
    .clk(clk_ZOH), 
    .MSK(MSK_ZOH), 
    .reset(reset), 
    .mem_out(mem_out)
    );	

	 
	 	 // Decimate to 5MHz
ZOH zoh_clk (
    .DDS_in(clk), 
    .DDS_out(clk_ZOH), 
    .clk(clk),  
    .reset(reset) 
    );
	
	
  wire s_axis_data_tvalid;
  wire signed [36 : 0] MSK_filtered_1;
  wire signed [29 : 0] MSK_filtered_2;
  wire signed [31:0] mixed;
  assign mixed = MSK_ZOH * sin_ZOH;
  
    LPF lowpass_1 (
	.clk(clk), // input clk
	.din(mixed [31 : 16]), // input [15 : 0] din
	.dout(MSK_filtered_1)); // output [36 : 0] dout
	
	  LPF_2 lowpass_2 (
	.clk(clk), // input clk
	.din(mixed [31 : 16]), // input [15 : 0] din
	.dout(MSK_filtered_2)); // output [29 : 0] dout
	
	 BPF bandpass (
  .aclk(clk), // input aclk
  .s_axis_data_tvalid(s_axis_data_tvalid), // input s_axis_data_tvalid
  .s_axis_data_tdata(mixed [31 : 16]), // input [15 : 0] filter input
  .m_axis_data_tdata(MSK_filtered) //output [23 : 0] m_axis_data_tdata
);

BPF your_instance_name (
  .aclk(aclk), // input aclk
  .s_axis_data_tvalid(s_axis_data_tvalid), // input s_axis_data_tvalid
  .s_axis_data_tready(s_axis_data_tready), // output s_axis_data_tready
  .s_axis_data_tdata(s_axis_data_tdata), // input [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(m_axis_data_tvalid), // output m_axis_data_tvalid
  .m_axis_data_tdata(m_axis_data_tdata) // output [23 : 0] m_axis_data_tdata
);


reg signed [15:0] JAtemp, JBtemp; 
// Assign to output	
	 always @ (sw)
	 begin
	 case(sw)
    8'b00000001 : begin 
	 JAtemp = MSK + 2**15; JBtemp =  carrier + 2**15;
	 end //MSK && carrier
    8'b00000010 : begin 
	 JAtemp = mixed [31 : 16] + 2**15; JBtemp = mixed [31 : 16];
	 end // MSK*LO && LO
    8'b00000011 : begin 
	 JAtemp = MSK_filtered_1 [36 : 20] + 2**15;JBtemp = MSK_filtered_1 [36 : 20]; 
	 end // filtered MSK && sin_ZOH
	 8'b00000100 : begin 
	 JAtemp = MSK_ZOH + 2**15; JBtemp = sin_ZOH + 2**15; 
	 end // MSK_ZOH && sin_ZOH
	 8'b00000101 : begin 
	 JAtemp = sin_sample + 2**15; JBtemp = sin_ZOH + 2**15; 
	 end // sine && sin_ZOH
	 8'b00000110 : begin 
	 JAtemp = MSK + 2**15; JBtemp = MSK_ZOH + 2**15; 
	 end // MSK && MSK_ZOH
	 8'b00000111 : begin 
	 JAtemp = MSK_filtered_2 [29 : 14] + 2**15; JBtemp = MSK_filtered_2 [23 : 8];
	end	
	8'b00001000 : begin 
	 JAtemp = mem_out + 2**15; JBtemp = mem_out + 2**15;
	end	
	
    default : begin 
	 JAtemp = MSK + 2**15; JBtemp =  carrier + 2**15; 
	 end // Default 
	 endcase
	 end 

// assign outputs to actual ports
assign JA =  JAtemp [15:8]; 
assign JB =  JBtemp [15:8];
assign JC = two_bit_clk_TP;

endmodule
