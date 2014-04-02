`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CGA
// Engineer: 1/c Magnuson
// 
// Create Date:    10:49:22 10/03/2013 
// Design Name: 
// Module Name:    bin2seg 
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
module bin2seg(
	 input wire[3:0] b_in,
	 output reg[6:0] disp_seg
    );
	 
	 always @ *
	 case(b_in)
    4'b0000 : disp_seg = 7'b1000000; // 0
    4'b0001 : disp_seg = 7'b1111001; // 1
    4'b0010 : disp_seg = 7'b0100100; // 2
	 4'b0011 : disp_seg = 7'b0110000; // 3
    4'b0100 : disp_seg = 7'b0011001; // 4
    4'b0101 : disp_seg = 7'b0010010; // 5
	 4'b0110 : disp_seg = 7'b0000010; // 6
    4'b0111 : disp_seg = 7'b1111000; // 7
    4'b1000 : disp_seg = 7'b0000000; // 8
	 4'b1001 : disp_seg = 7'b0010000; // 9
    default : disp_seg = 7'b0000000; // full
  endcase

endmodule
