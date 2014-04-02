`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:13:20 11/04/2013 
// Design Name: 
// Module Name:    lowpass 
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
module lowpass(in,out);
 input in;
 output out;
 voltage in,out;

 parameter real freq_p1 = 1M from (0:inf),
                freq_p2 = freq_p1 from [freq_p1:inf);

 analog
   V(out) <+ laplace_nd(V(in), [1] ,
             [1,1/(`M_TWO_PI*freq_p1),pow(1/(`M_TWO_PI*freq_p2),2)] );

endmodule

