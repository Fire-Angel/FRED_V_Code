`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:47:32 11/12/2013 
// Design Name: 
// Module Name:    ZOH_tb 
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
module ZOH_tb;
	 
// Instantiate the module
ZOH uut (
	 .divider(divider),
    .DDS_in(DDS_in), 
    .DDS_out(DDS_out), 
    .clk(clk), 
	 .reset(reset), 
	 .tick(tick)
    );


	 //inputs
	 reg reset; 
	 reg clk;
	 wire signed [15:0] DDS_in;
	 
	 //outputs
	 wire [5:0] divider;
	 wire tick;     
	 wire signed [15:0] DDS_out;  
		
    DDS test (
    .clk(clk), 
    .reset(reset), 
    .PIR(4295000), //PIR), 
    .sin_sample(DDS_in) 
    );	 

//	 wire [2:0] changer;
	 localparam clock_T_ns = 10;
        localparam T = 1'b1;
        localparam F = 1'b0;	  
		  
initial begin 
    initial_conditions();
    reset_uut();
//delay(100);
end
//always begin
//delay(100);
//end



    always begin
	   clk = T;
		#(clock_T_ns/2);
		clk = F;
		#(clock_T_ns/2);
	end

//** Tasks **************************************************** 
    
    task initial_conditions(); begin
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
    
	
	    task delay(input integer N); begin
        repeat(N) @(posedge clk);
    end endtask 
	 
endmodule
