//******************************************************************************
//
// Module: DDS (Direct Digital Synthesis)
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
//      | DDS (Direct Digital Synthesis)               |
//      |______________________________________________|
//      |                                              |
//      |    Parameters defaults:                      |
//      |        acc_width = 32                        |
//      |                                              |
//  ==V=| Phase Increment Register (PIR)    sin_sample |s16=
//      |                                     quadrant |==2=
//      |                                    phase_acc |==V=       
//      |                                              |
//      |                                              |
//  ----| clk                 TESTBENCH SIGNALS:       |
//  ----| reset                                tb_addr |=10=
//      |______________________________________________|
//    
//** Description ***************************************************************
//
//   This module is a sine wave generator using Direct Digital Synthesis (DDS).
//  
//   The output frequency is defined by the following equations:
//  
//                      PIR
//    f_out = ---------------------
//            (2^acc_width) * T_clk
//
//
//    PIR = f_out * (2^acc_width) * T_clk
//
//** Instantiation *************************************************************
//
//    DDS #(.acc_width(acc_width))
//         DDS(
//            .clk(clk), 
//            .reset(reset), 
//            .PIR(PIR),                // Bus [acc_width : 0] 
//            .sin_sample(sin_sample),  // Bus [15 : 0]    
//            .tb_phase_acc(phase_acc), // Bus [acc_width : 0]  
//            .tb_addr(addr)            // Bus [10 : 0]  
//        );
//
//** Parameters ****************************************************************
//
//  acc_width: Define the width of the DDS's adder and PIR.  A larger bus allows
//  finer frequency adjustments while consuming additional FPGA fabric.
//
//** Signal Inputs: ************************************************************  
//
//  1) Phase Increment Register (PIR): This input sets the DDS frequency.  
//     Recall that PIR is added to the phase accumulator on every clock cycle.
//
//                            PIR
//           f_out = ---------------------
//                   (2^acc_width) * T_clk
//
//
//          PIR = f_out * (2^acc_width) * T_clk
//
//  2) clk: high speed system clock (typically 100MHz)
//
//  3) reset: global reset
//
//** Signal Outputs ************************************************************
//
//  1) sin_sample; this output contains the 16-bit signed samples.  It is 
//     updated every clock cycle.
//
//  2) quadrant: 2-bit output indicating the current quadrant of the sign wave  
//
//  3) phase_acc: the entire phase accumulator is available.  Recall that this 
//     is a ramp used to address the sine wave table.
// 
//** Comments ******************************************************************
//
// 1) The duration between clocks must be sufficient to allow the wide addition 
//    to occur.  This module was tested up to a 7 MHz sin wave output in a 
//    Digilent Genesys board.  Higher frequencies tend to slip cycles.  I assume 
//    this is an inherent carry propagation delay associated with the 64-bit 
//    adder that was used. 
//
// 2) The FSMD reg and next statements are a bit convoluted.  The trick is to
//    identify that the sample is delayed two clock by the synchronous always 
//    block.  This registering of intermediate values was chosen to mitigate 
//    glitches.
//          
// 3) The SIN table coefficients are generated using a MATLAB script:
//
//          %% This MATLAB script generates a description of the 1st quadrant 
//          % of a SIN wave.
//          %
//          %  Format:
//          %
//          %        1) 1024 values
//          %        2) 15 bit hex values
//          %
//
//          fprintf('\n\n\n\n\n\n');
//
//          num_values = 1024;
//
//          for (i = 1:num_values)      
//      
//              temp = sin (  (pi/(2*num_values)) * (i - 1));
//              temp = temp * 2^15;
//              temp = floor(temp);
//              temp =  dec2hex(temp, 4);
//              i_in_hex = dec2hex(i-1, 3);
//              
//              fprintf('10''h%s: q1_data <= 16''h%s;\n', i_in_hex, temp);
//
//          end
//
// 4) To save memory space the ROM table describes only the first quadrant of 
//    the sine wave.  Hardware is used to perform a "backwards" lookup and to 
//    correct the polarity.
//
// 5) In this implementation the ROM output is always one clock behind.  It is 
//    necessary to keep the previous lookup address to the correct quadrant 
//    calculations may be made.
//
// 6) A good DDS primer may be downloaded from:
//
//     www.thinksrs.com/downloads/PDFs/ApplicationNotes/DDS.pdf
//
//** HISTORY **************************************************
//
// 06 Oct 11: Adapted module from a previously developed the 64-bit DDS
//
// 15 Oct 11: Parametrized the accumulator and PIR width
//
// 05 Apr 12: Edits to comments
//
// 08 Mar 13: Moved quadrant assignment from the FSM to an assign statement to 
//            eliminate warnings.
//
// 29 Apr 13: Moved the sine wave look-up table to this file to eliminate the 
//            need to explicitly define a ROM  
//
// 06 Jun 06: Exploring using GIT maybe these comments are not necessary...        
//
//*************************************************************
//
// FIXME: note the 08 Mar 13 modifications: need to verify and test module in FPGA
//
// TODO: replace the Matlab code with python, or scilab...
//
// TODO: add a block diagram showing the module's operation
// 

module DDS

   #( parameter acc_width = 32)
   (
    input wire clk,
	input wire reset,
    input wire [acc_width - 1:0] PIR,  
    
    output wire signed [15:0] sin_sample,
    output wire [1:0] quadrant,
    output wire [31:0] phase_acc,
           
    /* Testbench Signals */

        output wire [10:0] tb_addr   
    );
	
//** CONSTANT DECLARATIONS ************************************

//** SYMBOLIC STATE DECLARATIONS ******************************

//** SIGNAL DECLARATIONS **************************************

    reg [acc_width - 1:0] phase_acc_reg, phase_acc_next;
    
    reg [11:0] lookup_address;
    reg [15:0] sin_sample_reg, sin_sample_next;
    wire polarity;   

    wire [9:0]  addr;
    
    reg polarity_reg, polarity_next;
        
    reg [1:0] quadrant_reg, quadrant_next; 
   
    reg[15:0] q1_data;
    
//** INSTANTIATIONS *******************************************

//** ASSIGN STATEMENTS ****************************************

    /* If in Q2 or Q4 then perform a "backwards" lookup */
        assign addr = lookup_address[10] ? 
                         (10'd1023 - lookup_address[9:0]): 
                         (lookup_address[9:0]);

    /* Modules outputs */
    
        assign sin_sample = sin_sample_reg;
        assign phase_acc = phase_acc_reg;
        assign polarity = polarity_reg;
        assign quadrant = quadrant_reg;     // TODO: Need to test this placement - originally in FSM     
  
    /* Testbench Signals */

        assign tb_addr = addr;
          
//** FSM STATE & DATA REGISTERS *******************************
   
    always @(posedge clk, posedge reset) begin
        if(reset) begin
            phase_acc_reg <= 0;
        end
        else begin
            phase_acc_reg <= phase_acc_next + PIR;
   
            lookup_address <= phase_acc_next[(acc_width - 1)-:12];    // one clk delay
            sin_sample_reg <= sin_sample_next;  
            polarity_reg <= polarity_next;
        
            quadrant_reg <= quadrant_next ;         // sync quadrant with samples
          //quadrant <= quadrant_reg;               // TODO: should this be here or up above?           

     end end
     
//** FSM NEXT STATE and LOGIC *********************************
 
    always@* begin
    
        phase_acc_next = phase_acc_reg;
        
        polarity_next  = !lookup_address[11]; 
        
        quadrant_next = lookup_address[11:10];   
        
    /* If in Q3 or Q4 then negate the output (16 bit) */
    
        if (polarity) begin
            sin_sample_next = q1_data;
        end
        else begin
            sin_sample_next = -q1_data;
    end end                    
  
  
always @(posedge clk, posedge reset) begin      // Use a synchronous design for 
    if(reset) begin                             // implicit block RAM assignment
        q1_data <= 16'h0000;;
    end
    else begin
        case(addr)
    
        10'h000: q1_data <= 16'h0000;
        10'h001: q1_data <= 16'h0032;
        10'h002: q1_data <= 16'h0064;
        10'h003: q1_data <= 16'h0096;
        10'h004: q1_data <= 16'h00C9;
        10'h005: q1_data <= 16'h00FB;
        10'h006: q1_data <= 16'h012D;
        10'h007: q1_data <= 16'h015F;
        10'h008: q1_data <= 16'h0192;
        10'h009: q1_data <= 16'h01C4;
        10'h00A: q1_data <= 16'h01F6;
        10'h00B: q1_data <= 16'h0228;
        10'h00C: q1_data <= 16'h025B;
        10'h00D: q1_data <= 16'h028D;
        10'h00E: q1_data <= 16'h02BF;
        10'h00F: q1_data <= 16'h02F1;
        10'h010: q1_data <= 16'h0324;
        10'h011: q1_data <= 16'h0356;
        10'h012: q1_data <= 16'h0388;
        10'h013: q1_data <= 16'h03BA;
        10'h014: q1_data <= 16'h03ED;
        10'h015: q1_data <= 16'h041F;
        10'h016: q1_data <= 16'h0451;
        10'h017: q1_data <= 16'h0483;
        10'h018: q1_data <= 16'h04B6;
        10'h019: q1_data <= 16'h04E8;
        10'h01A: q1_data <= 16'h051A;
        10'h01B: q1_data <= 16'h054C;
        10'h01C: q1_data <= 16'h057F;
        10'h01D: q1_data <= 16'h05B1;
        10'h01E: q1_data <= 16'h05E3;
        10'h01F: q1_data <= 16'h0615;
        10'h020: q1_data <= 16'h0647;
        10'h021: q1_data <= 16'h067A;
        10'h022: q1_data <= 16'h06AC;
        10'h023: q1_data <= 16'h06DE;
        10'h024: q1_data <= 16'h0710;
        10'h025: q1_data <= 16'h0742;
        10'h026: q1_data <= 16'h0775;
        10'h027: q1_data <= 16'h07A7;
        10'h028: q1_data <= 16'h07D9;
        10'h029: q1_data <= 16'h080B;
        10'h02A: q1_data <= 16'h083D;
        10'h02B: q1_data <= 16'h086F;
        10'h02C: q1_data <= 16'h08A2;
        10'h02D: q1_data <= 16'h08D4;
        10'h02E: q1_data <= 16'h0906;
        10'h02F: q1_data <= 16'h0938;
        10'h030: q1_data <= 16'h096A;
        10'h031: q1_data <= 16'h099C;
        10'h032: q1_data <= 16'h09CE;
        10'h033: q1_data <= 16'h0A00;
        10'h034: q1_data <= 16'h0A33;
        10'h035: q1_data <= 16'h0A65;
        10'h036: q1_data <= 16'h0A97;
        10'h037: q1_data <= 16'h0AC9;
        10'h038: q1_data <= 16'h0AFB;
        10'h039: q1_data <= 16'h0B2D;
        10'h03A: q1_data <= 16'h0B5F;
        10'h03B: q1_data <= 16'h0B91;
        10'h03C: q1_data <= 16'h0BC3;
        10'h03D: q1_data <= 16'h0BF5;
        10'h03E: q1_data <= 16'h0C27;
        10'h03F: q1_data <= 16'h0C59;
        10'h040: q1_data <= 16'h0C8B;
        10'h041: q1_data <= 16'h0CBD;
        10'h042: q1_data <= 16'h0CEF;
        10'h043: q1_data <= 16'h0D21;
        10'h044: q1_data <= 16'h0D53;
        10'h045: q1_data <= 16'h0D85;
        10'h046: q1_data <= 16'h0DB7;
        10'h047: q1_data <= 16'h0DE9;
        10'h048: q1_data <= 16'h0E1B;
        10'h049: q1_data <= 16'h0E4D;
        10'h04A: q1_data <= 16'h0E7F;
        10'h04B: q1_data <= 16'h0EB1;
        10'h04C: q1_data <= 16'h0EE3;
        10'h04D: q1_data <= 16'h0F15;
        10'h04E: q1_data <= 16'h0F47;
        10'h04F: q1_data <= 16'h0F79;
        10'h050: q1_data <= 16'h0FAB;
        10'h051: q1_data <= 16'h0FDD;
        10'h052: q1_data <= 16'h100E;
        10'h053: q1_data <= 16'h1040;
        10'h054: q1_data <= 16'h1072;
        10'h055: q1_data <= 16'h10A4;
        10'h056: q1_data <= 16'h10D6;
        10'h057: q1_data <= 16'h1108;
        10'h058: q1_data <= 16'h1139;
        10'h059: q1_data <= 16'h116B;
        10'h05A: q1_data <= 16'h119D;
        10'h05B: q1_data <= 16'h11CF;
        10'h05C: q1_data <= 16'h1201;
        10'h05D: q1_data <= 16'h1232;
        10'h05E: q1_data <= 16'h1264;
        10'h05F: q1_data <= 16'h1296;
        10'h060: q1_data <= 16'h12C8;
        10'h061: q1_data <= 16'h12F9;
        10'h062: q1_data <= 16'h132B;
        10'h063: q1_data <= 16'h135D;
        10'h064: q1_data <= 16'h138E;
        10'h065: q1_data <= 16'h13C0;
        10'h066: q1_data <= 16'h13F2;
        10'h067: q1_data <= 16'h1423;
        10'h068: q1_data <= 16'h1455;
        10'h069: q1_data <= 16'h1487;
        10'h06A: q1_data <= 16'h14B8;
        10'h06B: q1_data <= 16'h14EA;
        10'h06C: q1_data <= 16'h151B;
        10'h06D: q1_data <= 16'h154D;
        10'h06E: q1_data <= 16'h157F;
        10'h06F: q1_data <= 16'h15B0;
        10'h070: q1_data <= 16'h15E2;
        10'h071: q1_data <= 16'h1613;
        10'h072: q1_data <= 16'h1645;
        10'h073: q1_data <= 16'h1676;
        10'h074: q1_data <= 16'h16A8;
        10'h075: q1_data <= 16'h16D9;
        10'h076: q1_data <= 16'h170A;
        10'h077: q1_data <= 16'h173C;
        10'h078: q1_data <= 16'h176D;
        10'h079: q1_data <= 16'h179F;
        10'h07A: q1_data <= 16'h17D0;
        10'h07B: q1_data <= 16'h1802;
        10'h07C: q1_data <= 16'h1833;
        10'h07D: q1_data <= 16'h1864;
        10'h07E: q1_data <= 16'h1896;
        10'h07F: q1_data <= 16'h18C7;
        10'h080: q1_data <= 16'h18F8;
        10'h081: q1_data <= 16'h192A;
        10'h082: q1_data <= 16'h195B;
        10'h083: q1_data <= 16'h198C;
        10'h084: q1_data <= 16'h19BD;
        10'h085: q1_data <= 16'h19EF;
        10'h086: q1_data <= 16'h1A20;
        10'h087: q1_data <= 16'h1A51;
        10'h088: q1_data <= 16'h1A82;
        10'h089: q1_data <= 16'h1AB3;
        10'h08A: q1_data <= 16'h1AE4;
        10'h08B: q1_data <= 16'h1B16;
        10'h08C: q1_data <= 16'h1B47;
        10'h08D: q1_data <= 16'h1B78;
        10'h08E: q1_data <= 16'h1BA9;
        10'h08F: q1_data <= 16'h1BDA;
        10'h090: q1_data <= 16'h1C0B;
        10'h091: q1_data <= 16'h1C3C;
        10'h092: q1_data <= 16'h1C6D;
        10'h093: q1_data <= 16'h1C9E;
        10'h094: q1_data <= 16'h1CCF;
        10'h095: q1_data <= 16'h1D00;
        10'h096: q1_data <= 16'h1D31;
        10'h097: q1_data <= 16'h1D62;
        10'h098: q1_data <= 16'h1D93;
        10'h099: q1_data <= 16'h1DC4;
        10'h09A: q1_data <= 16'h1DF5;
        10'h09B: q1_data <= 16'h1E25;
        10'h09C: q1_data <= 16'h1E56;
        10'h09D: q1_data <= 16'h1E87;
        10'h09E: q1_data <= 16'h1EB8;
        10'h09F: q1_data <= 16'h1EE9;
        10'h0A0: q1_data <= 16'h1F19;
        10'h0A1: q1_data <= 16'h1F4A;
        10'h0A2: q1_data <= 16'h1F7B;
        10'h0A3: q1_data <= 16'h1FAC;
        10'h0A4: q1_data <= 16'h1FDC;
        10'h0A5: q1_data <= 16'h200D;
        10'h0A6: q1_data <= 16'h203E;
        10'h0A7: q1_data <= 16'h206E;
        10'h0A8: q1_data <= 16'h209F;
        10'h0A9: q1_data <= 16'h20D0;
        10'h0AA: q1_data <= 16'h2100;
        10'h0AB: q1_data <= 16'h2131;
        10'h0AC: q1_data <= 16'h2161;
        10'h0AD: q1_data <= 16'h2192;
        10'h0AE: q1_data <= 16'h21C2;
        10'h0AF: q1_data <= 16'h21F3;
        10'h0B0: q1_data <= 16'h2223;
        10'h0B1: q1_data <= 16'h2254;
        10'h0B2: q1_data <= 16'h2284;
        10'h0B3: q1_data <= 16'h22B4;
        10'h0B4: q1_data <= 16'h22E5;
        10'h0B5: q1_data <= 16'h2315;
        10'h0B6: q1_data <= 16'h2345;
        10'h0B7: q1_data <= 16'h2376;
        10'h0B8: q1_data <= 16'h23A6;
        10'h0B9: q1_data <= 16'h23D6;
        10'h0BA: q1_data <= 16'h2407;
        10'h0BB: q1_data <= 16'h2437;
        10'h0BC: q1_data <= 16'h2467;
        10'h0BD: q1_data <= 16'h2497;
        10'h0BE: q1_data <= 16'h24C7;
        10'h0BF: q1_data <= 16'h24F7;
        10'h0C0: q1_data <= 16'h2528;
        10'h0C1: q1_data <= 16'h2558;
        10'h0C2: q1_data <= 16'h2588;
        10'h0C3: q1_data <= 16'h25B8;
        10'h0C4: q1_data <= 16'h25E8;
        10'h0C5: q1_data <= 16'h2618;
        10'h0C6: q1_data <= 16'h2648;
        10'h0C7: q1_data <= 16'h2678;
        10'h0C8: q1_data <= 16'h26A8;
        10'h0C9: q1_data <= 16'h26D8;
        10'h0CA: q1_data <= 16'h2707;
        10'h0CB: q1_data <= 16'h2737;
        10'h0CC: q1_data <= 16'h2767;
        10'h0CD: q1_data <= 16'h2797;
        10'h0CE: q1_data <= 16'h27C7;
        10'h0CF: q1_data <= 16'h27F6;
        10'h0D0: q1_data <= 16'h2826;
        10'h0D1: q1_data <= 16'h2856;
        10'h0D2: q1_data <= 16'h2886;
        10'h0D3: q1_data <= 16'h28B5;
        10'h0D4: q1_data <= 16'h28E5;
        10'h0D5: q1_data <= 16'h2915;
        10'h0D6: q1_data <= 16'h2944;
        10'h0D7: q1_data <= 16'h2974;
        10'h0D8: q1_data <= 16'h29A3;
        10'h0D9: q1_data <= 16'h29D3;
        10'h0DA: q1_data <= 16'h2A02;
        10'h0DB: q1_data <= 16'h2A32;
        10'h0DC: q1_data <= 16'h2A61;
        10'h0DD: q1_data <= 16'h2A91;
        10'h0DE: q1_data <= 16'h2AC0;
        10'h0DF: q1_data <= 16'h2AEF;
        10'h0E0: q1_data <= 16'h2B1F;
        10'h0E1: q1_data <= 16'h2B4E;
        10'h0E2: q1_data <= 16'h2B7D;
        10'h0E3: q1_data <= 16'h2BAD;
        10'h0E4: q1_data <= 16'h2BDC;
        10'h0E5: q1_data <= 16'h2C0B;
        10'h0E6: q1_data <= 16'h2C3A;
        10'h0E7: q1_data <= 16'h2C69;
        10'h0E8: q1_data <= 16'h2C98;
        10'h0E9: q1_data <= 16'h2CC8;
        10'h0EA: q1_data <= 16'h2CF7;
        10'h0EB: q1_data <= 16'h2D26;
        10'h0EC: q1_data <= 16'h2D55;
        10'h0ED: q1_data <= 16'h2D84;
        10'h0EE: q1_data <= 16'h2DB3;
        10'h0EF: q1_data <= 16'h2DE2;
        10'h0F0: q1_data <= 16'h2E11;
        10'h0F1: q1_data <= 16'h2E3F;
        10'h0F2: q1_data <= 16'h2E6E;
        10'h0F3: q1_data <= 16'h2E9D;
        10'h0F4: q1_data <= 16'h2ECC;
        10'h0F5: q1_data <= 16'h2EFB;
        10'h0F6: q1_data <= 16'h2F29;
        10'h0F7: q1_data <= 16'h2F58;
        10'h0F8: q1_data <= 16'h2F87;
        10'h0F9: q1_data <= 16'h2FB5;
        10'h0FA: q1_data <= 16'h2FE4;
        10'h0FB: q1_data <= 16'h3013;
        10'h0FC: q1_data <= 16'h3041;
        10'h0FD: q1_data <= 16'h3070;
        10'h0FE: q1_data <= 16'h309E;
        10'h0FF: q1_data <= 16'h30CD;
        10'h100: q1_data <= 16'h30FB;
        10'h101: q1_data <= 16'h312A;
        10'h102: q1_data <= 16'h3158;
        10'h103: q1_data <= 16'h3186;
        10'h104: q1_data <= 16'h31B5;
        10'h105: q1_data <= 16'h31E3;
        10'h106: q1_data <= 16'h3211;
        10'h107: q1_data <= 16'h3240;
        10'h108: q1_data <= 16'h326E;
        10'h109: q1_data <= 16'h329C;
        10'h10A: q1_data <= 16'h32CA;
        10'h10B: q1_data <= 16'h32F8;
        10'h10C: q1_data <= 16'h3326;
        10'h10D: q1_data <= 16'h3354;
        10'h10E: q1_data <= 16'h3382;
        10'h10F: q1_data <= 16'h33B0;
        10'h110: q1_data <= 16'h33DE;
        10'h111: q1_data <= 16'h340C;
        10'h112: q1_data <= 16'h343A;
        10'h113: q1_data <= 16'h3468;
        10'h114: q1_data <= 16'h3496;
        10'h115: q1_data <= 16'h34C4;
        10'h116: q1_data <= 16'h34F2;
        10'h117: q1_data <= 16'h351F;
        10'h118: q1_data <= 16'h354D;
        10'h119: q1_data <= 16'h357B;
        10'h11A: q1_data <= 16'h35A8;
        10'h11B: q1_data <= 16'h35D6;
        10'h11C: q1_data <= 16'h3604;
        10'h11D: q1_data <= 16'h3631;
        10'h11E: q1_data <= 16'h365F;
        10'h11F: q1_data <= 16'h368C;
        10'h120: q1_data <= 16'h36BA;
        10'h121: q1_data <= 16'h36E7;
        10'h122: q1_data <= 16'h3714;
        10'h123: q1_data <= 16'h3742;
        10'h124: q1_data <= 16'h376F;
        10'h125: q1_data <= 16'h379C;
        10'h126: q1_data <= 16'h37CA;
        10'h127: q1_data <= 16'h37F7;
        10'h128: q1_data <= 16'h3824;
        10'h129: q1_data <= 16'h3851;
        10'h12A: q1_data <= 16'h387E;
        10'h12B: q1_data <= 16'h38AB;
        10'h12C: q1_data <= 16'h38D8;
        10'h12D: q1_data <= 16'h3906;
        10'h12E: q1_data <= 16'h3932;
        10'h12F: q1_data <= 16'h395F;
        10'h130: q1_data <= 16'h398C;
        10'h131: q1_data <= 16'h39B9;
        10'h132: q1_data <= 16'h39E6;
        10'h133: q1_data <= 16'h3A13;
        10'h134: q1_data <= 16'h3A40;
        10'h135: q1_data <= 16'h3A6C;
        10'h136: q1_data <= 16'h3A99;
        10'h137: q1_data <= 16'h3AC6;
        10'h138: q1_data <= 16'h3AF2;
        10'h139: q1_data <= 16'h3B1F;
        10'h13A: q1_data <= 16'h3B4C;
        10'h13B: q1_data <= 16'h3B78;
        10'h13C: q1_data <= 16'h3BA5;
        10'h13D: q1_data <= 16'h3BD1;
        10'h13E: q1_data <= 16'h3BFD;
        10'h13F: q1_data <= 16'h3C2A;
        10'h140: q1_data <= 16'h3C56;
        10'h141: q1_data <= 16'h3C83;
        10'h142: q1_data <= 16'h3CAF;
        10'h143: q1_data <= 16'h3CDB;
        10'h144: q1_data <= 16'h3D07;
        10'h145: q1_data <= 16'h3D33;
        10'h146: q1_data <= 16'h3D60;
        10'h147: q1_data <= 16'h3D8C;
        10'h148: q1_data <= 16'h3DB8;
        10'h149: q1_data <= 16'h3DE4;
        10'h14A: q1_data <= 16'h3E10;
        10'h14B: q1_data <= 16'h3E3C;
        10'h14C: q1_data <= 16'h3E68;
        10'h14D: q1_data <= 16'h3E93;
        10'h14E: q1_data <= 16'h3EBF;
        10'h14F: q1_data <= 16'h3EEB;
        10'h150: q1_data <= 16'h3F17;
        10'h151: q1_data <= 16'h3F43;
        10'h152: q1_data <= 16'h3F6E;
        10'h153: q1_data <= 16'h3F9A;
        10'h154: q1_data <= 16'h3FC5;
        10'h155: q1_data <= 16'h3FF1;
        10'h156: q1_data <= 16'h401D;
        10'h157: q1_data <= 16'h4048;
        10'h158: q1_data <= 16'h4073;
        10'h159: q1_data <= 16'h409F;
        10'h15A: q1_data <= 16'h40CA;
        10'h15B: q1_data <= 16'h40F6;
        10'h15C: q1_data <= 16'h4121;
        10'h15D: q1_data <= 16'h414C;
        10'h15E: q1_data <= 16'h4177;
        10'h15F: q1_data <= 16'h41A2;
        10'h160: q1_data <= 16'h41CE;
        10'h161: q1_data <= 16'h41F9;
        10'h162: q1_data <= 16'h4224;
        10'h163: q1_data <= 16'h424F;
        10'h164: q1_data <= 16'h427A;
        10'h165: q1_data <= 16'h42A5;
        10'h166: q1_data <= 16'h42D0;
        10'h167: q1_data <= 16'h42FA;
        10'h168: q1_data <= 16'h4325;
        10'h169: q1_data <= 16'h4350;
        10'h16A: q1_data <= 16'h437B;
        10'h16B: q1_data <= 16'h43A5;
        10'h16C: q1_data <= 16'h43D0;
        10'h16D: q1_data <= 16'h43FB;
        10'h16E: q1_data <= 16'h4425;
        10'h16F: q1_data <= 16'h4450;
        10'h170: q1_data <= 16'h447A;
        10'h171: q1_data <= 16'h44A5;
        10'h172: q1_data <= 16'h44CF;
        10'h173: q1_data <= 16'h44FA;
        10'h174: q1_data <= 16'h4524;
        10'h175: q1_data <= 16'h454E;
        10'h176: q1_data <= 16'h4578;
        10'h177: q1_data <= 16'h45A3;
        10'h178: q1_data <= 16'h45CD;
        10'h179: q1_data <= 16'h45F7;
        10'h17A: q1_data <= 16'h4621;
        10'h17B: q1_data <= 16'h464B;
        10'h17C: q1_data <= 16'h4675;
        10'h17D: q1_data <= 16'h469F;
        10'h17E: q1_data <= 16'h46C9;
        10'h17F: q1_data <= 16'h46F3;
        10'h180: q1_data <= 16'h471C;
        10'h181: q1_data <= 16'h4746;
        10'h182: q1_data <= 16'h4770;
        10'h183: q1_data <= 16'h479A;
        10'h184: q1_data <= 16'h47C3;
        10'h185: q1_data <= 16'h47ED;
        10'h186: q1_data <= 16'h4816;
        10'h187: q1_data <= 16'h4840;
        10'h188: q1_data <= 16'h4869;
        10'h189: q1_data <= 16'h4893;
        10'h18A: q1_data <= 16'h48BC;
        10'h18B: q1_data <= 16'h48E6;
        10'h18C: q1_data <= 16'h490F;
        10'h18D: q1_data <= 16'h4938;
        10'h18E: q1_data <= 16'h4961;
        10'h18F: q1_data <= 16'h498A;
        10'h190: q1_data <= 16'h49B4;
        10'h191: q1_data <= 16'h49DD;
        10'h192: q1_data <= 16'h4A06;
        10'h193: q1_data <= 16'h4A2F;
        10'h194: q1_data <= 16'h4A58;
        10'h195: q1_data <= 16'h4A81;
        10'h196: q1_data <= 16'h4AA9;
        10'h197: q1_data <= 16'h4AD2;
        10'h198: q1_data <= 16'h4AFB;
        10'h199: q1_data <= 16'h4B24;
        10'h19A: q1_data <= 16'h4B4C;
        10'h19B: q1_data <= 16'h4B75;
        10'h19C: q1_data <= 16'h4B9E;
        10'h19D: q1_data <= 16'h4BC6;
        10'h19E: q1_data <= 16'h4BEF;
        10'h19F: q1_data <= 16'h4C17;
        10'h1A0: q1_data <= 16'h4C3F;
        10'h1A1: q1_data <= 16'h4C68;
        10'h1A2: q1_data <= 16'h4C90;
        10'h1A3: q1_data <= 16'h4CB8;
        10'h1A4: q1_data <= 16'h4CE1;
        10'h1A5: q1_data <= 16'h4D09;
        10'h1A6: q1_data <= 16'h4D31;
        10'h1A7: q1_data <= 16'h4D59;
        10'h1A8: q1_data <= 16'h4D81;
        10'h1A9: q1_data <= 16'h4DA9;
        10'h1AA: q1_data <= 16'h4DD1;
        10'h1AB: q1_data <= 16'h4DF9;
        10'h1AC: q1_data <= 16'h4E21;
        10'h1AD: q1_data <= 16'h4E48;
        10'h1AE: q1_data <= 16'h4E70;
        10'h1AF: q1_data <= 16'h4E98;
        10'h1B0: q1_data <= 16'h4EBF;
        10'h1B1: q1_data <= 16'h4EE7;
        10'h1B2: q1_data <= 16'h4F0F;
        10'h1B3: q1_data <= 16'h4F36;
        10'h1B4: q1_data <= 16'h4F5E;
        10'h1B5: q1_data <= 16'h4F85;
        10'h1B6: q1_data <= 16'h4FAC;
        10'h1B7: q1_data <= 16'h4FD4;
        10'h1B8: q1_data <= 16'h4FFB;
        10'h1B9: q1_data <= 16'h5022;
        10'h1BA: q1_data <= 16'h5049;
        10'h1BB: q1_data <= 16'h5070;
        10'h1BC: q1_data <= 16'h5097;
        10'h1BD: q1_data <= 16'h50BF;
        10'h1BE: q1_data <= 16'h50E5;
        10'h1BF: q1_data <= 16'h510C;
        10'h1C0: q1_data <= 16'h5133;
        10'h1C1: q1_data <= 16'h515A;
        10'h1C2: q1_data <= 16'h5181;
        10'h1C3: q1_data <= 16'h51A8;
        10'h1C4: q1_data <= 16'h51CE;
        10'h1C5: q1_data <= 16'h51F5;
        10'h1C6: q1_data <= 16'h521C;
        10'h1C7: q1_data <= 16'h5242;
        10'h1C8: q1_data <= 16'h5269;
        10'h1C9: q1_data <= 16'h528F;
        10'h1CA: q1_data <= 16'h52B5;
        10'h1CB: q1_data <= 16'h52DC;
        10'h1CC: q1_data <= 16'h5302;
        10'h1CD: q1_data <= 16'h5328;
        10'h1CE: q1_data <= 16'h534E;
        10'h1CF: q1_data <= 16'h5375;
        10'h1D0: q1_data <= 16'h539B;
        10'h1D1: q1_data <= 16'h53C1;
        10'h1D2: q1_data <= 16'h53E7;
        10'h1D3: q1_data <= 16'h540D;
        10'h1D4: q1_data <= 16'h5433;
        10'h1D5: q1_data <= 16'h5458;
        10'h1D6: q1_data <= 16'h547E;
        10'h1D7: q1_data <= 16'h54A4;
        10'h1D8: q1_data <= 16'h54CA;
        10'h1D9: q1_data <= 16'h54EF;
        10'h1DA: q1_data <= 16'h5515;
        10'h1DB: q1_data <= 16'h553A;
        10'h1DC: q1_data <= 16'h5560;
        10'h1DD: q1_data <= 16'h5585;
        10'h1DE: q1_data <= 16'h55AB;
        10'h1DF: q1_data <= 16'h55D0;
        10'h1E0: q1_data <= 16'h55F5;
        10'h1E1: q1_data <= 16'h561A;
        10'h1E2: q1_data <= 16'h5640;
        10'h1E3: q1_data <= 16'h5665;
        10'h1E4: q1_data <= 16'h568A;
        10'h1E5: q1_data <= 16'h56AF;
        10'h1E6: q1_data <= 16'h56D4;
        10'h1E7: q1_data <= 16'h56F9;
        10'h1E8: q1_data <= 16'h571D;
        10'h1E9: q1_data <= 16'h5742;
        10'h1EA: q1_data <= 16'h5767;
        10'h1EB: q1_data <= 16'h578C;
        10'h1EC: q1_data <= 16'h57B0;
        10'h1ED: q1_data <= 16'h57D5;
        10'h1EE: q1_data <= 16'h57F9;
        10'h1EF: q1_data <= 16'h581E;
        10'h1F0: q1_data <= 16'h5842;
        10'h1F1: q1_data <= 16'h5867;
        10'h1F2: q1_data <= 16'h588B;
        10'h1F3: q1_data <= 16'h58AF;
        10'h1F4: q1_data <= 16'h58D4;
        10'h1F5: q1_data <= 16'h58F8;
        10'h1F6: q1_data <= 16'h591C;
        10'h1F7: q1_data <= 16'h5940;
        10'h1F8: q1_data <= 16'h5964;
        10'h1F9: q1_data <= 16'h5988;
        10'h1FA: q1_data <= 16'h59AC;
        10'h1FB: q1_data <= 16'h59D0;
        10'h1FC: q1_data <= 16'h59F3;
        10'h1FD: q1_data <= 16'h5A17;
        10'h1FE: q1_data <= 16'h5A3B;
        10'h1FF: q1_data <= 16'h5A5E;
        10'h200: q1_data <= 16'h5A82;
        10'h201: q1_data <= 16'h5AA5;
        10'h202: q1_data <= 16'h5AC9;
        10'h203: q1_data <= 16'h5AEC;
        10'h204: q1_data <= 16'h5B10;
        10'h205: q1_data <= 16'h5B33;
        10'h206: q1_data <= 16'h5B56;
        10'h207: q1_data <= 16'h5B79;
        10'h208: q1_data <= 16'h5B9D;
        10'h209: q1_data <= 16'h5BC0;
        10'h20A: q1_data <= 16'h5BE3;
        10'h20B: q1_data <= 16'h5C06;
        10'h20C: q1_data <= 16'h5C29;
        10'h20D: q1_data <= 16'h5C4B;
        10'h20E: q1_data <= 16'h5C6E;
        10'h20F: q1_data <= 16'h5C91;
        10'h210: q1_data <= 16'h5CB4;
        10'h211: q1_data <= 16'h5CD6;
        10'h212: q1_data <= 16'h5CF9;
        10'h213: q1_data <= 16'h5D1B;
        10'h214: q1_data <= 16'h5D3E;
        10'h215: q1_data <= 16'h5D60;
        10'h216: q1_data <= 16'h5D83;
        10'h217: q1_data <= 16'h5DA5;
        10'h218: q1_data <= 16'h5DC7;
        10'h219: q1_data <= 16'h5DE9;
        10'h21A: q1_data <= 16'h5E0B;
        10'h21B: q1_data <= 16'h5E2D;
        10'h21C: q1_data <= 16'h5E50;
        10'h21D: q1_data <= 16'h5E71;
        10'h21E: q1_data <= 16'h5E93;
        10'h21F: q1_data <= 16'h5EB5;
        10'h220: q1_data <= 16'h5ED7;
        10'h221: q1_data <= 16'h5EF9;
        10'h222: q1_data <= 16'h5F1A;
        10'h223: q1_data <= 16'h5F3C;
        10'h224: q1_data <= 16'h5F5E;
        10'h225: q1_data <= 16'h5F7F;
        10'h226: q1_data <= 16'h5FA0;
        10'h227: q1_data <= 16'h5FC2;
        10'h228: q1_data <= 16'h5FE3;
        10'h229: q1_data <= 16'h6004;
        10'h22A: q1_data <= 16'h6026;
        10'h22B: q1_data <= 16'h6047;
        10'h22C: q1_data <= 16'h6068;
        10'h22D: q1_data <= 16'h6089;
        10'h22E: q1_data <= 16'h60AA;
        10'h22F: q1_data <= 16'h60CB;
        10'h230: q1_data <= 16'h60EC;
        10'h231: q1_data <= 16'h610D;
        10'h232: q1_data <= 16'h612D;
        10'h233: q1_data <= 16'h614E;
        10'h234: q1_data <= 16'h616F;
        10'h235: q1_data <= 16'h618F;
        10'h236: q1_data <= 16'h61B0;
        10'h237: q1_data <= 16'h61D0;
        10'h238: q1_data <= 16'h61F1;
        10'h239: q1_data <= 16'h6211;
        10'h23A: q1_data <= 16'h6231;
        10'h23B: q1_data <= 16'h6251;
        10'h23C: q1_data <= 16'h6271;
        10'h23D: q1_data <= 16'h6292;
        10'h23E: q1_data <= 16'h62B2;
        10'h23F: q1_data <= 16'h62D2;
        10'h240: q1_data <= 16'h62F2;
        10'h241: q1_data <= 16'h6311;
        10'h242: q1_data <= 16'h6331;
        10'h243: q1_data <= 16'h6351;
        10'h244: q1_data <= 16'h6371;
        10'h245: q1_data <= 16'h6390;
        10'h246: q1_data <= 16'h63B0;
        10'h247: q1_data <= 16'h63CF;
        10'h248: q1_data <= 16'h63EF;
        10'h249: q1_data <= 16'h640E;
        10'h24A: q1_data <= 16'h642D;
        10'h24B: q1_data <= 16'h644D;
        10'h24C: q1_data <= 16'h646C;
        10'h24D: q1_data <= 16'h648B;
        10'h24E: q1_data <= 16'h64AA;
        10'h24F: q1_data <= 16'h64C9;
        10'h250: q1_data <= 16'h64E8;
        10'h251: q1_data <= 16'h6507;
        10'h252: q1_data <= 16'h6526;
        10'h253: q1_data <= 16'h6545;
        10'h254: q1_data <= 16'h6563;
        10'h255: q1_data <= 16'h6582;
        10'h256: q1_data <= 16'h65A0;
        10'h257: q1_data <= 16'h65BF;
        10'h258: q1_data <= 16'h65DD;
        10'h259: q1_data <= 16'h65FC;
        10'h25A: q1_data <= 16'h661A;
        10'h25B: q1_data <= 16'h6639;
        10'h25C: q1_data <= 16'h6657;
        10'h25D: q1_data <= 16'h6675;
        10'h25E: q1_data <= 16'h6693;
        10'h25F: q1_data <= 16'h66B1;
        10'h260: q1_data <= 16'h66CF;
        10'h261: q1_data <= 16'h66ED;
        10'h262: q1_data <= 16'h670B;
        10'h263: q1_data <= 16'h6729;
        10'h264: q1_data <= 16'h6746;
        10'h265: q1_data <= 16'h6764;
        10'h266: q1_data <= 16'h6782;
        10'h267: q1_data <= 16'h679F;
        10'h268: q1_data <= 16'h67BD;
        10'h269: q1_data <= 16'h67DA;
        10'h26A: q1_data <= 16'h67F7;
        10'h26B: q1_data <= 16'h6815;
        10'h26C: q1_data <= 16'h6832;
        10'h26D: q1_data <= 16'h684F;
        10'h26E: q1_data <= 16'h686C;
        10'h26F: q1_data <= 16'h6889;
        10'h270: q1_data <= 16'h68A6;
        10'h271: q1_data <= 16'h68C3;
        10'h272: q1_data <= 16'h68E0;
        10'h273: q1_data <= 16'h68FD;
        10'h274: q1_data <= 16'h6919;
        10'h275: q1_data <= 16'h6936;
        10'h276: q1_data <= 16'h6953;
        10'h277: q1_data <= 16'h696F;
        10'h278: q1_data <= 16'h698C;
        10'h279: q1_data <= 16'h69A8;
        10'h27A: q1_data <= 16'h69C4;
        10'h27B: q1_data <= 16'h69E1;
        10'h27C: q1_data <= 16'h69FD;
        10'h27D: q1_data <= 16'h6A19;
        10'h27E: q1_data <= 16'h6A35;
        10'h27F: q1_data <= 16'h6A51;
        10'h280: q1_data <= 16'h6A6D;
        10'h281: q1_data <= 16'h6A89;
        10'h282: q1_data <= 16'h6AA5;
        10'h283: q1_data <= 16'h6AC1;
        10'h284: q1_data <= 16'h6ADC;
        10'h285: q1_data <= 16'h6AF8;
        10'h286: q1_data <= 16'h6B13;
        10'h287: q1_data <= 16'h6B2F;
        10'h288: q1_data <= 16'h6B4A;
        10'h289: q1_data <= 16'h6B66;
        10'h28A: q1_data <= 16'h6B81;
        10'h28B: q1_data <= 16'h6B9C;
        10'h28C: q1_data <= 16'h6BB8;
        10'h28D: q1_data <= 16'h6BD3;
        10'h28E: q1_data <= 16'h6BEE;
        10'h28F: q1_data <= 16'h6C09;
        10'h290: q1_data <= 16'h6C24;
        10'h291: q1_data <= 16'h6C3F;
        10'h292: q1_data <= 16'h6C59;
        10'h293: q1_data <= 16'h6C74;
        10'h294: q1_data <= 16'h6C8F;
        10'h295: q1_data <= 16'h6CA9;
        10'h296: q1_data <= 16'h6CC4;
        10'h297: q1_data <= 16'h6CDE;
        10'h298: q1_data <= 16'h6CF9;
        10'h299: q1_data <= 16'h6D13;
        10'h29A: q1_data <= 16'h6D2D;
        10'h29B: q1_data <= 16'h6D48;
        10'h29C: q1_data <= 16'h6D62;
        10'h29D: q1_data <= 16'h6D7C;
        10'h29E: q1_data <= 16'h6D96;
        10'h29F: q1_data <= 16'h6DB0;
        10'h2A0: q1_data <= 16'h6DCA;
        10'h2A1: q1_data <= 16'h6DE3;
        10'h2A2: q1_data <= 16'h6DFD;
        10'h2A3: q1_data <= 16'h6E17;
        10'h2A4: q1_data <= 16'h6E30;
        10'h2A5: q1_data <= 16'h6E4A;
        10'h2A6: q1_data <= 16'h6E63;
        10'h2A7: q1_data <= 16'h6E7D;
        10'h2A8: q1_data <= 16'h6E96;
        10'h2A9: q1_data <= 16'h6EAF;
        10'h2AA: q1_data <= 16'h6EC9;
        10'h2AB: q1_data <= 16'h6EE2;
        10'h2AC: q1_data <= 16'h6EFB;
        10'h2AD: q1_data <= 16'h6F14;
        10'h2AE: q1_data <= 16'h6F2D;
        10'h2AF: q1_data <= 16'h6F46;
        10'h2B0: q1_data <= 16'h6F5F;
        10'h2B1: q1_data <= 16'h6F77;
        10'h2B2: q1_data <= 16'h6F90;
        10'h2B3: q1_data <= 16'h6FA9;
        10'h2B4: q1_data <= 16'h6FC1;
        10'h2B5: q1_data <= 16'h6FDA;
        10'h2B6: q1_data <= 16'h6FF2;
        10'h2B7: q1_data <= 16'h700A;
        10'h2B8: q1_data <= 16'h7023;
        10'h2B9: q1_data <= 16'h703B;
        10'h2BA: q1_data <= 16'h7053;
        10'h2BB: q1_data <= 16'h706B;
        10'h2BC: q1_data <= 16'h7083;
        10'h2BD: q1_data <= 16'h709B;
        10'h2BE: q1_data <= 16'h70B3;
        10'h2BF: q1_data <= 16'h70CB;
        10'h2C0: q1_data <= 16'h70E2;
        10'h2C1: q1_data <= 16'h70FA;
        10'h2C2: q1_data <= 16'h7112;
        10'h2C3: q1_data <= 16'h7129;
        10'h2C4: q1_data <= 16'h7141;
        10'h2C5: q1_data <= 16'h7158;
        10'h2C6: q1_data <= 16'h716F;
        10'h2C7: q1_data <= 16'h7186;
        10'h2C8: q1_data <= 16'h719E;
        10'h2C9: q1_data <= 16'h71B5;
        10'h2CA: q1_data <= 16'h71CC;
        10'h2CB: q1_data <= 16'h71E3;
        10'h2CC: q1_data <= 16'h71FA;
        10'h2CD: q1_data <= 16'h7211;
        10'h2CE: q1_data <= 16'h7227;
        10'h2CF: q1_data <= 16'h723E;
        10'h2D0: q1_data <= 16'h7255;
        10'h2D1: q1_data <= 16'h726B;
        10'h2D2: q1_data <= 16'h7282;
        10'h2D3: q1_data <= 16'h7298;
        10'h2D4: q1_data <= 16'h72AF;
        10'h2D5: q1_data <= 16'h72C5;
        10'h2D6: q1_data <= 16'h72DB;
        10'h2D7: q1_data <= 16'h72F1;
        10'h2D8: q1_data <= 16'h7307;
        10'h2D9: q1_data <= 16'h731D;
        10'h2DA: q1_data <= 16'h7333;
        10'h2DB: q1_data <= 16'h7349;
        10'h2DC: q1_data <= 16'h735F;
        10'h2DD: q1_data <= 16'h7375;
        10'h2DE: q1_data <= 16'h738A;
        10'h2DF: q1_data <= 16'h73A0;
        10'h2E0: q1_data <= 16'h73B5;
        10'h2E1: q1_data <= 16'h73CB;
        10'h2E2: q1_data <= 16'h73E0;
        10'h2E3: q1_data <= 16'h73F6;
        10'h2E4: q1_data <= 16'h740B;
        10'h2E5: q1_data <= 16'h7420;
        10'h2E6: q1_data <= 16'h7435;
        10'h2E7: q1_data <= 16'h744A;
        10'h2E8: q1_data <= 16'h745F;
        10'h2E9: q1_data <= 16'h7474;
        10'h2EA: q1_data <= 16'h7489;
        10'h2EB: q1_data <= 16'h749E;
        10'h2EC: q1_data <= 16'h74B2;
        10'h2ED: q1_data <= 16'h74C7;
        10'h2EE: q1_data <= 16'h74DB;
        10'h2EF: q1_data <= 16'h74F0;
        10'h2F0: q1_data <= 16'h7504;
        10'h2F1: q1_data <= 16'h7519;
        10'h2F2: q1_data <= 16'h752D;
        10'h2F3: q1_data <= 16'h7541;
        10'h2F4: q1_data <= 16'h7555;
        10'h2F5: q1_data <= 16'h7569;
        10'h2F6: q1_data <= 16'h757D;
        10'h2F7: q1_data <= 16'h7591;
        10'h2F8: q1_data <= 16'h75A5;
        10'h2F9: q1_data <= 16'h75B9;
        10'h2FA: q1_data <= 16'h75CC;
        10'h2FB: q1_data <= 16'h75E0;
        10'h2FC: q1_data <= 16'h75F4;
        10'h2FD: q1_data <= 16'h7607;
        10'h2FE: q1_data <= 16'h761B;
        10'h2FF: q1_data <= 16'h762E;
        10'h300: q1_data <= 16'h7641;
        10'h301: q1_data <= 16'h7654;
        10'h302: q1_data <= 16'h7668;
        10'h303: q1_data <= 16'h767B;
        10'h304: q1_data <= 16'h768E;
        10'h305: q1_data <= 16'h76A0;
        10'h306: q1_data <= 16'h76B3;
        10'h307: q1_data <= 16'h76C6;
        10'h308: q1_data <= 16'h76D9;
        10'h309: q1_data <= 16'h76EB;
        10'h30A: q1_data <= 16'h76FE;
        10'h30B: q1_data <= 16'h7710;
        10'h30C: q1_data <= 16'h7723;
        10'h30D: q1_data <= 16'h7735;
        10'h30E: q1_data <= 16'h7747;
        10'h30F: q1_data <= 16'h775A;
        10'h310: q1_data <= 16'h776C;
        10'h311: q1_data <= 16'h777E;
        10'h312: q1_data <= 16'h7790;
        10'h313: q1_data <= 16'h77A2;
        10'h314: q1_data <= 16'h77B4;
        10'h315: q1_data <= 16'h77C5;
        10'h316: q1_data <= 16'h77D7;
        10'h317: q1_data <= 16'h77E9;
        10'h318: q1_data <= 16'h77FA;
        10'h319: q1_data <= 16'h780C;
        10'h31A: q1_data <= 16'h781D;
        10'h31B: q1_data <= 16'h782E;
        10'h31C: q1_data <= 16'h7840;
        10'h31D: q1_data <= 16'h7851;
        10'h31E: q1_data <= 16'h7862;
        10'h31F: q1_data <= 16'h7873;
        10'h320: q1_data <= 16'h7884;
        10'h321: q1_data <= 16'h7895;
        10'h322: q1_data <= 16'h78A6;
        10'h323: q1_data <= 16'h78B6;
        10'h324: q1_data <= 16'h78C7;
        10'h325: q1_data <= 16'h78D8;
        10'h326: q1_data <= 16'h78E8;
        10'h327: q1_data <= 16'h78F9;
        10'h328: q1_data <= 16'h7909;
        10'h329: q1_data <= 16'h7919;
        10'h32A: q1_data <= 16'h792A;
        10'h32B: q1_data <= 16'h793A;
        10'h32C: q1_data <= 16'h794A;
        10'h32D: q1_data <= 16'h795A;
        10'h32E: q1_data <= 16'h796A;
        10'h32F: q1_data <= 16'h797A;
        10'h330: q1_data <= 16'h798A;
        10'h331: q1_data <= 16'h7999;
        10'h332: q1_data <= 16'h79A9;
        10'h333: q1_data <= 16'h79B9;
        10'h334: q1_data <= 16'h79C8;
        10'h335: q1_data <= 16'h79D8;
        10'h336: q1_data <= 16'h79E7;
        10'h337: q1_data <= 16'h79F6;
        10'h338: q1_data <= 16'h7A05;
        10'h339: q1_data <= 16'h7A15;
        10'h33A: q1_data <= 16'h7A24;
        10'h33B: q1_data <= 16'h7A33;
        10'h33C: q1_data <= 16'h7A42;
        10'h33D: q1_data <= 16'h7A50;
        10'h33E: q1_data <= 16'h7A5F;
        10'h33F: q1_data <= 16'h7A6E;
        10'h340: q1_data <= 16'h7A7D;
        10'h341: q1_data <= 16'h7A8B;
        10'h342: q1_data <= 16'h7A9A;
        10'h343: q1_data <= 16'h7AA8;
        10'h344: q1_data <= 16'h7AB6;
        10'h345: q1_data <= 16'h7AC5;
        10'h346: q1_data <= 16'h7AD3;
        10'h347: q1_data <= 16'h7AE1;
        10'h348: q1_data <= 16'h7AEF;
        10'h349: q1_data <= 16'h7AFD;
        10'h34A: q1_data <= 16'h7B0B;
        10'h34B: q1_data <= 16'h7B19;
        10'h34C: q1_data <= 16'h7B26;
        10'h34D: q1_data <= 16'h7B34;
        10'h34E: q1_data <= 16'h7B42;
        10'h34F: q1_data <= 16'h7B4F;
        10'h350: q1_data <= 16'h7B5D;
        10'h351: q1_data <= 16'h7B6A;
        10'h352: q1_data <= 16'h7B77;
        10'h353: q1_data <= 16'h7B84;
        10'h354: q1_data <= 16'h7B92;
        10'h355: q1_data <= 16'h7B9F;
        10'h356: q1_data <= 16'h7BAC;
        10'h357: q1_data <= 16'h7BB9;
        10'h358: q1_data <= 16'h7BC5;
        10'h359: q1_data <= 16'h7BD2;
        10'h35A: q1_data <= 16'h7BDF;
        10'h35B: q1_data <= 16'h7BEB;
        10'h35C: q1_data <= 16'h7BF8;
        10'h35D: q1_data <= 16'h7C05;
        10'h35E: q1_data <= 16'h7C11;
        10'h35F: q1_data <= 16'h7C1D;
        10'h360: q1_data <= 16'h7C29;
        10'h361: q1_data <= 16'h7C36;
        10'h362: q1_data <= 16'h7C42;
        10'h363: q1_data <= 16'h7C4E;
        10'h364: q1_data <= 16'h7C5A;
        10'h365: q1_data <= 16'h7C66;
        10'h366: q1_data <= 16'h7C71;
        10'h367: q1_data <= 16'h7C7D;
        10'h368: q1_data <= 16'h7C89;
        10'h369: q1_data <= 16'h7C94;
        10'h36A: q1_data <= 16'h7CA0;
        10'h36B: q1_data <= 16'h7CAB;
        10'h36C: q1_data <= 16'h7CB7;
        10'h36D: q1_data <= 16'h7CC2;
        10'h36E: q1_data <= 16'h7CCD;
        10'h36F: q1_data <= 16'h7CD8;
        10'h370: q1_data <= 16'h7CE3;
        10'h371: q1_data <= 16'h7CEE;
        10'h372: q1_data <= 16'h7CF9;
        10'h373: q1_data <= 16'h7D04;
        10'h374: q1_data <= 16'h7D0F;
        10'h375: q1_data <= 16'h7D19;
        10'h376: q1_data <= 16'h7D24;
        10'h377: q1_data <= 16'h7D2F;
        10'h378: q1_data <= 16'h7D39;
        10'h379: q1_data <= 16'h7D43;
        10'h37A: q1_data <= 16'h7D4E;
        10'h37B: q1_data <= 16'h7D58;
        10'h37C: q1_data <= 16'h7D62;
        10'h37D: q1_data <= 16'h7D6C;
        10'h37E: q1_data <= 16'h7D76;
        10'h37F: q1_data <= 16'h7D80;
        10'h380: q1_data <= 16'h7D8A;
        10'h381: q1_data <= 16'h7D94;
        10'h382: q1_data <= 16'h7D9D;
        10'h383: q1_data <= 16'h7DA7;
        10'h384: q1_data <= 16'h7DB0;
        10'h385: q1_data <= 16'h7DBA;
        10'h386: q1_data <= 16'h7DC3;
        10'h387: q1_data <= 16'h7DCD;
        10'h388: q1_data <= 16'h7DD6;
        10'h389: q1_data <= 16'h7DDF;
        10'h38A: q1_data <= 16'h7DE8;
        10'h38B: q1_data <= 16'h7DF1;
        10'h38C: q1_data <= 16'h7DFA;
        10'h38D: q1_data <= 16'h7E03;
        10'h38E: q1_data <= 16'h7E0C;
        10'h38F: q1_data <= 16'h7E14;
        10'h390: q1_data <= 16'h7E1D;
        10'h391: q1_data <= 16'h7E26;
        10'h392: q1_data <= 16'h7E2E;
        10'h393: q1_data <= 16'h7E37;
        10'h394: q1_data <= 16'h7E3F;
        10'h395: q1_data <= 16'h7E47;
        10'h396: q1_data <= 16'h7E4F;
        10'h397: q1_data <= 16'h7E57;
        10'h398: q1_data <= 16'h7E5F;
        10'h399: q1_data <= 16'h7E67;
        10'h39A: q1_data <= 16'h7E6F;
        10'h39B: q1_data <= 16'h7E77;
        10'h39C: q1_data <= 16'h7E7F;
        10'h39D: q1_data <= 16'h7E86;
        10'h39E: q1_data <= 16'h7E8E;
        10'h39F: q1_data <= 16'h7E95;
        10'h3A0: q1_data <= 16'h7E9D;
        10'h3A1: q1_data <= 16'h7EA4;
        10'h3A2: q1_data <= 16'h7EAB;
        10'h3A3: q1_data <= 16'h7EB3;
        10'h3A4: q1_data <= 16'h7EBA;
        10'h3A5: q1_data <= 16'h7EC1;
        10'h3A6: q1_data <= 16'h7EC8;
        10'h3A7: q1_data <= 16'h7ECF;
        10'h3A8: q1_data <= 16'h7ED5;
        10'h3A9: q1_data <= 16'h7EDC;
        10'h3AA: q1_data <= 16'h7EE3;
        10'h3AB: q1_data <= 16'h7EE9;
        10'h3AC: q1_data <= 16'h7EF0;
        10'h3AD: q1_data <= 16'h7EF6;
        10'h3AE: q1_data <= 16'h7EFD;
        10'h3AF: q1_data <= 16'h7F03;
        10'h3B0: q1_data <= 16'h7F09;
        10'h3B1: q1_data <= 16'h7F0F;
        10'h3B2: q1_data <= 16'h7F15;
        10'h3B3: q1_data <= 16'h7F1B;
        10'h3B4: q1_data <= 16'h7F21;
        10'h3B5: q1_data <= 16'h7F27;
        10'h3B6: q1_data <= 16'h7F2D;
        10'h3B7: q1_data <= 16'h7F32;
        10'h3B8: q1_data <= 16'h7F38;
        10'h3B9: q1_data <= 16'h7F3D;
        10'h3BA: q1_data <= 16'h7F43;
        10'h3BB: q1_data <= 16'h7F48;
        10'h3BC: q1_data <= 16'h7F4D;
        10'h3BD: q1_data <= 16'h7F53;
        10'h3BE: q1_data <= 16'h7F58;
        10'h3BF: q1_data <= 16'h7F5D;
        10'h3C0: q1_data <= 16'h7F62;
        10'h3C1: q1_data <= 16'h7F67;
        10'h3C2: q1_data <= 16'h7F6B;
        10'h3C3: q1_data <= 16'h7F70;
        10'h3C4: q1_data <= 16'h7F75;
        10'h3C5: q1_data <= 16'h7F79;
        10'h3C6: q1_data <= 16'h7F7E;
        10'h3C7: q1_data <= 16'h7F82;
        10'h3C8: q1_data <= 16'h7F87;
        10'h3C9: q1_data <= 16'h7F8B;
        10'h3CA: q1_data <= 16'h7F8F;
        10'h3CB: q1_data <= 16'h7F93;
        10'h3CC: q1_data <= 16'h7F97;
        10'h3CD: q1_data <= 16'h7F9B;
        10'h3CE: q1_data <= 16'h7F9F;
        10'h3CF: q1_data <= 16'h7FA3;
        10'h3D0: q1_data <= 16'h7FA7;
        10'h3D1: q1_data <= 16'h7FAA;
        10'h3D2: q1_data <= 16'h7FAE;
        10'h3D3: q1_data <= 16'h7FB1;
        10'h3D4: q1_data <= 16'h7FB5;
        10'h3D5: q1_data <= 16'h7FB8;
        10'h3D6: q1_data <= 16'h7FBC;
        10'h3D7: q1_data <= 16'h7FBF;
        10'h3D8: q1_data <= 16'h7FC2;
        10'h3D9: q1_data <= 16'h7FC5;
        10'h3DA: q1_data <= 16'h7FC8;
        10'h3DB: q1_data <= 16'h7FCB;
        10'h3DC: q1_data <= 16'h7FCE;
        10'h3DD: q1_data <= 16'h7FD0;
        10'h3DE: q1_data <= 16'h7FD3;
        10'h3DF: q1_data <= 16'h7FD6;
        10'h3E0: q1_data <= 16'h7FD8;
        10'h3E1: q1_data <= 16'h7FDA;
        10'h3E2: q1_data <= 16'h7FDD;
        10'h3E3: q1_data <= 16'h7FDF;
        10'h3E4: q1_data <= 16'h7FE1;
        10'h3E5: q1_data <= 16'h7FE3;
        10'h3E6: q1_data <= 16'h7FE5;
        10'h3E7: q1_data <= 16'h7FE7;
        10'h3E8: q1_data <= 16'h7FE9;
        10'h3E9: q1_data <= 16'h7FEB;
        10'h3EA: q1_data <= 16'h7FED;
        10'h3EB: q1_data <= 16'h7FEE;
        10'h3EC: q1_data <= 16'h7FF0;
        10'h3ED: q1_data <= 16'h7FF2;
        10'h3EE: q1_data <= 16'h7FF3;
        10'h3EF: q1_data <= 16'h7FF4;
        10'h3F0: q1_data <= 16'h7FF6;
        10'h3F1: q1_data <= 16'h7FF7;
        10'h3F2: q1_data <= 16'h7FF8;
        10'h3F3: q1_data <= 16'h7FF9;
        10'h3F4: q1_data <= 16'h7FFA;
        10'h3F5: q1_data <= 16'h7FFB;
        10'h3F6: q1_data <= 16'h7FFC;
        10'h3F7: q1_data <= 16'h7FFC;
        10'h3F8: q1_data <= 16'h7FFD;
        10'h3F9: q1_data <= 16'h7FFE;
        10'h3FA: q1_data <= 16'h7FFE;
        10'h3FB: q1_data <= 16'h7FFF;
        10'h3FC: q1_data <= 16'h7FFF;
        10'h3FD: q1_data <= 16'h7FFF;
        10'h3FE: q1_data <= 16'h7FFF;
        10'h3FF: q1_data <= 16'h7FFF;

        default: q1_data = 16'h0000;
		
    endcase
end end 
  
endmodule