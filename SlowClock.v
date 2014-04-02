`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:25 10/07/2013 
// Design Name: 
// Module Name:    SlowClock 
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
 module SlowClock(clk_in, tick, reset);
    input clk_in ;
    output wire tick;
	 input reset; 
    reg [31:0] counter;
    
	 localparam Max = 10/2;

    always @(posedge clk_in) 
    begin
	 if (reset)
	 counter = 32'd0;
    counter =counter+32'b1;
	 if (counter == Max - 1)
	 counter = 0;
    end
    
	 assign tick = (counter == 0) ? 1'b1:1'b0;

    endmodule
