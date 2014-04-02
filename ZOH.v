`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:47:48 11/07/2013 
// Design Name: 
// Module Name:    ZOH 
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
module ZOH(DDS_in, DDS_out, clk,  divider, reset, tick);
input clk; 
input reset; 
output reg tick = 0; 
output reg [5:0] divider = 0; 
input wire signed [15:0] DDS_in;

output reg signed [15:0] DDS_out;


always @ (posedge clk, posedge reset) begin
if (reset)
divider = 0;
else begin
if (divider < 40)
tick = 0;
else begin  
tick = 1;
DDS_out = DDS_in;
divider = 0;
end
divider = divider + 1;
end 
end

endmodule
