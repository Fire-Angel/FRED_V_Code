////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: LPF_2.v
// /___/   /\     Timestamp: Thu Mar 06 11:51:13 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg/LPF_2.ngc ./tmp/_cg/LPF_2.v 
// Device	: 5vlx50tff1136-2
// Input file	: ./tmp/_cg/LPF_2.ngc
// Output file	: ./tmp/_cg/LPF_2.v
// # of Modules	: 1
// Design Name	: LPF_2
// Xilinx        : C:\Xilinx\14.6\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module LPF_2 (
  rfd, rdy, clk, dout, din
)/* synthesis syn_black_box syn_noprune=1 */;
  output rfd;
  output rdy;
  input clk;
  output [29 : 0] dout;
  input [15 : 0] din;
  
  // synthesis translate_off
  
  wire NlwRenamedSig_OI_rfd;
  wire \blk00000003/sig00000117 ;
  wire \blk00000003/sig00000116 ;
  wire \blk00000003/sig00000115 ;
  wire \blk00000003/sig00000114 ;
  wire \blk00000003/sig00000113 ;
  wire \blk00000003/sig00000112 ;
  wire \blk00000003/sig00000111 ;
  wire \blk00000003/sig00000110 ;
  wire \blk00000003/sig0000010f ;
  wire \blk00000003/sig0000010e ;
  wire \blk00000003/sig0000010d ;
  wire \blk00000003/sig0000010c ;
  wire \blk00000003/sig0000010b ;
  wire \blk00000003/sig0000010a ;
  wire \blk00000003/sig00000109 ;
  wire \blk00000003/sig00000108 ;
  wire \blk00000003/sig00000107 ;
  wire \blk00000003/sig00000106 ;
  wire \blk00000003/sig00000105 ;
  wire \blk00000003/sig00000104 ;
  wire \blk00000003/sig00000103 ;
  wire \blk00000003/sig00000102 ;
  wire \blk00000003/sig00000101 ;
  wire \blk00000003/sig00000100 ;
  wire \blk00000003/sig000000ff ;
  wire \blk00000003/sig000000fe ;
  wire \blk00000003/sig000000fd ;
  wire \blk00000003/sig000000fc ;
  wire \blk00000003/sig000000fb ;
  wire \blk00000003/sig000000fa ;
  wire \blk00000003/sig000000f9 ;
  wire \blk00000003/sig000000f8 ;
  wire \blk00000003/sig000000f7 ;
  wire \blk00000003/sig000000f6 ;
  wire \blk00000003/sig000000f5 ;
  wire \blk00000003/sig000000f4 ;
  wire \blk00000003/sig000000f3 ;
  wire \blk00000003/sig000000f2 ;
  wire \blk00000003/sig000000f1 ;
  wire \blk00000003/sig000000f0 ;
  wire \blk00000003/sig000000ef ;
  wire \blk00000003/sig000000ee ;
  wire \blk00000003/sig000000ed ;
  wire \blk00000003/sig000000ec ;
  wire \blk00000003/sig000000eb ;
  wire \blk00000003/sig000000ea ;
  wire \blk00000003/sig000000e9 ;
  wire \blk00000003/sig000000e8 ;
  wire \blk00000003/sig000000e7 ;
  wire \blk00000003/sig000000e6 ;
  wire \blk00000003/sig000000e5 ;
  wire \blk00000003/sig000000e4 ;
  wire \blk00000003/sig000000e3 ;
  wire \blk00000003/sig000000e2 ;
  wire \blk00000003/sig000000e1 ;
  wire \blk00000003/sig000000e0 ;
  wire \blk00000003/sig000000df ;
  wire \blk00000003/sig000000de ;
  wire \blk00000003/sig000000dd ;
  wire \blk00000003/sig000000dc ;
  wire \blk00000003/sig000000db ;
  wire \blk00000003/sig000000da ;
  wire \blk00000003/sig000000d9 ;
  wire \blk00000003/sig000000d8 ;
  wire \blk00000003/sig000000d7 ;
  wire \blk00000003/sig000000d6 ;
  wire \blk00000003/sig000000d5 ;
  wire \blk00000003/sig000000d4 ;
  wire \blk00000003/sig000000d3 ;
  wire \blk00000003/sig000000d2 ;
  wire \blk00000003/sig000000d1 ;
  wire \blk00000003/sig000000d0 ;
  wire \blk00000003/sig000000cf ;
  wire \blk00000003/sig000000ce ;
  wire \blk00000003/sig000000cd ;
  wire \blk00000003/sig000000cc ;
  wire \blk00000003/sig000000cb ;
  wire \blk00000003/sig000000ca ;
  wire \blk00000003/sig000000c9 ;
  wire \blk00000003/sig000000c8 ;
  wire \blk00000003/sig000000c7 ;
  wire \blk00000003/sig000000c6 ;
  wire \blk00000003/sig000000c5 ;
  wire \blk00000003/sig000000c4 ;
  wire \blk00000003/sig000000c3 ;
  wire \blk00000003/sig000000c2 ;
  wire \blk00000003/sig000000c1 ;
  wire \blk00000003/sig000000c0 ;
  wire \blk00000003/sig000000bf ;
  wire \blk00000003/sig000000be ;
  wire \blk00000003/sig000000bd ;
  wire \blk00000003/sig000000bc ;
  wire \blk00000003/sig000000bb ;
  wire \blk00000003/sig000000ba ;
  wire \blk00000003/sig000000b9 ;
  wire \blk00000003/sig000000b8 ;
  wire \blk00000003/sig000000b7 ;
  wire \blk00000003/sig000000b6 ;
  wire \blk00000003/sig000000b5 ;
  wire \blk00000003/sig000000b4 ;
  wire \blk00000003/sig000000b3 ;
  wire \blk00000003/sig000000b2 ;
  wire \blk00000003/sig000000b1 ;
  wire \blk00000003/sig000000b0 ;
  wire \blk00000003/sig000000af ;
  wire \blk00000003/sig000000ae ;
  wire \blk00000003/sig000000ad ;
  wire \blk00000003/sig000000ac ;
  wire \blk00000003/sig000000ab ;
  wire \blk00000003/sig000000aa ;
  wire \blk00000003/sig000000a9 ;
  wire \blk00000003/sig000000a8 ;
  wire \blk00000003/sig000000a7 ;
  wire \blk00000003/sig000000a6 ;
  wire \blk00000003/sig000000a5 ;
  wire \blk00000003/sig000000a4 ;
  wire \blk00000003/sig000000a3 ;
  wire \blk00000003/sig000000a2 ;
  wire \blk00000003/sig000000a1 ;
  wire \blk00000003/sig000000a0 ;
  wire \blk00000003/sig0000009f ;
  wire \blk00000003/sig0000009e ;
  wire \blk00000003/sig0000009d ;
  wire \blk00000003/sig0000009c ;
  wire \blk00000003/sig00000097 ;
  wire \blk00000003/sig00000096 ;
  wire \blk00000003/sig00000095 ;
  wire \blk00000003/sig00000094 ;
  wire \blk00000003/sig00000093 ;
  wire \blk00000003/sig00000092 ;
  wire \blk00000003/sig00000091 ;
  wire \blk00000003/sig00000090 ;
  wire \blk00000003/sig0000008f ;
  wire \blk00000003/sig0000008e ;
  wire \blk00000003/sig0000008d ;
  wire \blk00000003/sig0000008c ;
  wire \blk00000003/sig0000008b ;
  wire \blk00000003/sig0000008a ;
  wire \blk00000003/sig00000089 ;
  wire \blk00000003/sig00000088 ;
  wire \blk00000003/sig00000087 ;
  wire \blk00000003/sig00000086 ;
  wire \blk00000003/sig00000085 ;
  wire \blk00000003/sig00000084 ;
  wire \blk00000003/sig00000083 ;
  wire \blk00000003/sig00000082 ;
  wire \blk00000003/sig00000081 ;
  wire \blk00000003/sig00000080 ;
  wire \blk00000003/sig0000007f ;
  wire \blk00000003/sig0000007e ;
  wire \blk00000003/sig0000007d ;
  wire \blk00000003/sig0000007c ;
  wire \blk00000003/sig0000007b ;
  wire \blk00000003/sig0000007a ;
  wire \blk00000003/sig00000079 ;
  wire \blk00000003/sig00000078 ;
  wire \blk00000003/sig00000077 ;
  wire \blk00000003/sig00000076 ;
  wire \blk00000003/sig00000075 ;
  wire \blk00000003/sig00000074 ;
  wire \blk00000003/sig00000073 ;
  wire \blk00000003/sig00000072 ;
  wire \blk00000003/sig00000071 ;
  wire \blk00000003/sig00000070 ;
  wire \blk00000003/sig0000006f ;
  wire \blk00000003/sig0000006e ;
  wire \blk00000003/sig0000006d ;
  wire \blk00000003/sig0000006c ;
  wire \blk00000003/sig0000006b ;
  wire \blk00000003/sig0000006a ;
  wire \blk00000003/sig00000069 ;
  wire \blk00000003/sig00000068 ;
  wire \blk00000003/sig00000067 ;
  wire \blk00000003/sig00000066 ;
  wire \blk00000003/sig00000065 ;
  wire \blk00000003/sig00000064 ;
  wire \blk00000003/sig00000063 ;
  wire \blk00000003/sig00000062 ;
  wire \blk00000003/sig00000061 ;
  wire \blk00000003/sig00000060 ;
  wire \blk00000003/sig0000005f ;
  wire \blk00000003/sig0000005e ;
  wire \blk00000003/sig0000005d ;
  wire \blk00000003/sig0000005c ;
  wire \blk00000003/sig0000005b ;
  wire \blk00000003/sig0000005a ;
  wire \blk00000003/sig00000059 ;
  wire \blk00000003/sig00000058 ;
  wire \blk00000003/sig00000057 ;
  wire \blk00000003/sig00000056 ;
  wire \blk00000003/sig00000055 ;
  wire \blk00000003/sig00000054 ;
  wire \blk00000003/sig00000053 ;
  wire \blk00000003/sig00000052 ;
  wire \blk00000003/sig00000051 ;
  wire \blk00000003/sig00000050 ;
  wire \blk00000003/sig0000004f ;
  wire \blk00000003/sig0000004e ;
  wire \blk00000003/sig0000004d ;
  wire \blk00000003/sig0000004c ;
  wire \blk00000003/sig0000004b ;
  wire \blk00000003/sig0000004a ;
  wire \blk00000003/sig00000049 ;
  wire \blk00000003/sig00000048 ;
  wire \blk00000003/sig00000047 ;
  wire \blk00000003/sig00000046 ;
  wire \blk00000003/sig00000045 ;
  wire \blk00000003/sig00000044 ;
  wire \blk00000003/sig00000043 ;
  wire \blk00000003/sig00000042 ;
  wire \blk00000003/sig00000041 ;
  wire \blk00000003/sig00000040 ;
  wire \blk00000003/sig0000003f ;
  wire \blk00000003/sig0000003e ;
  wire \blk00000003/sig0000003d ;
  wire \blk00000003/sig0000003c ;
  wire \blk00000003/sig0000003b ;
  wire \blk00000003/sig0000003a ;
  wire \blk00000003/sig00000039 ;
  wire \blk00000003/sig00000038 ;
  wire \blk00000003/sig00000037 ;
  wire \blk00000003/sig00000036 ;
  wire \blk00000003/sig00000035 ;
  wire \blk00000003/sig00000034 ;
  wire \blk00000003/sig00000005 ;
  wire \blk00000003/sig00000002 ;
  wire \blk00000003/blk00000059/sig00000134 ;
  wire \blk00000003/blk00000059/sig00000133 ;
  wire \blk00000003/blk00000059/sig00000132 ;
  wire \blk00000003/blk00000059/sig00000131 ;
  wire \blk00000003/blk00000059/sig00000130 ;
  wire \blk00000003/blk00000059/sig0000012f ;
  wire \blk00000003/blk00000059/sig0000012e ;
  wire \blk00000003/blk00000059/sig0000012d ;
  wire \blk00000003/blk00000059/sig0000012c ;
  wire \blk00000003/blk00000059/sig0000012b ;
  wire \blk00000003/blk00000059/sig0000012a ;
  wire \blk00000003/blk00000059/sig00000129 ;
  wire \blk00000003/blk00000072/sig0000016a ;
  wire \blk00000003/blk00000072/sig00000169 ;
  wire \blk00000003/blk00000072/sig00000168 ;
  wire \blk00000003/blk00000072/sig00000167 ;
  wire \blk00000003/blk00000072/sig00000166 ;
  wire \blk00000003/blk00000072/sig00000165 ;
  wire \blk00000003/blk00000072/sig00000164 ;
  wire \blk00000003/blk00000072/sig00000163 ;
  wire \blk00000003/blk00000072/sig00000162 ;
  wire \blk00000003/blk00000072/sig00000161 ;
  wire \blk00000003/blk00000072/sig00000160 ;
  wire \blk00000003/blk00000072/sig0000015f ;
  wire \blk00000003/blk00000072/sig0000015e ;
  wire \blk00000003/blk00000072/sig0000015d ;
  wire \blk00000003/blk00000072/sig0000015c ;
  wire \blk00000003/blk00000072/sig0000015b ;
  wire NLW_blk00000001_P_UNCONNECTED;
  wire NLW_blk00000002_G_UNCONNECTED;
  wire \NLW_blk00000003/blk00000109_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000107_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000105_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000103_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000101_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000ff_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000fd_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000fb_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000f9_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000f7_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000f5_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000f3_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000f1_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000ef_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000ed_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000eb_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e9_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e7_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e5_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000098_Q_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000094_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_OVERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_UNDERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_PCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_P<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000093_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000057_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000057_LO_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000048_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000048_LO_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000003c_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000003c_LO_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000002f_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000002f_LO_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk00000092_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk00000091_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk00000090_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk0000008f_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk0000008e_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk0000008d_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk0000008c_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk0000008b_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk0000008a_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk00000089_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk00000088_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk00000087_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk00000086_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk00000085_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk00000084_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000072/blk00000083_Q15_UNCONNECTED ;
  wire [15 : 0] din_0;
  wire [29 : 0] NlwRenamedSig_OI_dout;
  assign
    rfd = NlwRenamedSig_OI_rfd,
    dout[29] = NlwRenamedSig_OI_dout[29],
    dout[28] = NlwRenamedSig_OI_dout[28],
    dout[27] = NlwRenamedSig_OI_dout[27],
    dout[26] = NlwRenamedSig_OI_dout[26],
    dout[25] = NlwRenamedSig_OI_dout[25],
    dout[24] = NlwRenamedSig_OI_dout[24],
    dout[23] = NlwRenamedSig_OI_dout[23],
    dout[22] = NlwRenamedSig_OI_dout[22],
    dout[21] = NlwRenamedSig_OI_dout[21],
    dout[20] = NlwRenamedSig_OI_dout[20],
    dout[19] = NlwRenamedSig_OI_dout[19],
    dout[18] = NlwRenamedSig_OI_dout[18],
    dout[17] = NlwRenamedSig_OI_dout[17],
    dout[16] = NlwRenamedSig_OI_dout[16],
    dout[15] = NlwRenamedSig_OI_dout[15],
    dout[14] = NlwRenamedSig_OI_dout[14],
    dout[13] = NlwRenamedSig_OI_dout[13],
    dout[12] = NlwRenamedSig_OI_dout[12],
    dout[11] = NlwRenamedSig_OI_dout[11],
    dout[10] = NlwRenamedSig_OI_dout[10],
    dout[9] = NlwRenamedSig_OI_dout[9],
    dout[8] = NlwRenamedSig_OI_dout[8],
    dout[7] = NlwRenamedSig_OI_dout[7],
    dout[6] = NlwRenamedSig_OI_dout[6],
    dout[5] = NlwRenamedSig_OI_dout[5],
    dout[4] = NlwRenamedSig_OI_dout[4],
    dout[3] = NlwRenamedSig_OI_dout[3],
    dout[2] = NlwRenamedSig_OI_dout[2],
    dout[1] = NlwRenamedSig_OI_dout[1],
    dout[0] = NlwRenamedSig_OI_dout[0],
    din_0[15] = din[15],
    din_0[14] = din[14],
    din_0[13] = din[13],
    din_0[12] = din[12],
    din_0[11] = din[11],
    din_0[10] = din[10],
    din_0[9] = din[9],
    din_0[8] = din[8],
    din_0[7] = din[7],
    din_0[6] = din[6],
    din_0[5] = din[5],
    din_0[4] = din[4],
    din_0[3] = din[3],
    din_0[2] = din[2],
    din_0[1] = din[1],
    din_0[0] = din[0];
  VCC   blk00000001 (
    .P(NLW_blk00000001_P_UNCONNECTED)
  );
  GND   blk00000002 (
    .G(NLW_blk00000002_G_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000010a  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000117 ),
    .Q(\blk00000003/sig00000103 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000109  (
    .A0(\blk00000003/sig00000034 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(\blk00000003/sig000000e9 ),
    .Q(\blk00000003/sig00000117 ),
    .Q15(\NLW_blk00000003/blk00000109_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000108  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000116 ),
    .Q(\blk00000003/sig00000104 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000107  (
    .A0(\blk00000003/sig00000034 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(\blk00000003/sig000000fc ),
    .Q(\blk00000003/sig00000116 ),
    .Q15(\NLW_blk00000003/blk00000107_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000106  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000115 ),
    .Q(\blk00000003/sig000000fe )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000105  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000034 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(\blk00000003/sig000000f5 ),
    .Q(\blk00000003/sig00000115 ),
    .Q15(\NLW_blk00000003/blk00000105_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000104  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000114 ),
    .Q(\blk00000003/sig000000b8 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000103  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[15]),
    .Q(\blk00000003/sig00000114 ),
    .Q15(\NLW_blk00000003/blk00000103_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000102  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000113 ),
    .Q(\blk00000003/sig000000b9 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000101  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[14]),
    .Q(\blk00000003/sig00000113 ),
    .Q15(\NLW_blk00000003/blk00000101_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000100  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000112 ),
    .Q(\blk00000003/sig000000ba )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000ff  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[13]),
    .Q(\blk00000003/sig00000112 ),
    .Q15(\NLW_blk00000003/blk000000ff_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000fe  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000111 ),
    .Q(\blk00000003/sig000000bc )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000fd  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[11]),
    .Q(\blk00000003/sig00000111 ),
    .Q15(\NLW_blk00000003/blk000000fd_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000fc  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000110 ),
    .Q(\blk00000003/sig000000bd )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000fb  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[10]),
    .Q(\blk00000003/sig00000110 ),
    .Q15(\NLW_blk00000003/blk000000fb_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000fa  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000010f ),
    .Q(\blk00000003/sig000000bb )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000f9  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[12]),
    .Q(\blk00000003/sig0000010f ),
    .Q15(\NLW_blk00000003/blk000000f9_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f8  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000010e ),
    .Q(\blk00000003/sig000000be )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000f7  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[9]),
    .Q(\blk00000003/sig0000010e ),
    .Q15(\NLW_blk00000003/blk000000f7_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f6  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000010d ),
    .Q(\blk00000003/sig000000bf )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000f5  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[8]),
    .Q(\blk00000003/sig0000010d ),
    .Q15(\NLW_blk00000003/blk000000f5_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f4  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000010c ),
    .Q(\blk00000003/sig000000c1 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000f3  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[6]),
    .Q(\blk00000003/sig0000010c ),
    .Q15(\NLW_blk00000003/blk000000f3_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f2  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000010b ),
    .Q(\blk00000003/sig000000c2 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000f1  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[5]),
    .Q(\blk00000003/sig0000010b ),
    .Q15(\NLW_blk00000003/blk000000f1_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f0  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000010a ),
    .Q(\blk00000003/sig000000c0 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000ef  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[7]),
    .Q(\blk00000003/sig0000010a ),
    .Q15(\NLW_blk00000003/blk000000ef_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ee  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000109 ),
    .Q(\blk00000003/sig000000c3 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000ed  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[4]),
    .Q(\blk00000003/sig00000109 ),
    .Q15(\NLW_blk00000003/blk000000ed_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ec  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000108 ),
    .Q(\blk00000003/sig000000c4 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000eb  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[3]),
    .Q(\blk00000003/sig00000108 ),
    .Q15(\NLW_blk00000003/blk000000eb_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ea  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000107 ),
    .Q(\blk00000003/sig000000c6 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000e9  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[1]),
    .Q(\blk00000003/sig00000107 ),
    .Q15(\NLW_blk00000003/blk000000e9_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e8  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000106 ),
    .Q(\blk00000003/sig000000c7 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000e7  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[0]),
    .Q(\blk00000003/sig00000106 ),
    .Q15(\NLW_blk00000003/blk000000e7_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e6  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000105 ),
    .Q(\blk00000003/sig000000c5 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000e5  (
    .A0(\blk00000003/sig00000002 ),
    .A1(\blk00000003/sig00000002 ),
    .A2(\blk00000003/sig00000002 ),
    .A3(\blk00000003/sig00000002 ),
    .CE(\blk00000003/sig00000034 ),
    .CLK(clk),
    .D(din_0[2]),
    .Q(\blk00000003/sig00000105 ),
    .Q15(\NLW_blk00000003/blk000000e5_Q15_UNCONNECTED )
  );
  INV   \blk00000003/blk000000e4  (
    .I(NlwRenamedSig_OI_rfd),
    .O(\blk00000003/sig00000102 )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \blk00000003/blk000000e3  (
    .I0(\blk00000003/sig0000006b ),
    .I1(\blk00000003/sig000000f4 ),
    .I2(\blk00000003/sig0000005c ),
    .O(\blk00000003/sig00000074 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \blk00000003/blk000000e2  (
    .I0(\blk00000003/sig0000005c ),
    .I1(\blk00000003/sig000000f4 ),
    .I2(\blk00000003/sig00000069 ),
    .O(\blk00000003/sig00000072 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \blk00000003/blk000000e1  (
    .I0(\blk00000003/sig0000005c ),
    .I1(\blk00000003/sig000000f4 ),
    .I2(\blk00000003/sig00000067 ),
    .O(\blk00000003/sig00000070 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000e0  (
    .I0(\blk00000003/sig0000008d ),
    .O(\blk00000003/sig00000096 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000df  (
    .I0(\blk00000003/sig00000087 ),
    .O(\blk00000003/sig00000090 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000de  (
    .I0(\blk00000003/sig0000007c ),
    .O(\blk00000003/sig00000083 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000dd  (
    .I0(\blk00000003/sig0000005b ),
    .O(\blk00000003/sig00000063 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000dc  (
    .I0(\blk00000003/sig00000055 ),
    .O(\blk00000003/sig0000005d )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \blk00000003/blk000000db  (
    .I0(\blk00000003/sig000000f4 ),
    .I1(\blk00000003/sig0000005c ),
    .O(\blk00000003/sig0000006c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000da  (
    .I0(\blk00000003/sig000000ef ),
    .I1(\blk00000003/sig00000085 ),
    .O(\blk00000003/sig0000008e )
  );
  LUT3 #(
    .INIT ( 8'hDA ))
  \blk00000003/blk000000d9  (
    .I0(\blk00000003/sig0000005c ),
    .I1(\blk00000003/sig000000f4 ),
    .I2(\blk00000003/sig00000065 ),
    .O(\blk00000003/sig0000006e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000d8  (
    .I0(\blk00000003/sig00000076 ),
    .I1(\blk00000003/sig000000e9 ),
    .O(\blk00000003/sig0000007d )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \blk00000003/blk000000d7  (
    .I0(\blk00000003/sig00000078 ),
    .I1(\blk00000003/sig000000e9 ),
    .I2(\blk00000003/sig000000f5 ),
    .O(\blk00000003/sig0000007f )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000003/blk000000d6  (
    .I0(\blk00000003/sig000000ef ),
    .I1(\blk00000003/sig00000089 ),
    .I2(NlwRenamedSig_OI_rfd),
    .O(\blk00000003/sig00000092 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000d5  (
    .I0(\blk00000003/sig000000f4 ),
    .I1(\blk00000003/sig00000057 ),
    .O(\blk00000003/sig0000005f )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \blk00000003/blk000000d4  (
    .I0(\blk00000003/sig0000007a ),
    .I1(\blk00000003/sig000000e9 ),
    .I2(\blk00000003/sig000000f5 ),
    .O(\blk00000003/sig00000081 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000003/blk000000d3  (
    .I0(\blk00000003/sig000000ef ),
    .I1(\blk00000003/sig0000008b ),
    .I2(NlwRenamedSig_OI_rfd),
    .O(\blk00000003/sig00000094 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000d2  (
    .I0(\blk00000003/sig000000f4 ),
    .I1(\blk00000003/sig00000059 ),
    .O(\blk00000003/sig00000061 )
  );
  LUT5 #(
    .INIT ( 32'h00040000 ))
  \blk00000003/blk000000d1  (
    .I0(\blk00000003/sig00000085 ),
    .I1(\blk00000003/sig00000087 ),
    .I2(\blk00000003/sig00000089 ),
    .I3(\blk00000003/sig0000008b ),
    .I4(\blk00000003/sig0000008d ),
    .O(\blk00000003/sig000000f0 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \blk00000003/blk000000d0  (
    .I0(\blk00000003/sig00000076 ),
    .I1(\blk00000003/sig00000078 ),
    .I2(\blk00000003/sig0000007a ),
    .I3(\blk00000003/sig0000007c ),
    .O(\blk00000003/sig000000ea )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \blk00000003/blk000000cf  (
    .I0(\blk00000003/sig000000f6 ),
    .I1(NlwRenamedSig_OI_rfd),
    .O(\blk00000003/sig000000ed )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000ce  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[0]),
    .I2(\blk00000003/sig000000e8 ),
    .O(\blk00000003/sig00000053 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000cd  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[10]),
    .I2(\blk00000003/sig000000de ),
    .O(\blk00000003/sig00000049 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000cc  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[11]),
    .I2(\blk00000003/sig000000dd ),
    .O(\blk00000003/sig00000048 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000cb  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[12]),
    .I2(\blk00000003/sig000000dc ),
    .O(\blk00000003/sig00000047 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000ca  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[13]),
    .I2(\blk00000003/sig000000db ),
    .O(\blk00000003/sig00000046 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000c9  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[14]),
    .I2(\blk00000003/sig000000da ),
    .O(\blk00000003/sig00000045 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000c8  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[15]),
    .I2(\blk00000003/sig000000d9 ),
    .O(\blk00000003/sig00000044 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000c7  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[16]),
    .I2(\blk00000003/sig000000d8 ),
    .O(\blk00000003/sig00000043 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000c6  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[17]),
    .I2(\blk00000003/sig000000d7 ),
    .O(\blk00000003/sig00000042 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000c5  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[18]),
    .I2(\blk00000003/sig000000d6 ),
    .O(\blk00000003/sig00000041 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000c4  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[19]),
    .I2(\blk00000003/sig000000d5 ),
    .O(\blk00000003/sig00000040 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000c3  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[1]),
    .I2(\blk00000003/sig000000e7 ),
    .O(\blk00000003/sig00000052 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000c2  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[20]),
    .I2(\blk00000003/sig000000d4 ),
    .O(\blk00000003/sig0000003f )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000c1  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[21]),
    .I2(\blk00000003/sig000000d3 ),
    .O(\blk00000003/sig0000003e )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000c0  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[22]),
    .I2(\blk00000003/sig000000d2 ),
    .O(\blk00000003/sig0000003d )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000bf  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[23]),
    .I2(\blk00000003/sig000000d1 ),
    .O(\blk00000003/sig0000003c )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000be  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[24]),
    .I2(\blk00000003/sig000000d0 ),
    .O(\blk00000003/sig0000003b )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000bd  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[25]),
    .I2(\blk00000003/sig000000cf ),
    .O(\blk00000003/sig0000003a )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000bc  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[26]),
    .I2(\blk00000003/sig000000ce ),
    .O(\blk00000003/sig00000039 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000bb  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[27]),
    .I2(\blk00000003/sig000000cd ),
    .O(\blk00000003/sig00000038 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000ba  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[28]),
    .I2(\blk00000003/sig000000cc ),
    .O(\blk00000003/sig00000037 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000b9  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[29]),
    .I2(\blk00000003/sig000000cb ),
    .O(\blk00000003/sig00000036 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000b8  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[2]),
    .I2(\blk00000003/sig000000e6 ),
    .O(\blk00000003/sig00000051 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000b7  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[3]),
    .I2(\blk00000003/sig000000e5 ),
    .O(\blk00000003/sig00000050 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000b6  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[4]),
    .I2(\blk00000003/sig000000e4 ),
    .O(\blk00000003/sig0000004f )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000b5  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[5]),
    .I2(\blk00000003/sig000000e3 ),
    .O(\blk00000003/sig0000004e )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000b4  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[6]),
    .I2(\blk00000003/sig000000e2 ),
    .O(\blk00000003/sig0000004d )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000b3  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[7]),
    .I2(\blk00000003/sig000000e1 ),
    .O(\blk00000003/sig0000004c )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000b2  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[8]),
    .I2(\blk00000003/sig000000e0 ),
    .O(\blk00000003/sig0000004b )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000b1  (
    .I0(\blk00000003/sig000000fe ),
    .I1(NlwRenamedSig_OI_dout[9]),
    .I2(\blk00000003/sig000000df ),
    .O(\blk00000003/sig0000004a )
  );
  LUT5 #(
    .INIT ( 32'hFF4C4C4C ))
  \blk00000003/blk000000b0  (
    .I0(\blk00000003/sig000000f5 ),
    .I1(\blk00000003/sig000000e9 ),
    .I2(\blk00000003/sig000000f2 ),
    .I3(\blk00000003/sig000000f9 ),
    .I4(NlwRenamedSig_OI_rfd),
    .O(\blk00000003/sig000000fa )
  );
  LUT4 #(
    .INIT ( 16'h40EA ))
  \blk00000003/blk000000af  (
    .I0(\blk00000003/sig000000f9 ),
    .I1(\blk00000003/sig000000f2 ),
    .I2(\blk00000003/sig000000f5 ),
    .I3(NlwRenamedSig_OI_rfd),
    .O(\blk00000003/sig000000f8 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk000000ae  (
    .I0(NlwRenamedSig_OI_rfd),
    .I1(\blk00000003/sig000000ef ),
    .I2(\blk00000003/sig000000f6 ),
    .O(\blk00000003/sig000000f7 )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \blk00000003/blk000000ad  (
    .I0(\blk00000003/sig000000f5 ),
    .I1(\blk00000003/sig000000e9 ),
    .I2(NlwRenamedSig_OI_rfd),
    .O(\blk00000003/sig000000fb )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \blk00000003/blk000000ac  (
    .I0(\blk00000003/sig000000fd ),
    .I1(\blk00000003/sig000000f5 ),
    .I2(\blk00000003/sig000000f2 ),
    .O(\blk00000003/sig000000f3 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000003/blk000000ab  (
    .I0(\blk00000003/sig00000103 ),
    .I1(\blk00000003/sig00000104 ),
    .O(\blk00000003/sig00000100 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000aa  (
    .I0(\blk00000003/sig00000005 ),
    .I1(\blk00000003/sig000000fe ),
    .O(\blk00000003/sig00000035 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \blk00000003/blk000000a9  (
    .I0(\blk00000003/sig00000103 ),
    .I1(\blk00000003/sig00000104 ),
    .O(\blk00000003/sig00000101 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000a8  (
    .I0(\blk00000003/sig00000103 ),
    .I1(\blk00000003/sig00000104 ),
    .O(\blk00000003/sig000000ff )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a7  (
    .C(clk),
    .D(\blk00000003/sig00000034 ),
    .R(\blk00000003/sig00000102 ),
    .Q(\blk00000003/sig000000fc )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a6  (
    .C(clk),
    .D(\blk00000003/sig00000101 ),
    .Q(\blk00000003/sig000000c9 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a5  (
    .C(clk),
    .D(\blk00000003/sig00000100 ),
    .Q(\blk00000003/sig000000ca )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a4  (
    .C(clk),
    .D(\blk00000003/sig000000ff ),
    .Q(\blk00000003/sig000000c8 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a3  (
    .C(clk),
    .D(\blk00000003/sig000000fe ),
    .Q(rdy)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a2  (
    .C(clk),
    .CE(\blk00000003/sig000000f2 ),
    .D(\blk00000003/sig000000f5 ),
    .Q(\blk00000003/sig000000fd )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a1  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig000000fc ),
    .R(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig000000a7 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a0  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig000000fb ),
    .R(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig000000e9 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000009f  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig000000fa ),
    .R(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig000000f2 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000009e  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig000000f8 ),
    .R(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig000000f9 )
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \blk00000003/blk0000009d  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig000000f1 ),
    .S(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_rfd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000009c  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig000000f7 ),
    .R(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig000000ef )
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \blk00000003/blk0000009b  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig000000ee ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig000000f6 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000009a  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig000000eb ),
    .R(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig000000f5 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000099  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig000000f3 ),
    .R(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig000000f4 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000098  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig000000f3 ),
    .R(\blk00000003/sig00000002 ),
    .Q(\NLW_blk00000003/blk00000098_Q_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000097  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig000000f2 ),
    .R(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig0000005c )
  );
  MUXCY_D   \blk00000003/blk00000096  (
    .CI(\blk00000003/sig000000ef ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000f0 ),
    .O(\blk00000003/sig000000ec ),
    .LO(\blk00000003/sig000000f1 )
  );
  MUXCY   \blk00000003/blk00000095  (
    .CI(\blk00000003/sig000000ec ),
    .DI(\blk00000003/sig00000034 ),
    .S(\blk00000003/sig000000ed ),
    .O(\blk00000003/sig000000ee )
  );
  MUXCY_D   \blk00000003/blk00000094  (
    .CI(\blk00000003/sig000000e9 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000ea ),
    .O(\NLW_blk00000003/blk00000094_O_UNCONNECTED ),
    .LO(\blk00000003/sig000000eb )
  );
  DSP48E #(
    .ACASCREG ( 1 ),
    .ALUMODEREG ( 1 ),
    .AREG ( 1 ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 1 ),
    .BREG ( 1 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 1 ),
    .CARRYINSELREG ( 1 ),
    .CREG ( 1 ),
    .PATTERN ( 48'h000000000000 ),
    .MREG ( 1 ),
    .MULTCARRYINREG ( 1 ),
    .OPMODEREG ( 1 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .SIM_MODE ( "SAFE" ),
    .USE_MULT ( "MULT_S" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ),
    .MASK ( 48'hFFFFFFFFFFFE ))
  \blk00000003/blk00000093  (
    .CARRYIN(\blk00000003/sig00000002 ),
    .CEA1(\blk00000003/sig00000002 ),
    .CEA2(\blk00000003/sig00000034 ),
    .CEB1(\blk00000003/sig00000002 ),
    .CEB2(\blk00000003/sig00000034 ),
    .CEC(\blk00000003/sig00000034 ),
    .CECTRL(\blk00000003/sig00000034 ),
    .CEP(\blk00000003/sig00000034 ),
    .CEM(\blk00000003/sig00000034 ),
    .CECARRYIN(\blk00000003/sig00000034 ),
    .CEMULTCARRYIN(\blk00000003/sig00000034 ),
    .CLK(clk),
    .RSTA(\blk00000003/sig00000002 ),
    .RSTB(\blk00000003/sig00000002 ),
    .RSTC(\blk00000003/sig00000002 ),
    .RSTCTRL(\blk00000003/sig00000002 ),
    .RSTP(\blk00000003/sig00000002 ),
    .RSTM(\blk00000003/sig00000002 ),
    .RSTALLCARRYIN(\blk00000003/sig00000002 ),
    .CEALUMODE(\blk00000003/sig00000034 ),
    .RSTALUMODE(\blk00000003/sig00000002 ),
    .PATTERNBDETECT(\NLW_blk00000003/blk00000093_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_blk00000003/blk00000093_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_blk00000003/blk00000093_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_blk00000003/blk00000093_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\blk00000003/sig00000002 ),
    .CARRYCASCOUT(\NLW_blk00000003/blk00000093_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\blk00000003/sig00000002 ),
    .MULTSIGNOUT(\NLW_blk00000003/blk00000093_MULTSIGNOUT_UNCONNECTED ),
    .A({\blk00000003/sig000000a8 , \blk00000003/sig000000a8 , \blk00000003/sig000000a8 , \blk00000003/sig000000a8 , \blk00000003/sig000000a8 , 
\blk00000003/sig000000a8 , \blk00000003/sig000000a8 , \blk00000003/sig000000a8 , \blk00000003/sig000000a8 , \blk00000003/sig000000a8 , 
\blk00000003/sig000000a8 , \blk00000003/sig000000a8 , \blk00000003/sig000000a8 , \blk00000003/sig000000a8 , \blk00000003/sig000000a8 , 
\blk00000003/sig000000a9 , \blk00000003/sig000000aa , \blk00000003/sig000000ab , \blk00000003/sig000000ac , \blk00000003/sig000000ad , 
\blk00000003/sig000000ae , \blk00000003/sig000000af , \blk00000003/sig000000b0 , \blk00000003/sig000000b1 , \blk00000003/sig000000b2 , 
\blk00000003/sig000000b3 , \blk00000003/sig000000b4 , \blk00000003/sig000000b5 , \blk00000003/sig000000b6 , \blk00000003/sig000000b7 }),
    .PCIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .B({\blk00000003/sig00000097 , \blk00000003/sig00000097 , \blk00000003/sig00000097 , \blk00000003/sig00000097 , \blk00000003/sig00000097 , 
\blk00000003/sig00000097 , \blk00000003/sig00000097 , \blk00000003/sig0000009c , \blk00000003/sig0000009d , \blk00000003/sig0000009e , 
\blk00000003/sig0000009f , \blk00000003/sig000000a0 , \blk00000003/sig000000a1 , \blk00000003/sig000000a2 , \blk00000003/sig000000a3 , 
\blk00000003/sig000000a4 , \blk00000003/sig000000a5 , \blk00000003/sig000000a6 }),
    .C({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .CARRYINSEL({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .OPMODE({\blk00000003/sig00000002 , \blk00000003/sig000000c8 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig000000c9 , 
\blk00000003/sig000000ca , \blk00000003/sig000000c9 }),
    .BCIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .ALUMODE({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .PCOUT({\NLW_blk00000003/blk00000093_PCOUT<47>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<45>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<44>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<43>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<42>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<41>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<39>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<38>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<37>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<36>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<35>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<33>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<32>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<31>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<30>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<29>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<27>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<25>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<23>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<21>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<19>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_PCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000093_PCOUT<0>_UNCONNECTED }),
    .P({\NLW_blk00000003/blk00000093_P<47>_UNCONNECTED , \NLW_blk00000003/blk00000093_P<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_P<45>_UNCONNECTED , \NLW_blk00000003/blk00000093_P<44>_UNCONNECTED , \NLW_blk00000003/blk00000093_P<43>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_P<42>_UNCONNECTED , \NLW_blk00000003/blk00000093_P<41>_UNCONNECTED , \NLW_blk00000003/blk00000093_P<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_P<39>_UNCONNECTED , \NLW_blk00000003/blk00000093_P<38>_UNCONNECTED , \NLW_blk00000003/blk00000093_P<37>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_P<36>_UNCONNECTED , \NLW_blk00000003/blk00000093_P<35>_UNCONNECTED , \NLW_blk00000003/blk00000093_P<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_P<33>_UNCONNECTED , \NLW_blk00000003/blk00000093_P<32>_UNCONNECTED , \NLW_blk00000003/blk00000093_P<31>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_P<30>_UNCONNECTED , \blk00000003/sig000000cb , \blk00000003/sig000000cc , \blk00000003/sig000000cd , 
\blk00000003/sig000000ce , \blk00000003/sig000000cf , \blk00000003/sig000000d0 , \blk00000003/sig000000d1 , \blk00000003/sig000000d2 , 
\blk00000003/sig000000d3 , \blk00000003/sig000000d4 , \blk00000003/sig000000d5 , \blk00000003/sig000000d6 , \blk00000003/sig000000d7 , 
\blk00000003/sig000000d8 , \blk00000003/sig000000d9 , \blk00000003/sig000000da , \blk00000003/sig000000db , \blk00000003/sig000000dc , 
\blk00000003/sig000000dd , \blk00000003/sig000000de , \blk00000003/sig000000df , \blk00000003/sig000000e0 , \blk00000003/sig000000e1 , 
\blk00000003/sig000000e2 , \blk00000003/sig000000e3 , \blk00000003/sig000000e4 , \blk00000003/sig000000e5 , \blk00000003/sig000000e6 , 
\blk00000003/sig000000e7 , \blk00000003/sig000000e8 }),
    .BCOUT({\NLW_blk00000003/blk00000093_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000093_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000093_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000093_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000093_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000093_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000093_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000093_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000093_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000093_BCOUT<0>_UNCONNECTED }),
    .ACIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .ACOUT({\NLW_blk00000003/blk00000093_ACOUT<29>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_ACOUT<27>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_ACOUT<25>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_ACOUT<23>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_ACOUT<21>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_ACOUT<19>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_ACOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_ACOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_ACOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_ACOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_ACOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_ACOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_ACOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_ACOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_ACOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000093_ACOUT<0>_UNCONNECTED }),
    .CARRYOUT({\NLW_blk00000003/blk00000093_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000093_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000093_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000093_CARRYOUT<0>_UNCONNECTED })
  );
  XORCY   \blk00000003/blk00000058  (
    .CI(\blk00000003/sig00000095 ),
    .LI(\blk00000003/sig00000096 ),
    .O(\blk00000003/sig0000008c )
  );
  MUXCY_D   \blk00000003/blk00000057  (
    .CI(\blk00000003/sig00000095 ),
    .DI(\blk00000003/sig0000008d ),
    .S(\blk00000003/sig00000096 ),
    .O(\NLW_blk00000003/blk00000057_O_UNCONNECTED ),
    .LO(\NLW_blk00000003/blk00000057_LO_UNCONNECTED )
  );
  XORCY   \blk00000003/blk00000056  (
    .CI(\blk00000003/sig00000093 ),
    .LI(\blk00000003/sig00000094 ),
    .O(\blk00000003/sig0000008a )
  );
  MUXCY_L   \blk00000003/blk00000055  (
    .CI(\blk00000003/sig00000093 ),
    .DI(\blk00000003/sig0000008b ),
    .S(\blk00000003/sig00000094 ),
    .LO(\blk00000003/sig00000095 )
  );
  XORCY   \blk00000003/blk00000054  (
    .CI(\blk00000003/sig00000091 ),
    .LI(\blk00000003/sig00000092 ),
    .O(\blk00000003/sig00000088 )
  );
  MUXCY_L   \blk00000003/blk00000053  (
    .CI(\blk00000003/sig00000091 ),
    .DI(\blk00000003/sig00000089 ),
    .S(\blk00000003/sig00000092 ),
    .LO(\blk00000003/sig00000093 )
  );
  XORCY   \blk00000003/blk00000052  (
    .CI(\blk00000003/sig0000008f ),
    .LI(\blk00000003/sig00000090 ),
    .O(\blk00000003/sig00000086 )
  );
  MUXCY_L   \blk00000003/blk00000051  (
    .CI(\blk00000003/sig0000008f ),
    .DI(\blk00000003/sig00000087 ),
    .S(\blk00000003/sig00000090 ),
    .LO(\blk00000003/sig00000091 )
  );
  XORCY   \blk00000003/blk00000050  (
    .CI(\blk00000003/sig00000002 ),
    .LI(\blk00000003/sig0000008e ),
    .O(\blk00000003/sig00000084 )
  );
  MUXCY_L   \blk00000003/blk0000004f  (
    .CI(\blk00000003/sig00000002 ),
    .DI(\blk00000003/sig00000085 ),
    .S(\blk00000003/sig0000008e ),
    .LO(\blk00000003/sig0000008f )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000004e  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000008c ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig0000008d )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000004d  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000008a ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig0000008b )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000004c  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000088 ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig00000089 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000004b  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000086 ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig00000087 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000004a  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000084 ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig00000085 )
  );
  XORCY   \blk00000003/blk00000049  (
    .CI(\blk00000003/sig00000082 ),
    .LI(\blk00000003/sig00000083 ),
    .O(\blk00000003/sig0000007b )
  );
  MUXCY_D   \blk00000003/blk00000048  (
    .CI(\blk00000003/sig00000082 ),
    .DI(\blk00000003/sig0000007c ),
    .S(\blk00000003/sig00000083 ),
    .O(\NLW_blk00000003/blk00000048_O_UNCONNECTED ),
    .LO(\NLW_blk00000003/blk00000048_LO_UNCONNECTED )
  );
  XORCY   \blk00000003/blk00000047  (
    .CI(\blk00000003/sig00000080 ),
    .LI(\blk00000003/sig00000081 ),
    .O(\blk00000003/sig00000079 )
  );
  MUXCY_L   \blk00000003/blk00000046  (
    .CI(\blk00000003/sig00000080 ),
    .DI(\blk00000003/sig0000007a ),
    .S(\blk00000003/sig00000081 ),
    .LO(\blk00000003/sig00000082 )
  );
  XORCY   \blk00000003/blk00000045  (
    .CI(\blk00000003/sig0000007e ),
    .LI(\blk00000003/sig0000007f ),
    .O(\blk00000003/sig00000077 )
  );
  MUXCY_L   \blk00000003/blk00000044  (
    .CI(\blk00000003/sig0000007e ),
    .DI(\blk00000003/sig00000078 ),
    .S(\blk00000003/sig0000007f ),
    .LO(\blk00000003/sig00000080 )
  );
  XORCY   \blk00000003/blk00000043  (
    .CI(\blk00000003/sig00000002 ),
    .LI(\blk00000003/sig0000007d ),
    .O(\blk00000003/sig00000075 )
  );
  MUXCY_L   \blk00000003/blk00000042  (
    .CI(\blk00000003/sig00000002 ),
    .DI(\blk00000003/sig00000076 ),
    .S(\blk00000003/sig0000007d ),
    .LO(\blk00000003/sig0000007e )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000041  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000007b ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig0000007c )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000040  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000079 ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig0000007a )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000003f  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000077 ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig00000078 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000003e  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000075 ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig00000076 )
  );
  XORCY   \blk00000003/blk0000003d  (
    .CI(\blk00000003/sig00000073 ),
    .LI(\blk00000003/sig00000074 ),
    .O(\blk00000003/sig0000006a )
  );
  MUXCY_D   \blk00000003/blk0000003c  (
    .CI(\blk00000003/sig00000073 ),
    .DI(\blk00000003/sig0000006b ),
    .S(\blk00000003/sig00000074 ),
    .O(\NLW_blk00000003/blk0000003c_O_UNCONNECTED ),
    .LO(\NLW_blk00000003/blk0000003c_LO_UNCONNECTED )
  );
  XORCY   \blk00000003/blk0000003b  (
    .CI(\blk00000003/sig00000071 ),
    .LI(\blk00000003/sig00000072 ),
    .O(\blk00000003/sig00000068 )
  );
  MUXCY_L   \blk00000003/blk0000003a  (
    .CI(\blk00000003/sig00000071 ),
    .DI(\blk00000003/sig00000069 ),
    .S(\blk00000003/sig00000072 ),
    .LO(\blk00000003/sig00000073 )
  );
  XORCY   \blk00000003/blk00000039  (
    .CI(\blk00000003/sig0000006f ),
    .LI(\blk00000003/sig00000070 ),
    .O(\blk00000003/sig00000066 )
  );
  MUXCY_L   \blk00000003/blk00000038  (
    .CI(\blk00000003/sig0000006f ),
    .DI(\blk00000003/sig00000067 ),
    .S(\blk00000003/sig00000070 ),
    .LO(\blk00000003/sig00000071 )
  );
  XORCY   \blk00000003/blk00000037  (
    .CI(\blk00000003/sig0000006d ),
    .LI(\blk00000003/sig0000006e ),
    .O(\blk00000003/sig00000064 )
  );
  MUXCY_L   \blk00000003/blk00000036  (
    .CI(\blk00000003/sig0000006d ),
    .DI(\blk00000003/sig00000065 ),
    .S(\blk00000003/sig0000006e ),
    .LO(\blk00000003/sig0000006f )
  );
  MUXCY   \blk00000003/blk00000035  (
    .CI(\blk00000003/sig00000002 ),
    .DI(\blk00000003/sig00000034 ),
    .S(\blk00000003/sig0000006c ),
    .O(\blk00000003/sig0000006d )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000034  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000006a ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig0000006b )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000033  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000068 ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig00000069 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000032  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000066 ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig00000067 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000031  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000064 ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig00000065 )
  );
  XORCY   \blk00000003/blk00000030  (
    .CI(\blk00000003/sig00000062 ),
    .LI(\blk00000003/sig00000063 ),
    .O(\blk00000003/sig0000005a )
  );
  MUXCY_D   \blk00000003/blk0000002f  (
    .CI(\blk00000003/sig00000062 ),
    .DI(\blk00000003/sig0000005b ),
    .S(\blk00000003/sig00000063 ),
    .O(\NLW_blk00000003/blk0000002f_O_UNCONNECTED ),
    .LO(\NLW_blk00000003/blk0000002f_LO_UNCONNECTED )
  );
  XORCY   \blk00000003/blk0000002e  (
    .CI(\blk00000003/sig00000060 ),
    .LI(\blk00000003/sig00000061 ),
    .O(\blk00000003/sig00000058 )
  );
  MUXCY_L   \blk00000003/blk0000002d  (
    .CI(\blk00000003/sig00000060 ),
    .DI(\blk00000003/sig00000059 ),
    .S(\blk00000003/sig00000061 ),
    .LO(\blk00000003/sig00000062 )
  );
  XORCY   \blk00000003/blk0000002c  (
    .CI(\blk00000003/sig0000005e ),
    .LI(\blk00000003/sig0000005f ),
    .O(\blk00000003/sig00000056 )
  );
  MUXCY_L   \blk00000003/blk0000002b  (
    .CI(\blk00000003/sig0000005e ),
    .DI(\blk00000003/sig00000057 ),
    .S(\blk00000003/sig0000005f ),
    .LO(\blk00000003/sig00000060 )
  );
  XORCY   \blk00000003/blk0000002a  (
    .CI(\blk00000003/sig0000005c ),
    .LI(\blk00000003/sig0000005d ),
    .O(\blk00000003/sig00000054 )
  );
  MUXCY_L   \blk00000003/blk00000029  (
    .CI(\blk00000003/sig0000005c ),
    .DI(\blk00000003/sig00000055 ),
    .S(\blk00000003/sig0000005d ),
    .LO(\blk00000003/sig0000005e )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000028  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000005a ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig0000005b )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000027  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000058 ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig00000059 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000026  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000056 ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig00000057 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000025  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000054 ),
    .R(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig00000055 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000024  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000053 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000023  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000052 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000022  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000051 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000021  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000050 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000020  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000004f ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001f  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000004e ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001e  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000004d ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001d  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000004c ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001c  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000004b ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001b  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000004a ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001a  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000049 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000019  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000048 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000018  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000047 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000017  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000046 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000016  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000045 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000015  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000044 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[15])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000014  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000043 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[16])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000013  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000042 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[17])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000012  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000041 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[18])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000011  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000040 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[19])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000010  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000003f ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[20])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000f  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000003e ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[21])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000e  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000003d ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[22])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000d  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000003c ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[23])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000c  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000003b ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[24])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000b  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig0000003a ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[25])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000a  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000039 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[26])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000009  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000038 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[27])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000008  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000037 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[28])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000007  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000036 ),
    .R(\blk00000003/sig00000002 ),
    .Q(NlwRenamedSig_OI_dout[29])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000006  (
    .C(clk),
    .CE(\blk00000003/sig00000034 ),
    .D(\blk00000003/sig00000035 ),
    .R(\blk00000003/sig00000002 ),
    .Q(\blk00000003/sig00000005 )
  );
  VCC   \blk00000003/blk00000005  (
    .P(\blk00000003/sig00000034 )
  );
  GND   \blk00000003/blk00000004  (
    .G(\blk00000003/sig00000002 )
  );
  LUT3 #(
    .INIT ( 8'h57 ))
  \blk00000003/blk00000059/blk00000071  (
    .I0(\blk00000003/sig00000059 ),
    .I1(\blk00000003/sig00000055 ),
    .I2(\blk00000003/sig00000057 ),
    .O(\blk00000003/blk00000059/sig00000134 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000059/blk00000070  (
    .C(clk),
    .D(\blk00000003/blk00000059/sig00000134 ),
    .R(\blk00000003/sig0000005b ),
    .Q(\blk00000003/sig0000009c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000059/blk0000006f  (
    .I0(\blk00000003/sig00000057 ),
    .I1(\blk00000003/sig00000059 ),
    .O(\blk00000003/blk00000059/sig00000133 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000059/blk0000006e  (
    .C(clk),
    .D(\blk00000003/blk00000059/sig00000133 ),
    .R(\blk00000003/sig0000005b ),
    .Q(\blk00000003/sig000000a2 )
  );
  LUT3 #(
    .INIT ( 8'h75 ))
  \blk00000003/blk00000059/blk0000006d  (
    .I0(\blk00000003/sig00000059 ),
    .I1(\blk00000003/sig00000055 ),
    .I2(\blk00000003/sig00000057 ),
    .O(\blk00000003/blk00000059/sig00000132 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000059/blk0000006c  (
    .C(clk),
    .D(\blk00000003/blk00000059/sig00000132 ),
    .R(\blk00000003/sig0000005b ),
    .Q(\blk00000003/sig000000a5 )
  );
  LUT4 #(
    .INIT ( 16'h0187 ))
  \blk00000003/blk00000059/blk0000006b  (
    .I0(\blk00000003/sig00000055 ),
    .I1(\blk00000003/sig00000057 ),
    .I2(\blk00000003/sig00000059 ),
    .I3(\blk00000003/sig0000005b ),
    .O(\blk00000003/blk00000059/sig0000012e )
  );
  LUT4 #(
    .INIT ( 16'h0263 ))
  \blk00000003/blk00000059/blk0000006a  (
    .I0(\blk00000003/sig00000055 ),
    .I1(\blk00000003/sig00000057 ),
    .I2(\blk00000003/sig00000059 ),
    .I3(\blk00000003/sig0000005b ),
    .O(\blk00000003/blk00000059/sig00000130 )
  );
  LUT4 #(
    .INIT ( 16'h0129 ))
  \blk00000003/blk00000059/blk00000069  (
    .I0(\blk00000003/sig00000055 ),
    .I1(\blk00000003/sig00000057 ),
    .I2(\blk00000003/sig00000059 ),
    .I3(\blk00000003/sig0000005b ),
    .O(\blk00000003/blk00000059/sig0000012a )
  );
  LUT4 #(
    .INIT ( 16'h130D ))
  \blk00000003/blk00000059/blk00000068  (
    .I0(\blk00000003/sig00000055 ),
    .I1(\blk00000003/sig0000005b ),
    .I2(\blk00000003/sig00000059 ),
    .I3(\blk00000003/sig00000057 ),
    .O(\blk00000003/blk00000059/sig0000012c )
  );
  LUT4 #(
    .INIT ( 16'h3214 ))
  \blk00000003/blk00000059/blk00000067  (
    .I0(\blk00000003/sig00000059 ),
    .I1(\blk00000003/sig0000005b ),
    .I2(\blk00000003/sig00000057 ),
    .I3(\blk00000003/sig00000055 ),
    .O(\blk00000003/blk00000059/sig0000012f )
  );
  LUT4 #(
    .INIT ( 16'h0617 ))
  \blk00000003/blk00000059/blk00000066  (
    .I0(\blk00000003/sig00000055 ),
    .I1(\blk00000003/sig00000057 ),
    .I2(\blk00000003/sig0000005b ),
    .I3(\blk00000003/sig00000059 ),
    .O(\blk00000003/blk00000059/sig00000129 )
  );
  LUT4 #(
    .INIT ( 16'h1819 ))
  \blk00000003/blk00000059/blk00000065  (
    .I0(\blk00000003/sig00000057 ),
    .I1(\blk00000003/sig00000059 ),
    .I2(\blk00000003/sig0000005b ),
    .I3(\blk00000003/sig00000055 ),
    .O(\blk00000003/blk00000059/sig0000012b )
  );
  LUT4 #(
    .INIT ( 16'h2363 ))
  \blk00000003/blk00000059/blk00000064  (
    .I0(\blk00000003/sig00000059 ),
    .I1(\blk00000003/sig0000005b ),
    .I2(\blk00000003/sig00000055 ),
    .I3(\blk00000003/sig00000057 ),
    .O(\blk00000003/blk00000059/sig0000012d )
  );
  LUT3 #(
    .INIT ( 8'h57 ))
  \blk00000003/blk00000059/blk00000063  (
    .I0(\blk00000003/sig0000005b ),
    .I1(\blk00000003/sig00000057 ),
    .I2(\blk00000003/sig00000059 ),
    .O(\blk00000003/blk00000059/sig00000131 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000059/blk00000062  (
    .C(clk),
    .D(\blk00000003/blk00000059/sig00000131 ),
    .Q(\blk00000003/sig00000097 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000059/blk00000061  (
    .C(clk),
    .D(\blk00000003/blk00000059/sig00000130 ),
    .Q(\blk00000003/sig0000009d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000059/blk00000060  (
    .C(clk),
    .D(\blk00000003/blk00000059/sig0000012f ),
    .Q(\blk00000003/sig0000009e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000059/blk0000005f  (
    .C(clk),
    .D(\blk00000003/blk00000059/sig0000012e ),
    .Q(\blk00000003/sig0000009f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000059/blk0000005e  (
    .C(clk),
    .D(\blk00000003/blk00000059/sig0000012d ),
    .Q(\blk00000003/sig000000a0 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000059/blk0000005d  (
    .C(clk),
    .D(\blk00000003/blk00000059/sig0000012c ),
    .Q(\blk00000003/sig000000a1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000059/blk0000005c  (
    .C(clk),
    .D(\blk00000003/blk00000059/sig0000012b ),
    .Q(\blk00000003/sig000000a3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000059/blk0000005b  (
    .C(clk),
    .D(\blk00000003/blk00000059/sig0000012a ),
    .Q(\blk00000003/sig000000a4 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000059/blk0000005a  (
    .C(clk),
    .D(\blk00000003/blk00000059/sig00000129 ),
    .Q(\blk00000003/sig000000a6 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk00000092  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000b8 ),
    .Q(\blk00000003/blk00000072/sig0000016a ),
    .Q15(\NLW_blk00000003/blk00000072/blk00000092_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk00000091  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000b9 ),
    .Q(\blk00000003/blk00000072/sig00000169 ),
    .Q15(\NLW_blk00000003/blk00000072/blk00000091_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk00000090  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000ba ),
    .Q(\blk00000003/blk00000072/sig00000168 ),
    .Q15(\NLW_blk00000003/blk00000072/blk00000090_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk0000008f  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000bb ),
    .Q(\blk00000003/blk00000072/sig00000167 ),
    .Q15(\NLW_blk00000003/blk00000072/blk0000008f_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk0000008e  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000bc ),
    .Q(\blk00000003/blk00000072/sig00000166 ),
    .Q15(\NLW_blk00000003/blk00000072/blk0000008e_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk0000008d  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000bd ),
    .Q(\blk00000003/blk00000072/sig00000165 ),
    .Q15(\NLW_blk00000003/blk00000072/blk0000008d_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk0000008c  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000be ),
    .Q(\blk00000003/blk00000072/sig00000164 ),
    .Q15(\NLW_blk00000003/blk00000072/blk0000008c_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk0000008b  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000bf ),
    .Q(\blk00000003/blk00000072/sig00000163 ),
    .Q15(\NLW_blk00000003/blk00000072/blk0000008b_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk0000008a  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000c0 ),
    .Q(\blk00000003/blk00000072/sig00000162 ),
    .Q15(\NLW_blk00000003/blk00000072/blk0000008a_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk00000089  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000c1 ),
    .Q(\blk00000003/blk00000072/sig00000161 ),
    .Q15(\NLW_blk00000003/blk00000072/blk00000089_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk00000088  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000c2 ),
    .Q(\blk00000003/blk00000072/sig00000160 ),
    .Q15(\NLW_blk00000003/blk00000072/blk00000088_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk00000087  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000c3 ),
    .Q(\blk00000003/blk00000072/sig0000015f ),
    .Q15(\NLW_blk00000003/blk00000072/blk00000087_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk00000086  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000c4 ),
    .Q(\blk00000003/blk00000072/sig0000015e ),
    .Q15(\NLW_blk00000003/blk00000072/blk00000086_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk00000085  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000c5 ),
    .Q(\blk00000003/blk00000072/sig0000015d ),
    .Q15(\NLW_blk00000003/blk00000072/blk00000085_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk00000084  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000c6 ),
    .Q(\blk00000003/blk00000072/sig0000015c ),
    .Q15(\NLW_blk00000003/blk00000072/blk00000084_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000072/blk00000083  (
    .A0(\blk00000003/sig00000065 ),
    .A1(\blk00000003/sig00000067 ),
    .A2(\blk00000003/sig00000069 ),
    .A3(\blk00000003/sig0000006b ),
    .CE(\blk00000003/sig000000a7 ),
    .CLK(clk),
    .D(\blk00000003/sig000000c7 ),
    .Q(\blk00000003/blk00000072/sig0000015b ),
    .Q15(\NLW_blk00000003/blk00000072/blk00000083_Q15_UNCONNECTED )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk00000082  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig0000016a ),
    .Q(\blk00000003/sig000000a8 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk00000081  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig00000169 ),
    .Q(\blk00000003/sig000000a9 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk00000080  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig00000168 ),
    .Q(\blk00000003/sig000000aa )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk0000007f  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig00000167 ),
    .Q(\blk00000003/sig000000ab )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk0000007e  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig00000166 ),
    .Q(\blk00000003/sig000000ac )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk0000007d  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig00000165 ),
    .Q(\blk00000003/sig000000ad )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk0000007c  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig00000164 ),
    .Q(\blk00000003/sig000000ae )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk0000007b  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig00000163 ),
    .Q(\blk00000003/sig000000af )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk0000007a  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig00000162 ),
    .Q(\blk00000003/sig000000b0 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk00000079  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig00000161 ),
    .Q(\blk00000003/sig000000b1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk00000078  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig00000160 ),
    .Q(\blk00000003/sig000000b2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk00000077  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig0000015f ),
    .Q(\blk00000003/sig000000b3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk00000076  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig0000015e ),
    .Q(\blk00000003/sig000000b4 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk00000075  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig0000015d ),
    .Q(\blk00000003/sig000000b5 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk00000074  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig0000015c ),
    .Q(\blk00000003/sig000000b6 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072/blk00000073  (
    .C(clk),
    .D(\blk00000003/blk00000072/sig0000015b ),
    .Q(\blk00000003/sig000000b7 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
