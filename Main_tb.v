`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:26 10/15/2013 
// Design Name: 
// Module Name:    Main_tb 
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
module Main_tb;

	 //inputs
	 reg reset; 
	 reg clk;
    reg [7:0] sw;
	 
	 //outputs
	 wire [6:0] seg;
	 wire [3:0] an;
	 wire clk_out; 

	 wire [2:0] changer;
	 localparam clock_T_ns = 10;
        localparam T = 1'b1;
        localparam F = 1'b0;	 
	 
Main uut (
	 .clk_out(clk_out),
	 .reset(reset),
    .clk(clk), 
    .sw(sw), 
    .seg(seg), 
    .an(an),
	 .changer(changer)
    );
	 
initial begin 
initial_conditions();
reset_uut();
set_sw(5);
delay(100);
end
always begin
increment_sw();
delay(100);
end
    always begin
      clk = T;
		#(clock_T_ns/2);
		clk = F;
		#(clock_T_ns/2);
	end

//** Tasks **************************************************** 
    
    task initial_conditions(); begin
		sw = 8'b00000000;
		reset = T;
		#10;
		reset = F;
		#100;
    end endtask  


    task reset_uut(); begin
        @(posedge clk)
        reset = T;
        @(posedge clk)
        reset = F;
    end endtask  
    

	task increment_sw(); begin
	        @(posedge clk)
			  sw = sw + 8'b1;
	end endtask
	
	    task delay(input integer N); begin
        repeat(N) @(posedge clk);
    end endtask 
	 
		task set_sw(input integer n); begin
	        @(posedge clk)
			  sw = n;
	end endtask
			  

endmodule
