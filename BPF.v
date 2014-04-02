////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: BPF.v
// /___/   /\     Timestamp: Tue Mar 18 22:06:41 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Xilinx/MSK_fun/ipcore_dir/tmp/_cg/BPF.ngc C:/Xilinx/MSK_fun/ipcore_dir/tmp/_cg/BPF.v 
// Device	: 5vlx50tff1136-2
// Input file	: C:/Xilinx/MSK_fun/ipcore_dir/tmp/_cg/BPF.ngc
// Output file	: C:/Xilinx/MSK_fun/ipcore_dir/tmp/_cg/BPF.v
// # of Modules	: 1
// Design Name	: BPF
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

module BPF (
  aclk, s_axis_data_tvalid, s_axis_data_tready, m_axis_data_tvalid, s_axis_data_tdata, m_axis_data_tdata
)/* synthesis syn_black_box syn_noprune=1 */;
  input aclk;
  input s_axis_data_tvalid;
  output s_axis_data_tready;
  output m_axis_data_tvalid;
  input [15 : 0] s_axis_data_tdata;
  output [23 : 0] m_axis_data_tdata;
  
  // synthesis translate_off
  
  wire NlwRenamedSig_OI_s_axis_data_tready;
  wire \blk00000001/sig0000015a ;
  wire \blk00000001/sig00000159 ;
  wire \blk00000001/sig00000158 ;
  wire \blk00000001/sig00000157 ;
  wire \blk00000001/sig00000156 ;
  wire \blk00000001/sig00000155 ;
  wire \blk00000001/sig00000154 ;
  wire \blk00000001/sig00000153 ;
  wire \blk00000001/sig00000152 ;
  wire \blk00000001/sig00000151 ;
  wire \blk00000001/sig00000150 ;
  wire \blk00000001/sig0000014f ;
  wire \blk00000001/sig0000014e ;
  wire \blk00000001/sig0000014d ;
  wire \blk00000001/sig0000014c ;
  wire \blk00000001/sig0000014b ;
  wire \blk00000001/sig0000014a ;
  wire \blk00000001/sig00000149 ;
  wire \blk00000001/sig00000148 ;
  wire \blk00000001/sig00000147 ;
  wire \blk00000001/sig00000146 ;
  wire \blk00000001/sig00000145 ;
  wire \blk00000001/sig00000144 ;
  wire \blk00000001/sig00000143 ;
  wire \blk00000001/sig00000142 ;
  wire \blk00000001/sig00000141 ;
  wire \blk00000001/sig00000140 ;
  wire \blk00000001/sig0000013f ;
  wire \blk00000001/sig0000013e ;
  wire \blk00000001/sig0000013d ;
  wire \blk00000001/sig0000013c ;
  wire \blk00000001/sig0000013b ;
  wire \blk00000001/sig0000013a ;
  wire \blk00000001/sig00000139 ;
  wire \blk00000001/sig00000138 ;
  wire \blk00000001/sig00000137 ;
  wire \blk00000001/sig00000136 ;
  wire \blk00000001/sig00000135 ;
  wire \blk00000001/sig00000134 ;
  wire \blk00000001/sig00000133 ;
  wire \blk00000001/sig00000132 ;
  wire \blk00000001/sig00000131 ;
  wire \blk00000001/sig00000130 ;
  wire \blk00000001/sig0000012f ;
  wire \blk00000001/sig0000012e ;
  wire \blk00000001/sig0000012d ;
  wire \blk00000001/sig0000012c ;
  wire \blk00000001/sig0000012b ;
  wire \blk00000001/sig0000012a ;
  wire \blk00000001/sig00000129 ;
  wire \blk00000001/sig00000128 ;
  wire \blk00000001/sig00000127 ;
  wire \blk00000001/sig00000126 ;
  wire \blk00000001/sig00000125 ;
  wire \blk00000001/sig00000124 ;
  wire \blk00000001/sig00000123 ;
  wire \blk00000001/sig00000122 ;
  wire \blk00000001/sig00000121 ;
  wire \blk00000001/sig00000120 ;
  wire \blk00000001/sig0000011f ;
  wire \blk00000001/sig0000011e ;
  wire \blk00000001/sig0000011d ;
  wire \blk00000001/sig0000011c ;
  wire \blk00000001/sig0000011b ;
  wire \blk00000001/sig0000011a ;
  wire \blk00000001/sig00000119 ;
  wire \blk00000001/sig00000118 ;
  wire \blk00000001/sig00000117 ;
  wire \blk00000001/sig00000116 ;
  wire \blk00000001/sig00000115 ;
  wire \blk00000001/sig00000114 ;
  wire \blk00000001/sig00000113 ;
  wire \blk00000001/sig00000112 ;
  wire \blk00000001/sig00000111 ;
  wire \blk00000001/sig00000110 ;
  wire \blk00000001/sig0000010f ;
  wire \blk00000001/sig0000010e ;
  wire \blk00000001/sig0000010d ;
  wire \blk00000001/sig0000010c ;
  wire \blk00000001/sig0000010b ;
  wire \blk00000001/sig0000010a ;
  wire \blk00000001/sig00000109 ;
  wire \blk00000001/sig00000108 ;
  wire \blk00000001/sig00000107 ;
  wire \blk00000001/sig00000106 ;
  wire \blk00000001/sig00000105 ;
  wire \blk00000001/sig00000104 ;
  wire \blk00000001/sig00000103 ;
  wire \blk00000001/sig00000102 ;
  wire \blk00000001/sig00000101 ;
  wire \blk00000001/sig00000100 ;
  wire \blk00000001/sig000000ff ;
  wire \blk00000001/sig000000fe ;
  wire \blk00000001/sig000000fd ;
  wire \blk00000001/sig000000fc ;
  wire \blk00000001/sig000000fb ;
  wire \blk00000001/sig000000fa ;
  wire \blk00000001/sig000000f9 ;
  wire \blk00000001/sig000000f8 ;
  wire \blk00000001/sig000000f7 ;
  wire \blk00000001/sig000000f6 ;
  wire \blk00000001/sig000000f5 ;
  wire \blk00000001/sig000000f4 ;
  wire \blk00000001/sig000000f3 ;
  wire \blk00000001/sig000000f2 ;
  wire \blk00000001/sig000000f1 ;
  wire \blk00000001/sig000000f0 ;
  wire \blk00000001/sig000000ef ;
  wire \blk00000001/sig000000ee ;
  wire \blk00000001/sig000000ed ;
  wire \blk00000001/sig000000ec ;
  wire \blk00000001/sig000000eb ;
  wire \blk00000001/sig000000ea ;
  wire \blk00000001/sig000000e9 ;
  wire \blk00000001/sig000000e8 ;
  wire \blk00000001/sig000000e7 ;
  wire \blk00000001/sig000000e6 ;
  wire \blk00000001/sig000000e5 ;
  wire \blk00000001/sig000000e4 ;
  wire \blk00000001/sig000000e3 ;
  wire \blk00000001/sig000000e2 ;
  wire \blk00000001/sig000000e1 ;
  wire \blk00000001/sig000000e0 ;
  wire \blk00000001/sig000000df ;
  wire \blk00000001/sig000000de ;
  wire \blk00000001/sig000000dd ;
  wire \blk00000001/sig000000dc ;
  wire \blk00000001/sig000000db ;
  wire \blk00000001/sig000000da ;
  wire \blk00000001/sig000000d9 ;
  wire \blk00000001/sig000000d8 ;
  wire \blk00000001/sig000000d7 ;
  wire \blk00000001/sig000000d6 ;
  wire \blk00000001/sig000000d5 ;
  wire \blk00000001/sig000000d4 ;
  wire \blk00000001/sig000000d3 ;
  wire \blk00000001/sig000000cd ;
  wire \blk00000001/sig000000cc ;
  wire \blk00000001/sig000000cb ;
  wire \blk00000001/sig000000ca ;
  wire \blk00000001/sig000000c9 ;
  wire \blk00000001/sig000000c8 ;
  wire \blk00000001/sig000000c7 ;
  wire \blk00000001/sig000000c6 ;
  wire \blk00000001/sig000000c5 ;
  wire \blk00000001/sig000000c4 ;
  wire \blk00000001/sig000000c3 ;
  wire \blk00000001/sig000000c2 ;
  wire \blk00000001/sig000000c1 ;
  wire \blk00000001/sig000000c0 ;
  wire \blk00000001/sig000000bf ;
  wire \blk00000001/sig000000be ;
  wire \blk00000001/sig000000bd ;
  wire \blk00000001/sig000000bc ;
  wire \blk00000001/sig000000bb ;
  wire \blk00000001/sig000000ba ;
  wire \blk00000001/sig000000b9 ;
  wire \blk00000001/sig000000b8 ;
  wire \blk00000001/sig000000b7 ;
  wire \blk00000001/sig000000b6 ;
  wire \blk00000001/sig000000b5 ;
  wire \blk00000001/sig000000b4 ;
  wire \blk00000001/sig000000b3 ;
  wire \blk00000001/sig000000b2 ;
  wire \blk00000001/sig000000b1 ;
  wire \blk00000001/sig000000b0 ;
  wire \blk00000001/sig000000af ;
  wire \blk00000001/sig000000ae ;
  wire \blk00000001/sig000000a4 ;
  wire \blk00000001/sig000000a3 ;
  wire \blk00000001/sig000000a2 ;
  wire \blk00000001/sig000000a1 ;
  wire \blk00000001/sig000000a0 ;
  wire \blk00000001/sig0000009f ;
  wire \blk00000001/sig0000009e ;
  wire \blk00000001/sig00000099 ;
  wire \blk00000001/sig00000098 ;
  wire \blk00000001/sig00000097 ;
  wire \blk00000001/sig00000095 ;
  wire \blk00000001/sig00000094 ;
  wire \blk00000001/sig00000092 ;
  wire \blk00000001/sig00000091 ;
  wire \blk00000001/sig00000090 ;
  wire \blk00000001/sig0000008f ;
  wire \blk00000001/sig0000008e ;
  wire \blk00000001/sig0000008d ;
  wire \blk00000001/sig0000008c ;
  wire \blk00000001/sig0000008b ;
  wire \blk00000001/sig0000008a ;
  wire \blk00000001/sig00000089 ;
  wire \blk00000001/sig00000088 ;
  wire \blk00000001/sig00000087 ;
  wire \blk00000001/sig00000086 ;
  wire \blk00000001/sig00000085 ;
  wire \blk00000001/sig00000084 ;
  wire \blk00000001/sig00000083 ;
  wire \blk00000001/sig00000082 ;
  wire \blk00000001/sig00000081 ;
  wire \blk00000001/sig00000080 ;
  wire \blk00000001/sig0000007f ;
  wire \blk00000001/sig0000007e ;
  wire \blk00000001/sig0000007d ;
  wire \blk00000001/sig0000007c ;
  wire \blk00000001/sig0000007b ;
  wire \blk00000001/sig0000007a ;
  wire \blk00000001/sig00000079 ;
  wire \blk00000001/sig00000078 ;
  wire \blk00000001/sig00000077 ;
  wire \blk00000001/sig00000076 ;
  wire \blk00000001/sig00000075 ;
  wire \blk00000001/sig00000074 ;
  wire \blk00000001/sig00000073 ;
  wire \blk00000001/sig00000072 ;
  wire \blk00000001/sig00000071 ;
  wire \blk00000001/sig00000070 ;
  wire \blk00000001/sig0000006f ;
  wire \blk00000001/sig0000006e ;
  wire \blk00000001/sig0000006d ;
  wire \blk00000001/sig0000006c ;
  wire \blk00000001/sig0000006b ;
  wire \blk00000001/sig0000006a ;
  wire \blk00000001/sig00000069 ;
  wire \blk00000001/sig00000068 ;
  wire \blk00000001/sig00000067 ;
  wire \blk00000001/sig00000066 ;
  wire \blk00000001/sig00000065 ;
  wire \blk00000001/sig00000064 ;
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  wire \blk00000001/sig00000061 ;
  wire \blk00000001/sig00000060 ;
  wire \blk00000001/sig0000005f ;
  wire \blk00000001/sig0000005e ;
  wire \blk00000001/sig0000005d ;
  wire \blk00000001/sig0000005c ;
  wire \blk00000001/sig0000005b ;
  wire \blk00000001/sig0000005a ;
  wire \blk00000001/sig00000059 ;
  wire \blk00000001/sig00000058 ;
  wire \blk00000001/sig00000057 ;
  wire \blk00000001/sig00000056 ;
  wire \blk00000001/sig00000055 ;
  wire \blk00000001/sig00000054 ;
  wire \blk00000001/sig00000053 ;
  wire \blk00000001/sig00000052 ;
  wire \blk00000001/sig00000051 ;
  wire \blk00000001/sig00000050 ;
  wire \blk00000001/sig0000004f ;
  wire \blk00000001/sig0000004e ;
  wire \blk00000001/sig0000004d ;
  wire \blk00000001/sig0000004c ;
  wire \blk00000001/sig0000004b ;
  wire \blk00000001/sig0000004a ;
  wire \blk00000001/sig00000049 ;
  wire \blk00000001/sig00000048 ;
  wire \blk00000001/sig00000047 ;
  wire \blk00000001/sig00000046 ;
  wire \blk00000001/sig00000045 ;
  wire \blk00000001/sig00000044 ;
  wire \blk00000001/sig00000043 ;
  wire \blk00000001/sig00000042 ;
  wire \blk00000001/sig00000041 ;
  wire \blk00000001/sig00000040 ;
  wire \blk00000001/sig0000003f ;
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \blk00000001/sig00000036 ;
  wire \blk00000001/sig00000035 ;
  wire \blk00000001/sig00000034 ;
  wire \blk00000001/sig00000033 ;
  wire \blk00000001/sig00000032 ;
  wire \blk00000001/sig00000031 ;
  wire \blk00000001/sig00000030 ;
  wire \blk00000001/sig0000002f ;
  wire \blk00000001/sig0000002e ;
  wire \blk00000001/sig0000002d ;
  wire \blk00000001/blk00000040/sig000001a7 ;
  wire \blk00000001/blk00000040/sig000001a6 ;
  wire \blk00000001/blk00000040/sig000001a5 ;
  wire \blk00000001/blk00000040/sig000001a4 ;
  wire \blk00000001/blk00000040/sig000001a3 ;
  wire \blk00000001/blk00000040/sig000001a2 ;
  wire \blk00000001/blk00000040/sig000001a1 ;
  wire \blk00000001/blk00000040/sig000001a0 ;
  wire \blk00000001/blk00000040/sig0000019f ;
  wire \blk00000001/blk00000040/sig0000019e ;
  wire \blk00000001/blk00000040/sig0000019d ;
  wire \blk00000001/blk00000040/sig0000019c ;
  wire \blk00000001/blk00000040/sig0000019b ;
  wire \blk00000001/blk00000040/sig0000019a ;
  wire \blk00000001/blk00000040/sig00000199 ;
  wire \blk00000001/blk00000040/sig00000198 ;
  wire \blk00000001/blk00000040/sig00000197 ;
  wire \blk00000001/blk00000040/sig00000196 ;
  wire \blk00000001/blk00000040/sig00000195 ;
  wire \blk00000001/blk00000040/sig00000194 ;
  wire \blk00000001/blk00000040/sig00000193 ;
  wire \blk00000001/blk00000040/sig00000192 ;
  wire \blk00000001/blk00000040/sig00000191 ;
  wire \blk00000001/blk00000040/sig00000190 ;
  wire \blk00000001/blk00000040/sig0000018f ;
  wire \blk00000001/blk00000040/sig0000018e ;
  wire \blk00000001/blk00000040/sig0000018d ;
  wire \blk00000001/blk00000040/sig0000018c ;
  wire \blk00000001/blk00000040/sig0000018b ;
  wire \blk00000001/blk00000040/sig0000018a ;
  wire \blk00000001/blk00000040/sig00000189 ;
  wire \blk00000001/blk00000040/sig00000188 ;
  wire \blk00000001/blk00000040/sig00000187 ;
  wire \blk00000001/blk00000040/sig00000186 ;
  wire \blk00000001/blk00000040/sig00000174 ;
  wire \blk00000001/blk00000040/sig00000173 ;
  wire \blk00000001/blk00000040/sig00000172 ;
  wire \blk00000001/blk00000040/sig00000171 ;
  wire \blk00000001/blk00000040/sig00000170 ;
  wire \blk00000001/blk0000007d/sig000001df ;
  wire \blk00000001/blk0000007d/sig000001de ;
  wire \blk00000001/blk0000007d/sig000001dd ;
  wire \blk00000001/blk0000007d/sig000001dc ;
  wire \blk00000001/blk0000007d/sig000001db ;
  wire \blk00000001/blk0000007d/sig000001da ;
  wire \blk00000001/blk0000007d/sig000001d9 ;
  wire \blk00000001/blk0000007d/sig000001d8 ;
  wire \blk00000001/blk0000007d/sig000001d7 ;
  wire \blk00000001/blk0000007d/sig000001d6 ;
  wire \blk00000001/blk0000007d/sig000001d5 ;
  wire \blk00000001/blk0000007d/sig000001d4 ;
  wire \blk00000001/blk0000007d/sig000001d3 ;
  wire \blk00000001/blk0000007d/sig000001d2 ;
  wire \blk00000001/blk0000007d/sig000001d1 ;
  wire \blk00000001/blk0000007d/sig000001d0 ;
  wire \blk00000001/blk0000007d/sig000001cf ;
  wire \blk00000001/blk0000009f/sig00000217 ;
  wire \blk00000001/blk0000009f/sig00000216 ;
  wire \blk00000001/blk0000009f/sig00000215 ;
  wire \blk00000001/blk0000009f/sig00000214 ;
  wire \blk00000001/blk0000009f/sig00000213 ;
  wire \blk00000001/blk0000009f/sig00000212 ;
  wire \blk00000001/blk0000009f/sig00000211 ;
  wire \blk00000001/blk0000009f/sig00000210 ;
  wire \blk00000001/blk0000009f/sig0000020f ;
  wire \blk00000001/blk0000009f/sig0000020e ;
  wire \blk00000001/blk0000009f/sig0000020d ;
  wire \blk00000001/blk0000009f/sig0000020c ;
  wire \blk00000001/blk0000009f/sig0000020b ;
  wire \blk00000001/blk0000009f/sig0000020a ;
  wire \blk00000001/blk0000009f/sig00000209 ;
  wire \blk00000001/blk0000009f/sig00000208 ;
  wire \blk00000001/blk0000009f/sig00000207 ;
  wire \blk00000001/blk000000c1/sig0000022b ;
  wire \blk00000001/blk000000c1/sig0000022a ;
  wire \blk00000001/blk000000c1/sig00000229 ;
  wire \blk00000001/blk000000c1/sig00000228 ;
  wire \blk00000001/blk000000c1/sig00000227 ;
  wire \blk00000001/blk000000c1/sig00000226 ;
  wire \blk00000001/blk000000c1/sig00000225 ;
  wire \blk00000001/blk000000d0/sig0000023e ;
  wire \blk00000001/blk000000d0/sig0000023d ;
  wire \blk00000001/blk000000d0/sig0000023c ;
  wire \blk00000001/blk000000d0/sig0000023a ;
  wire \blk00000001/blk000000d0/sig00000239 ;
  wire \blk00000001/blk000000d0/sig00000238 ;
  wire \NLW_blk00000001/blk00000173_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000171_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000016f_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000016d_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000016b_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000169_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000167_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000165_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000163_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000161_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000015f_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000015d_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000015b_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000159_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000157_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000155_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000153_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000151_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000014f_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000014d_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000014b_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000149_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000147_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000f6_Q_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_OVERFLOW_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_UNDERFLOW_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_PCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<47>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<46>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<45>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<44>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<43>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<42>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<41>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<40>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<39>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<38>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<37>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<36>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<35>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<31>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<30>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_P<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000d1_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk00000067_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk00000066_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk00000065_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk00000064_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk00000063_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk00000062_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk00000061_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk00000060_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk0000005f_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk0000005e_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk0000005d_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk0000005c_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk0000005b_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk0000005a_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk00000059_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000040/blk00000058_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk0000009e_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk0000009d_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk0000009c_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk0000009b_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk0000009a_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk00000099_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk00000098_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk00000097_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk00000096_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk00000095_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk00000094_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk00000093_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk00000092_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk00000091_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk00000090_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d/blk0000008f_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000c0_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000bf_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000be_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000bd_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000bc_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000bb_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000ba_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000b9_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000b8_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000b7_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000b6_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000b5_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000b4_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000b3_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000b2_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000009f/blk000000b1_Q15_UNCONNECTED ;
  wire [23 : 0] NlwRenamedSig_OI_m_axis_data_tdata;
  assign
    m_axis_data_tdata[23] = NlwRenamedSig_OI_m_axis_data_tdata[23],
    m_axis_data_tdata[22] = NlwRenamedSig_OI_m_axis_data_tdata[22],
    m_axis_data_tdata[21] = NlwRenamedSig_OI_m_axis_data_tdata[21],
    m_axis_data_tdata[20] = NlwRenamedSig_OI_m_axis_data_tdata[20],
    m_axis_data_tdata[19] = NlwRenamedSig_OI_m_axis_data_tdata[19],
    m_axis_data_tdata[18] = NlwRenamedSig_OI_m_axis_data_tdata[18],
    m_axis_data_tdata[17] = NlwRenamedSig_OI_m_axis_data_tdata[17],
    m_axis_data_tdata[16] = NlwRenamedSig_OI_m_axis_data_tdata[16],
    m_axis_data_tdata[15] = NlwRenamedSig_OI_m_axis_data_tdata[15],
    m_axis_data_tdata[14] = NlwRenamedSig_OI_m_axis_data_tdata[14],
    m_axis_data_tdata[13] = NlwRenamedSig_OI_m_axis_data_tdata[13],
    m_axis_data_tdata[12] = NlwRenamedSig_OI_m_axis_data_tdata[12],
    m_axis_data_tdata[11] = NlwRenamedSig_OI_m_axis_data_tdata[11],
    m_axis_data_tdata[10] = NlwRenamedSig_OI_m_axis_data_tdata[10],
    m_axis_data_tdata[9] = NlwRenamedSig_OI_m_axis_data_tdata[9],
    m_axis_data_tdata[8] = NlwRenamedSig_OI_m_axis_data_tdata[8],
    m_axis_data_tdata[7] = NlwRenamedSig_OI_m_axis_data_tdata[7],
    m_axis_data_tdata[6] = NlwRenamedSig_OI_m_axis_data_tdata[6],
    m_axis_data_tdata[5] = NlwRenamedSig_OI_m_axis_data_tdata[5],
    m_axis_data_tdata[4] = NlwRenamedSig_OI_m_axis_data_tdata[4],
    m_axis_data_tdata[3] = NlwRenamedSig_OI_m_axis_data_tdata[3],
    m_axis_data_tdata[2] = NlwRenamedSig_OI_m_axis_data_tdata[2],
    m_axis_data_tdata[1] = NlwRenamedSig_OI_m_axis_data_tdata[1],
    m_axis_data_tdata[0] = NlwRenamedSig_OI_m_axis_data_tdata[0],
    s_axis_data_tready = NlwRenamedSig_OI_s_axis_data_tready;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000174  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig0000015a ),
    .Q(\blk00000001/sig00000068 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000173  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig00000142 ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000142 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000067 ),
    .Q(\blk00000001/sig0000015a ),
    .Q15(\NLW_blk00000001/blk00000173_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000172  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000159 ),
    .Q(\blk00000001/sig0000006a )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000171  (
    .A0(\blk00000001/sig00000142 ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000142 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000095 ),
    .Q(\blk00000001/sig00000159 ),
    .Q15(\NLW_blk00000001/blk00000171_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000170  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig00000158 ),
    .Q(\blk00000001/sig00000083 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000016f  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000be ),
    .Q(\blk00000001/sig00000158 ),
    .Q15(\NLW_blk00000001/blk0000016f_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000016e  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig00000157 ),
    .Q(\blk00000001/sig00000084 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000016d  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000bf ),
    .Q(\blk00000001/sig00000157 ),
    .Q15(\NLW_blk00000001/blk0000016d_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000016c  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000156 ),
    .Q(\blk00000001/sig00000069 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000016b  (
    .A0(\blk00000001/sig00000142 ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000142 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000065 ),
    .Q(\blk00000001/sig00000156 ),
    .Q15(\NLW_blk00000001/blk0000016b_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000016a  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig00000155 ),
    .Q(\blk00000001/sig00000086 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000169  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000c1 ),
    .Q(\blk00000001/sig00000155 ),
    .Q15(\NLW_blk00000001/blk00000169_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000168  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig00000154 ),
    .Q(\blk00000001/sig00000087 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000167  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000c2 ),
    .Q(\blk00000001/sig00000154 ),
    .Q15(\NLW_blk00000001/blk00000167_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000166  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig00000153 ),
    .Q(\blk00000001/sig00000085 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000165  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000c0 ),
    .Q(\blk00000001/sig00000153 ),
    .Q15(\NLW_blk00000001/blk00000165_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000164  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig00000152 ),
    .Q(\blk00000001/sig00000089 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000163  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000c4 ),
    .Q(\blk00000001/sig00000152 ),
    .Q15(\NLW_blk00000001/blk00000163_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000162  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig00000151 ),
    .Q(\blk00000001/sig0000008a )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000161  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000c5 ),
    .Q(\blk00000001/sig00000151 ),
    .Q15(\NLW_blk00000001/blk00000161_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000160  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig00000150 ),
    .Q(\blk00000001/sig00000088 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000015f  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000c3 ),
    .Q(\blk00000001/sig00000150 ),
    .Q15(\NLW_blk00000001/blk0000015f_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000015e  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig0000014f ),
    .Q(\blk00000001/sig0000008c )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000015d  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000c7 ),
    .Q(\blk00000001/sig0000014f ),
    .Q15(\NLW_blk00000001/blk0000015d_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000015c  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig0000014e ),
    .Q(\blk00000001/sig0000008d )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000015b  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000c8 ),
    .Q(\blk00000001/sig0000014e ),
    .Q15(\NLW_blk00000001/blk0000015b_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000015a  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig0000014d ),
    .Q(\blk00000001/sig0000008b )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000159  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000c6 ),
    .Q(\blk00000001/sig0000014d ),
    .Q15(\NLW_blk00000001/blk00000159_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000158  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig0000014c ),
    .Q(\blk00000001/sig0000008f )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000157  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000ca ),
    .Q(\blk00000001/sig0000014c ),
    .Q15(\NLW_blk00000001/blk00000157_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000156  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig0000014b ),
    .Q(\blk00000001/sig00000090 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000155  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000cb ),
    .Q(\blk00000001/sig0000014b ),
    .Q15(\NLW_blk00000001/blk00000155_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000154  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig0000014a ),
    .Q(\blk00000001/sig0000008e )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000153  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000c9 ),
    .Q(\blk00000001/sig0000014a ),
    .Q15(\NLW_blk00000001/blk00000153_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000152  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig00000149 ),
    .Q(\blk00000001/sig00000092 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000151  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000cd ),
    .Q(\blk00000001/sig00000149 ),
    .Q15(\NLW_blk00000001/blk00000151_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000150  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000148 ),
    .Q(\blk00000001/sig000000d3 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000014f  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000142 ),
    .CLK(aclk),
    .D(\blk00000001/sig0000004b ),
    .Q(\blk00000001/sig00000148 ),
    .Q15(\NLW_blk00000001/blk0000014f_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000014e  (
    .C(aclk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig00000147 ),
    .Q(\blk00000001/sig00000091 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000014d  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000cc ),
    .Q(\blk00000001/sig00000147 ),
    .Q15(\NLW_blk00000001/blk0000014d_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000014c  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000146 ),
    .Q(\blk00000001/sig000000d5 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000014b  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000142 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000049 ),
    .Q(\blk00000001/sig00000146 ),
    .Q15(\NLW_blk00000001/blk0000014b_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000014a  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000145 ),
    .Q(\blk00000001/sig000000d6 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000149  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000142 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000048 ),
    .Q(\blk00000001/sig00000145 ),
    .Q15(\NLW_blk00000001/blk00000149_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000148  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000144 ),
    .Q(\blk00000001/sig000000d4 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000147  (
    .A0(\blk00000001/sig0000002d ),
    .A1(\blk00000001/sig0000002d ),
    .A2(\blk00000001/sig0000002d ),
    .A3(\blk00000001/sig0000002d ),
    .CE(\blk00000001/sig00000142 ),
    .CLK(aclk),
    .D(\blk00000001/sig0000004a ),
    .Q(\blk00000001/sig00000144 ),
    .Q15(\NLW_blk00000001/blk00000147_Q15_UNCONNECTED )
  );
  INV   \blk00000001/blk00000146  (
    .I(\blk00000001/sig00000063 ),
    .O(\blk00000001/sig00000062 )
  );
  INV   \blk00000001/blk00000145  (
    .I(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig00000060 )
  );
  INV   \blk00000001/blk00000144  (
    .I(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig0000005d )
  );
  INV   \blk00000001/blk00000143  (
    .I(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000059 )
  );
  INV   \blk00000001/blk00000142  (
    .I(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig00000055 )
  );
  LUT4 #(
    .INIT ( 16'hF444 ))
  \blk00000001/blk00000141  (
    .I0(\blk00000001/sig00000067 ),
    .I1(\blk00000001/sig00000065 ),
    .I2(\blk00000001/sig000000e7 ),
    .I3(\blk00000001/sig00000047 ),
    .O(\blk00000001/sig00000143 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000140  (
    .C(aclk),
    .D(\blk00000001/sig000000ea ),
    .Q(NlwRenamedSig_OI_s_axis_data_tready)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000013f  (
    .C(aclk),
    .D(\blk00000001/sig00000143 ),
    .Q(\blk00000001/sig00000065 )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk0000013e  (
    .I0(\blk00000001/sig000000c0 ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000b0 ),
    .O(\blk00000001/sig0000012d )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk0000013d  (
    .I0(\blk00000001/sig000000be ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000ae ),
    .O(\blk00000001/sig0000012f )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk0000013c  (
    .I0(\blk00000001/sig000000bf ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000af ),
    .O(\blk00000001/sig0000012e )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk0000013b  (
    .I0(\blk00000001/sig000000c1 ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000b1 ),
    .O(\blk00000001/sig0000012c )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk0000013a  (
    .I0(\blk00000001/sig000000c2 ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000b2 ),
    .O(\blk00000001/sig0000012b )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk00000139  (
    .I0(\blk00000001/sig000000c3 ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000b3 ),
    .O(\blk00000001/sig0000012a )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk00000138  (
    .I0(\blk00000001/sig000000c4 ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000b4 ),
    .O(\blk00000001/sig00000129 )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk00000137  (
    .I0(\blk00000001/sig000000c7 ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig00000126 )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk00000136  (
    .I0(\blk00000001/sig000000c5 ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000b5 ),
    .O(\blk00000001/sig00000128 )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk00000135  (
    .I0(\blk00000001/sig000000c6 ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000b6 ),
    .O(\blk00000001/sig00000127 )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk00000134  (
    .I0(\blk00000001/sig000000c8 ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000b8 ),
    .O(\blk00000001/sig00000125 )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk00000133  (
    .I0(\blk00000001/sig000000c9 ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000b9 ),
    .O(\blk00000001/sig00000124 )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk00000132  (
    .I0(\blk00000001/sig000000ca ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000ba ),
    .O(\blk00000001/sig00000123 )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk00000131  (
    .I0(\blk00000001/sig000000cb ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000bb ),
    .O(\blk00000001/sig00000122 )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk00000130  (
    .I0(\blk00000001/sig000000cd ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000bd ),
    .O(\blk00000001/sig0000011f )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk0000012f  (
    .I0(\blk00000001/sig000000cc ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000bc ),
    .O(\blk00000001/sig00000121 )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \blk00000001/blk0000012e  (
    .I0(\blk00000001/sig000000cd ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig000000bd ),
    .O(\blk00000001/sig00000120 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000012d  (
    .I0(NlwRenamedSig_OI_s_axis_data_tready),
    .I1(s_axis_data_tvalid),
    .O(\blk00000001/sig000000e8 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000012c  (
    .I0(\blk00000001/sig00000065 ),
    .I1(\blk00000001/sig00000067 ),
    .O(\blk00000001/sig0000005f )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000012b  (
    .I0(\blk00000001/sig00000065 ),
    .I1(\blk00000001/sig00000095 ),
    .O(\blk00000001/sig0000005e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000012a  (
    .I0(\blk00000001/sig0000004f ),
    .I1(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig0000005c )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk00000129  (
    .I0(\blk00000001/sig00000097 ),
    .I1(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000058 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000128  (
    .I0(\blk00000001/sig0000004a ),
    .I1(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig00000054 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000127  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig0000006b ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[0]),
    .O(\blk00000001/sig00000045 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000126  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig0000006c ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[1]),
    .O(\blk00000001/sig00000044 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000125  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig0000006d ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[2]),
    .O(\blk00000001/sig00000043 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000124  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig0000006e ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[3]),
    .O(\blk00000001/sig00000042 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000123  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig0000006f ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[4]),
    .O(\blk00000001/sig00000041 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000122  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000070 ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[5]),
    .O(\blk00000001/sig00000040 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000121  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000071 ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[6]),
    .O(\blk00000001/sig0000003f )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000120  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000072 ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[7]),
    .O(\blk00000001/sig0000003e )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk0000011f  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000073 ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[8]),
    .O(\blk00000001/sig0000003d )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk0000011e  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000074 ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[9]),
    .O(\blk00000001/sig0000003c )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk0000011d  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000075 ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[10]),
    .O(\blk00000001/sig0000003b )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk0000011c  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000076 ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[11]),
    .O(\blk00000001/sig0000003a )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk0000011b  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000077 ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[12]),
    .O(\blk00000001/sig00000039 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk0000011a  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000078 ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[13]),
    .O(\blk00000001/sig00000038 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000119  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000079 ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[14]),
    .O(\blk00000001/sig00000037 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000118  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig0000007a ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[15]),
    .O(\blk00000001/sig00000036 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000117  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig0000007b ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[16]),
    .O(\blk00000001/sig00000035 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000116  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig0000007c ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[17]),
    .O(\blk00000001/sig00000034 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000115  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig0000007d ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[18]),
    .O(\blk00000001/sig00000033 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000114  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig0000007e ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[19]),
    .O(\blk00000001/sig00000032 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000113  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig0000007f ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[20]),
    .O(\blk00000001/sig00000031 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000112  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000080 ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[21]),
    .O(\blk00000001/sig00000030 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000111  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000081 ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[22]),
    .O(\blk00000001/sig0000002f )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000001/blk00000110  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000082 ),
    .I2(NlwRenamedSig_OI_m_axis_data_tdata[23]),
    .O(\blk00000001/sig0000002e )
  );
  LUT6 #(
    .INIT ( 64'h2222227222222222 ))
  \blk00000001/blk0000010f  (
    .I0(\blk00000001/sig00000047 ),
    .I1(\blk00000001/sig000000e7 ),
    .I2(\blk00000001/sig0000004b ),
    .I3(\blk00000001/sig0000004a ),
    .I4(\blk00000001/sig00000049 ),
    .I5(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig00000046 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000010e  (
    .I0(\blk00000001/sig00000047 ),
    .I1(\blk00000001/sig000000e7 ),
    .O(\blk00000001/sig00000061 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \blk00000001/blk0000010d  (
    .I0(\blk00000001/sig0000004b ),
    .I1(\blk00000001/sig0000004a ),
    .I2(\blk00000001/sig00000049 ),
    .I3(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig00000051 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \blk00000001/blk0000010c  (
    .I0(\blk00000001/sig0000004e ),
    .I1(\blk00000001/sig0000004d ),
    .I2(\blk00000001/sig00000050 ),
    .I3(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig0000005a )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \blk00000001/blk0000010b  (
    .I0(\blk00000001/sig0000004e ),
    .I1(\blk00000001/sig00000050 ),
    .I2(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig0000005b )
  );
  LUT4 #(
    .INIT ( 16'hCCC9 ))
  \blk00000001/blk0000010a  (
    .I0(\blk00000001/sig00000098 ),
    .I1(\blk00000001/sig00000099 ),
    .I2(\blk00000001/sig0000004c ),
    .I3(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig00000056 )
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \blk00000001/blk00000109  (
    .I0(\blk00000001/sig00000098 ),
    .I1(\blk00000001/sig0000004c ),
    .I2(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig00000057 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \blk00000001/blk00000108  (
    .I0(\blk00000001/sig00000049 ),
    .I1(\blk00000001/sig00000048 ),
    .I2(\blk00000001/sig0000004b ),
    .I3(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig00000052 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \blk00000001/blk00000107  (
    .I0(\blk00000001/sig00000049 ),
    .I1(\blk00000001/sig0000004b ),
    .I2(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig00000053 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000106  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig0000010d ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig000000fc )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000105  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig0000011e ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig000000fd )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000104  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig0000011d ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig000000fe )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000103  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig0000011c ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig000000ff )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000102  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig0000011b ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000100 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000101  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig0000011a ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000101 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000100  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000119 ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000102 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ff  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000118 ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000103 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000fe  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000117 ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000104 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000fd  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000116 ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000105 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000fc  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000115 ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000106 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000fb  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000114 ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000107 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000fa  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000113 ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000108 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000f9  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000112 ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000109 )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000f8  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000111 ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig0000010a )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000f7  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000110 ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig0000010b )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000f6  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000130 ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\NLW_blk00000001/blk000000f6_Q_UNCONNECTED )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000f5  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig0000010f ),
    .R(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig0000010c )
  );
  MUXCY_L   \blk00000001/blk000000f4  (
    .CI(\blk00000001/sig0000010e ),
    .DI(\blk00000001/sig000000be ),
    .S(\blk00000001/sig0000012f ),
    .LO(\blk00000001/sig00000140 )
  );
  MUXCY_L   \blk00000001/blk000000f3  (
    .CI(\blk00000001/sig00000140 ),
    .DI(\blk00000001/sig000000bf ),
    .S(\blk00000001/sig0000012e ),
    .LO(\blk00000001/sig0000013f )
  );
  MUXCY_L   \blk00000001/blk000000f2  (
    .CI(\blk00000001/sig0000013f ),
    .DI(\blk00000001/sig000000c0 ),
    .S(\blk00000001/sig0000012d ),
    .LO(\blk00000001/sig0000013e )
  );
  MUXCY_L   \blk00000001/blk000000f1  (
    .CI(\blk00000001/sig0000013e ),
    .DI(\blk00000001/sig000000c1 ),
    .S(\blk00000001/sig0000012c ),
    .LO(\blk00000001/sig0000013d )
  );
  MUXCY_L   \blk00000001/blk000000f0  (
    .CI(\blk00000001/sig0000013d ),
    .DI(\blk00000001/sig000000c2 ),
    .S(\blk00000001/sig0000012b ),
    .LO(\blk00000001/sig0000013c )
  );
  MUXCY_L   \blk00000001/blk000000ef  (
    .CI(\blk00000001/sig0000013c ),
    .DI(\blk00000001/sig000000c3 ),
    .S(\blk00000001/sig0000012a ),
    .LO(\blk00000001/sig0000013b )
  );
  MUXCY_L   \blk00000001/blk000000ee  (
    .CI(\blk00000001/sig0000013b ),
    .DI(\blk00000001/sig000000c4 ),
    .S(\blk00000001/sig00000129 ),
    .LO(\blk00000001/sig0000013a )
  );
  MUXCY_L   \blk00000001/blk000000ed  (
    .CI(\blk00000001/sig0000013a ),
    .DI(\blk00000001/sig000000c5 ),
    .S(\blk00000001/sig00000128 ),
    .LO(\blk00000001/sig00000139 )
  );
  MUXCY_L   \blk00000001/blk000000ec  (
    .CI(\blk00000001/sig00000139 ),
    .DI(\blk00000001/sig000000c6 ),
    .S(\blk00000001/sig00000127 ),
    .LO(\blk00000001/sig00000138 )
  );
  MUXCY_L   \blk00000001/blk000000eb  (
    .CI(\blk00000001/sig00000138 ),
    .DI(\blk00000001/sig000000c7 ),
    .S(\blk00000001/sig00000126 ),
    .LO(\blk00000001/sig00000137 )
  );
  MUXCY_L   \blk00000001/blk000000ea  (
    .CI(\blk00000001/sig00000137 ),
    .DI(\blk00000001/sig000000c8 ),
    .S(\blk00000001/sig00000125 ),
    .LO(\blk00000001/sig00000136 )
  );
  MUXCY_L   \blk00000001/blk000000e9  (
    .CI(\blk00000001/sig00000136 ),
    .DI(\blk00000001/sig000000c9 ),
    .S(\blk00000001/sig00000124 ),
    .LO(\blk00000001/sig00000135 )
  );
  MUXCY_L   \blk00000001/blk000000e8  (
    .CI(\blk00000001/sig00000135 ),
    .DI(\blk00000001/sig000000ca ),
    .S(\blk00000001/sig00000123 ),
    .LO(\blk00000001/sig00000134 )
  );
  MUXCY_L   \blk00000001/blk000000e7  (
    .CI(\blk00000001/sig00000134 ),
    .DI(\blk00000001/sig000000cb ),
    .S(\blk00000001/sig00000122 ),
    .LO(\blk00000001/sig00000133 )
  );
  MUXCY_L   \blk00000001/blk000000e6  (
    .CI(\blk00000001/sig00000133 ),
    .DI(\blk00000001/sig000000cc ),
    .S(\blk00000001/sig00000121 ),
    .LO(\blk00000001/sig00000132 )
  );
  MUXCY_L   \blk00000001/blk000000e5  (
    .CI(\blk00000001/sig00000132 ),
    .DI(\blk00000001/sig000000cd ),
    .S(\blk00000001/sig00000120 ),
    .LO(\blk00000001/sig00000131 )
  );
  MUXCY   \blk00000001/blk000000e4  (
    .CI(\blk00000001/sig00000131 ),
    .DI(\blk00000001/sig000000cd ),
    .S(\blk00000001/sig0000011f ),
    .O(\blk00000001/sig00000130 )
  );
  XORCY   \blk00000001/blk000000e3  (
    .CI(\blk00000001/sig00000140 ),
    .LI(\blk00000001/sig0000012e ),
    .O(\blk00000001/sig0000011e )
  );
  XORCY   \blk00000001/blk000000e2  (
    .CI(\blk00000001/sig0000013f ),
    .LI(\blk00000001/sig0000012d ),
    .O(\blk00000001/sig0000011d )
  );
  XORCY   \blk00000001/blk000000e1  (
    .CI(\blk00000001/sig0000013e ),
    .LI(\blk00000001/sig0000012c ),
    .O(\blk00000001/sig0000011c )
  );
  XORCY   \blk00000001/blk000000e0  (
    .CI(\blk00000001/sig0000013d ),
    .LI(\blk00000001/sig0000012b ),
    .O(\blk00000001/sig0000011b )
  );
  XORCY   \blk00000001/blk000000df  (
    .CI(\blk00000001/sig0000013c ),
    .LI(\blk00000001/sig0000012a ),
    .O(\blk00000001/sig0000011a )
  );
  XORCY   \blk00000001/blk000000de  (
    .CI(\blk00000001/sig0000013b ),
    .LI(\blk00000001/sig00000129 ),
    .O(\blk00000001/sig00000119 )
  );
  XORCY   \blk00000001/blk000000dd  (
    .CI(\blk00000001/sig0000013a ),
    .LI(\blk00000001/sig00000128 ),
    .O(\blk00000001/sig00000118 )
  );
  XORCY   \blk00000001/blk000000dc  (
    .CI(\blk00000001/sig00000139 ),
    .LI(\blk00000001/sig00000127 ),
    .O(\blk00000001/sig00000117 )
  );
  XORCY   \blk00000001/blk000000db  (
    .CI(\blk00000001/sig00000138 ),
    .LI(\blk00000001/sig00000126 ),
    .O(\blk00000001/sig00000116 )
  );
  XORCY   \blk00000001/blk000000da  (
    .CI(\blk00000001/sig00000137 ),
    .LI(\blk00000001/sig00000125 ),
    .O(\blk00000001/sig00000115 )
  );
  XORCY   \blk00000001/blk000000d9  (
    .CI(\blk00000001/sig00000136 ),
    .LI(\blk00000001/sig00000124 ),
    .O(\blk00000001/sig00000114 )
  );
  XORCY   \blk00000001/blk000000d8  (
    .CI(\blk00000001/sig00000135 ),
    .LI(\blk00000001/sig00000123 ),
    .O(\blk00000001/sig00000113 )
  );
  XORCY   \blk00000001/blk000000d7  (
    .CI(\blk00000001/sig00000134 ),
    .LI(\blk00000001/sig00000122 ),
    .O(\blk00000001/sig00000112 )
  );
  XORCY   \blk00000001/blk000000d6  (
    .CI(\blk00000001/sig00000133 ),
    .LI(\blk00000001/sig00000121 ),
    .O(\blk00000001/sig00000111 )
  );
  XORCY   \blk00000001/blk000000d5  (
    .CI(\blk00000001/sig00000132 ),
    .LI(\blk00000001/sig00000120 ),
    .O(\blk00000001/sig00000110 )
  );
  XORCY   \blk00000001/blk000000d4  (
    .CI(\blk00000001/sig00000131 ),
    .LI(\blk00000001/sig0000011f ),
    .O(\blk00000001/sig0000010f )
  );
  MUXCY_L   \blk00000001/blk000000d3  (
    .CI(\blk00000001/sig00000142 ),
    .DI(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000002d ),
    .LO(\blk00000001/sig0000010e )
  );
  XORCY   \blk00000001/blk000000d2  (
    .CI(\blk00000001/sig0000010e ),
    .LI(\blk00000001/sig0000012f ),
    .O(\blk00000001/sig0000010d )
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
    .MASK ( 48'hFFFFFFFFFFFF ),
    .MREG ( 1 ),
    .MULTCARRYINREG ( 1 ),
    .OPMODEREG ( 1 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .SIM_MODE ( "SAFE" ),
    .USE_MULT ( "MULT_S" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ))
  \blk00000001/blk000000d1  (
    .CARRYIN(\blk00000001/sig0000002d ),
    .CEA1(\blk00000001/sig0000002d ),
    .CEA2(\blk00000001/sig00000142 ),
    .CEB1(\blk00000001/sig0000002d ),
    .CEB2(\blk00000001/sig00000142 ),
    .CEC(\blk00000001/sig00000142 ),
    .CECTRL(\blk00000001/sig00000142 ),
    .CEP(\blk00000001/sig00000142 ),
    .CEM(\blk00000001/sig00000142 ),
    .CECARRYIN(\blk00000001/sig00000142 ),
    .CEMULTCARRYIN(\blk00000001/sig00000142 ),
    .CLK(aclk),
    .RSTA(\blk00000001/sig0000002d ),
    .RSTB(\blk00000001/sig0000002d ),
    .RSTC(\blk00000001/sig0000002d ),
    .RSTCTRL(\blk00000001/sig0000002d ),
    .RSTP(\blk00000001/sig0000002d ),
    .RSTM(\blk00000001/sig0000002d ),
    .RSTALLCARRYIN(\blk00000001/sig0000002d ),
    .CEALUMODE(\blk00000001/sig00000142 ),
    .RSTALUMODE(\blk00000001/sig0000002d ),
    .PATTERNBDETECT(\NLW_blk00000001/blk000000d1_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_blk00000001/blk000000d1_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_blk00000001/blk000000d1_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_blk00000001/blk000000d1_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\blk00000001/sig0000002d ),
    .CARRYCASCOUT(\NLW_blk00000001/blk000000d1_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\blk00000001/sig0000002d ),
    .MULTSIGNOUT(\NLW_blk00000001/blk000000d1_MULTSIGNOUT_UNCONNECTED ),
    .A({\blk00000001/sig0000010c , \blk00000001/sig0000010c , \blk00000001/sig0000010c , \blk00000001/sig0000010c , \blk00000001/sig0000010c , 
\blk00000001/sig0000010c , \blk00000001/sig0000010c , \blk00000001/sig0000010c , \blk00000001/sig0000010c , \blk00000001/sig0000010c , 
\blk00000001/sig0000010c , \blk00000001/sig0000010c , \blk00000001/sig0000010c , \blk00000001/sig0000010c , \blk00000001/sig0000010b , 
\blk00000001/sig0000010a , \blk00000001/sig00000109 , \blk00000001/sig00000108 , \blk00000001/sig00000107 , \blk00000001/sig00000106 , 
\blk00000001/sig00000105 , \blk00000001/sig00000104 , \blk00000001/sig00000103 , \blk00000001/sig00000102 , \blk00000001/sig00000101 , 
\blk00000001/sig00000100 , \blk00000001/sig000000ff , \blk00000001/sig000000fe , \blk00000001/sig000000fd , \blk00000001/sig000000fc }),
    .PCIN({\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d }),
    .B({\blk00000001/sig000000a2 , \blk00000001/sig000000a2 , \blk00000001/sig000000a2 , \blk00000001/sig000000a2 , \blk00000001/sig000000a2 , 
\blk00000001/sig000000a2 , \blk00000001/sig000000a2 , \blk00000001/sig000000a2 , \blk00000001/sig000000a2 , \blk00000001/sig000000a2 , 
\blk00000001/sig000000a2 , \blk00000001/sig000000a4 , \blk00000001/sig000000a3 , \blk00000001/sig000000a2 , \blk00000001/sig000000a1 , 
\blk00000001/sig000000a0 , \blk00000001/sig0000009f , \blk00000001/sig0000009e }),
    .C({\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d }),
    .CARRYINSEL({\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d }),
    .OPMODE({\blk00000001/sig0000002d , \blk00000001/sig00000064 , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig00000062 , 
\blk00000001/sig00000063 , \blk00000001/sig00000062 }),
    .BCIN({\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d }),
    .ALUMODE({\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d }),
    .PCOUT({\NLW_blk00000001/blk000000d1_PCOUT<47>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<46>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<45>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<44>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<43>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<42>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<41>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<40>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<39>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<38>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<37>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<36>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<35>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<34>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<33>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<32>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<31>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<30>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<29>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<28>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<27>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<26>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<25>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<24>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<23>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<22>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<21>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<20>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<19>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<18>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<17>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<15>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<13>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<11>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<9>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<7>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<5>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<3>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_PCOUT<1>_UNCONNECTED , \NLW_blk00000001/blk000000d1_PCOUT<0>_UNCONNECTED }),
    .P({\NLW_blk00000001/blk000000d1_P<47>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<46>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_P<45>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<44>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<43>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_P<42>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<41>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<40>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_P<39>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<38>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<37>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_P<36>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<35>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<34>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_P<33>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<32>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<31>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_P<30>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<29>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<28>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_P<27>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<26>_UNCONNECTED , \NLW_blk00000001/blk000000d1_P<25>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_P<24>_UNCONNECTED , \blk00000001/sig00000082 , \blk00000001/sig00000081 , \blk00000001/sig00000080 , 
\blk00000001/sig0000007f , \blk00000001/sig0000007e , \blk00000001/sig0000007d , \blk00000001/sig0000007c , \blk00000001/sig0000007b , 
\blk00000001/sig0000007a , \blk00000001/sig00000079 , \blk00000001/sig00000078 , \blk00000001/sig00000077 , \blk00000001/sig00000076 , 
\blk00000001/sig00000075 , \blk00000001/sig00000074 , \blk00000001/sig00000073 , \blk00000001/sig00000072 , \blk00000001/sig00000071 , 
\blk00000001/sig00000070 , \blk00000001/sig0000006f , \blk00000001/sig0000006e , \blk00000001/sig0000006d , \blk00000001/sig0000006c , 
\blk00000001/sig0000006b }),
    .BCOUT({\NLW_blk00000001/blk000000d1_BCOUT<17>_UNCONNECTED , \NLW_blk00000001/blk000000d1_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_BCOUT<15>_UNCONNECTED , \NLW_blk00000001/blk000000d1_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_BCOUT<13>_UNCONNECTED , \NLW_blk00000001/blk000000d1_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_BCOUT<11>_UNCONNECTED , \NLW_blk00000001/blk000000d1_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_BCOUT<9>_UNCONNECTED , \NLW_blk00000001/blk000000d1_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_BCOUT<7>_UNCONNECTED , \NLW_blk00000001/blk000000d1_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_BCOUT<5>_UNCONNECTED , \NLW_blk00000001/blk000000d1_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_BCOUT<3>_UNCONNECTED , \NLW_blk00000001/blk000000d1_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_BCOUT<1>_UNCONNECTED , \NLW_blk00000001/blk000000d1_BCOUT<0>_UNCONNECTED }),
    .ACIN({\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , 
\blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d , \blk00000001/sig0000002d }),
    .ACOUT({\NLW_blk00000001/blk000000d1_ACOUT<29>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<28>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_ACOUT<27>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<26>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_ACOUT<25>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_ACOUT<23>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<22>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_ACOUT<21>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<20>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_ACOUT<19>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_ACOUT<17>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_ACOUT<15>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_ACOUT<13>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_ACOUT<11>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_ACOUT<9>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_ACOUT<7>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_ACOUT<5>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_ACOUT<3>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_ACOUT<1>_UNCONNECTED , \NLW_blk00000001/blk000000d1_ACOUT<0>_UNCONNECTED }),
    .CARRYOUT({\NLW_blk00000001/blk000000d1_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000001/blk000000d1_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk000000d1_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000001/blk000000d1_CARRYOUT<0>_UNCONNECTED })
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007c  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000067 ),
    .R(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig000000fb )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007b  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig000000fb ),
    .R(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000141 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007a  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/sig00000066 ),
    .R(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000094 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003f  (
    .C(aclk),
    .D(s_axis_data_tdata[0]),
    .Q(\blk00000001/sig000000eb )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003e  (
    .C(aclk),
    .D(s_axis_data_tdata[1]),
    .Q(\blk00000001/sig000000ec )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003d  (
    .C(aclk),
    .D(s_axis_data_tdata[2]),
    .Q(\blk00000001/sig000000ed )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003c  (
    .C(aclk),
    .D(s_axis_data_tdata[3]),
    .Q(\blk00000001/sig000000ee )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003b  (
    .C(aclk),
    .D(s_axis_data_tdata[4]),
    .Q(\blk00000001/sig000000ef )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003a  (
    .C(aclk),
    .D(s_axis_data_tdata[5]),
    .Q(\blk00000001/sig000000f0 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000039  (
    .C(aclk),
    .D(s_axis_data_tdata[6]),
    .Q(\blk00000001/sig000000f1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000038  (
    .C(aclk),
    .D(s_axis_data_tdata[7]),
    .Q(\blk00000001/sig000000f2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000037  (
    .C(aclk),
    .D(s_axis_data_tdata[8]),
    .Q(\blk00000001/sig000000f3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000036  (
    .C(aclk),
    .D(s_axis_data_tdata[9]),
    .Q(\blk00000001/sig000000f4 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000035  (
    .C(aclk),
    .D(s_axis_data_tdata[10]),
    .Q(\blk00000001/sig000000f5 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000034  (
    .C(aclk),
    .D(s_axis_data_tdata[11]),
    .Q(\blk00000001/sig000000f6 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000033  (
    .C(aclk),
    .D(s_axis_data_tdata[12]),
    .Q(\blk00000001/sig000000f7 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000032  (
    .C(aclk),
    .D(s_axis_data_tdata[13]),
    .Q(\blk00000001/sig000000f8 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000031  (
    .C(aclk),
    .D(s_axis_data_tdata[14]),
    .Q(\blk00000001/sig000000f9 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000030  (
    .C(aclk),
    .D(s_axis_data_tdata[15]),
    .Q(\blk00000001/sig000000fa )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002f  (
    .C(aclk),
    .D(\blk00000001/sig000000e8 ),
    .Q(\blk00000001/sig000000e9 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e  (
    .C(aclk),
    .D(\blk00000001/sig00000061 ),
    .Q(\blk00000001/sig00000095 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002d  (
    .C(aclk),
    .D(\blk00000001/sig00000051 ),
    .Q(\blk00000001/sig00000067 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \blk00000001/blk0000002c  (
    .C(aclk),
    .D(\blk00000001/sig00000051 ),
    .Q(\blk00000001/sig00000066 )
  );
  FDR #(
    .INIT ( 1'b1 ))
  \blk00000001/blk0000002b  (
    .C(aclk),
    .D(\blk00000001/sig00000060 ),
    .R(\blk00000001/sig0000006a ),
    .Q(\blk00000001/sig00000063 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002a  (
    .C(aclk),
    .D(\blk00000001/sig00000069 ),
    .R(\blk00000001/sig0000006a ),
    .Q(\blk00000001/sig00000064 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000029  (
    .C(aclk),
    .D(\blk00000001/sig00000046 ),
    .Q(\blk00000001/sig00000047 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000028  (
    .C(aclk),
    .CE(\blk00000001/sig00000065 ),
    .D(\blk00000001/sig00000059 ),
    .R(\blk00000001/sig0000005e ),
    .Q(\blk00000001/sig0000004c )
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000027  (
    .C(aclk),
    .CE(\blk00000001/sig00000065 ),
    .D(\blk00000001/sig00000058 ),
    .S(\blk00000001/sig0000005e ),
    .Q(\blk00000001/sig00000097 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(aclk),
    .CE(\blk00000001/sig00000065 ),
    .D(\blk00000001/sig00000057 ),
    .R(\blk00000001/sig0000005e ),
    .Q(\blk00000001/sig00000098 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(aclk),
    .CE(\blk00000001/sig00000065 ),
    .D(\blk00000001/sig0000005d ),
    .R(\blk00000001/sig0000005e ),
    .Q(\blk00000001/sig00000050 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000024  (
    .C(aclk),
    .CE(\blk00000001/sig00000065 ),
    .D(\blk00000001/sig0000005c ),
    .R(\blk00000001/sig0000005e ),
    .Q(\blk00000001/sig0000004f )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(aclk),
    .CE(\blk00000001/sig00000065 ),
    .D(\blk00000001/sig0000005b ),
    .R(\blk00000001/sig0000005e ),
    .Q(\blk00000001/sig0000004e )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(aclk),
    .CE(\blk00000001/sig00000065 ),
    .D(\blk00000001/sig0000005a ),
    .R(\blk00000001/sig0000005e ),
    .Q(\blk00000001/sig0000004d )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(aclk),
    .CE(\blk00000001/sig00000065 ),
    .D(\blk00000001/sig00000055 ),
    .R(\blk00000001/sig0000005f ),
    .Q(\blk00000001/sig0000004b )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(aclk),
    .CE(\blk00000001/sig00000065 ),
    .D(\blk00000001/sig00000054 ),
    .R(\blk00000001/sig0000005f ),
    .Q(\blk00000001/sig0000004a )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001f  (
    .C(aclk),
    .CE(\blk00000001/sig00000065 ),
    .D(\blk00000001/sig00000053 ),
    .R(\blk00000001/sig0000005f ),
    .Q(\blk00000001/sig00000049 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(aclk),
    .CE(\blk00000001/sig00000065 ),
    .D(\blk00000001/sig00000052 ),
    .R(\blk00000001/sig0000005f ),
    .Q(\blk00000001/sig00000048 )
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \blk00000001/blk0000001d  (
    .C(aclk),
    .CE(\blk00000001/sig00000065 ),
    .D(\blk00000001/sig00000056 ),
    .S(\blk00000001/sig0000005e ),
    .Q(\blk00000001/sig00000099 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(aclk),
    .D(\blk00000001/sig00000068 ),
    .Q(m_axis_data_tvalid)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001b  (
    .C(aclk),
    .D(\blk00000001/sig00000045 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001a  (
    .C(aclk),
    .D(\blk00000001/sig00000044 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000019  (
    .C(aclk),
    .D(\blk00000001/sig00000043 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000018  (
    .C(aclk),
    .D(\blk00000001/sig00000042 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000017  (
    .C(aclk),
    .D(\blk00000001/sig00000041 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000016  (
    .C(aclk),
    .D(\blk00000001/sig00000040 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000015  (
    .C(aclk),
    .D(\blk00000001/sig0000003f ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000014  (
    .C(aclk),
    .D(\blk00000001/sig0000003e ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000013  (
    .C(aclk),
    .D(\blk00000001/sig0000003d ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000012  (
    .C(aclk),
    .D(\blk00000001/sig0000003c ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000011  (
    .C(aclk),
    .D(\blk00000001/sig0000003b ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000010  (
    .C(aclk),
    .D(\blk00000001/sig0000003a ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000f  (
    .C(aclk),
    .D(\blk00000001/sig00000039 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000e  (
    .C(aclk),
    .D(\blk00000001/sig00000038 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000d  (
    .C(aclk),
    .D(\blk00000001/sig00000037 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000c  (
    .C(aclk),
    .D(\blk00000001/sig00000036 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000b  (
    .C(aclk),
    .D(\blk00000001/sig00000035 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(aclk),
    .D(\blk00000001/sig00000034 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[17])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(aclk),
    .D(\blk00000001/sig00000033 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[18])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(aclk),
    .D(\blk00000001/sig00000032 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[19])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(aclk),
    .D(\blk00000001/sig00000031 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[20])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(aclk),
    .D(\blk00000001/sig00000030 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[21])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(aclk),
    .D(\blk00000001/sig0000002f ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[22])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(aclk),
    .D(\blk00000001/sig0000002e ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[23])
  );
  GND   \blk00000001/blk00000003  (
    .G(\blk00000001/sig0000002d )
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig00000142 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \blk00000001/blk00000040/blk00000079  (
    .I0(\blk00000001/blk00000040/sig00000170 ),
    .I1(\blk00000001/sig00000047 ),
    .O(\blk00000001/blk00000040/sig000001a5 )
  );
  LUT3 #(
    .INIT ( 8'h9C ))
  \blk00000001/blk00000040/blk00000078  (
    .I0(\blk00000001/blk00000040/sig00000170 ),
    .I1(\blk00000001/blk00000040/sig00000171 ),
    .I2(\blk00000001/sig00000047 ),
    .O(\blk00000001/blk00000040/sig000001a3 )
  );
  LUT3 #(
    .INIT ( 8'h9C ))
  \blk00000001/blk00000040/blk00000077  (
    .I0(\blk00000001/blk00000040/sig00000170 ),
    .I1(\blk00000001/blk00000040/sig00000172 ),
    .I2(\blk00000001/sig00000047 ),
    .O(\blk00000001/blk00000040/sig000001a1 )
  );
  LUT3 #(
    .INIT ( 8'h9C ))
  \blk00000001/blk00000040/blk00000076  (
    .I0(\blk00000001/blk00000040/sig00000170 ),
    .I1(\blk00000001/blk00000040/sig00000173 ),
    .I2(\blk00000001/sig00000047 ),
    .O(\blk00000001/blk00000040/sig0000019f )
  );
  LUT3 #(
    .INIT ( 8'h9C ))
  \blk00000001/blk00000040/blk00000075  (
    .I0(\blk00000001/blk00000040/sig00000170 ),
    .I1(\blk00000001/blk00000040/sig00000174 ),
    .I2(\blk00000001/sig00000047 ),
    .O(\blk00000001/blk00000040/sig0000019d )
  );
  LUT6 #(
    .INIT ( 64'h2ABA2A2AAAAAAAAA ))
  \blk00000001/blk00000040/blk00000074  (
    .I0(\blk00000001/sig000000ea ),
    .I1(\blk00000001/sig000000e9 ),
    .I2(\blk00000001/blk00000040/sig00000171 ),
    .I3(\blk00000001/blk00000040/sig00000170 ),
    .I4(\blk00000001/sig00000047 ),
    .I5(\blk00000001/blk00000040/sig000001a7 ),
    .O(\blk00000001/blk00000040/sig00000196 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000001/blk00000040/blk00000073  (
    .I0(\blk00000001/blk00000040/sig00000172 ),
    .I1(\blk00000001/blk00000040/sig00000173 ),
    .I2(\blk00000001/blk00000040/sig00000174 ),
    .O(\blk00000001/blk00000040/sig000001a7 )
  );
  LUT6 #(
    .INIT ( 64'hEEAAFFAAEEA8FFAA ))
  \blk00000001/blk00000040/blk00000072  (
    .I0(\blk00000001/sig000000e7 ),
    .I1(\blk00000001/blk00000040/sig00000170 ),
    .I2(\blk00000001/blk00000040/sig00000171 ),
    .I3(\blk00000001/sig000000e9 ),
    .I4(\blk00000001/sig00000047 ),
    .I5(\blk00000001/blk00000040/sig000001a6 ),
    .O(\blk00000001/blk00000040/sig00000197 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \blk00000001/blk00000040/blk00000071  (
    .I0(\blk00000001/blk00000040/sig00000172 ),
    .I1(\blk00000001/blk00000040/sig00000173 ),
    .I2(\blk00000001/blk00000040/sig00000174 ),
    .O(\blk00000001/blk00000040/sig000001a6 )
  );
  XORCY   \blk00000001/blk00000040/blk00000070  (
    .CI(\blk00000001/blk00000040/sig000001a4 ),
    .LI(\blk00000001/blk00000040/sig000001a5 ),
    .O(\blk00000001/blk00000040/sig0000019c )
  );
  XORCY   \blk00000001/blk00000040/blk0000006f  (
    .CI(\blk00000001/blk00000040/sig000001a2 ),
    .LI(\blk00000001/blk00000040/sig000001a3 ),
    .O(\blk00000001/blk00000040/sig0000019b )
  );
  MUXCY   \blk00000001/blk00000040/blk0000006e  (
    .CI(\blk00000001/blk00000040/sig000001a2 ),
    .DI(\blk00000001/blk00000040/sig00000171 ),
    .S(\blk00000001/blk00000040/sig000001a3 ),
    .O(\blk00000001/blk00000040/sig000001a4 )
  );
  XORCY   \blk00000001/blk00000040/blk0000006d  (
    .CI(\blk00000001/blk00000040/sig000001a0 ),
    .LI(\blk00000001/blk00000040/sig000001a1 ),
    .O(\blk00000001/blk00000040/sig0000019a )
  );
  MUXCY   \blk00000001/blk00000040/blk0000006c  (
    .CI(\blk00000001/blk00000040/sig000001a0 ),
    .DI(\blk00000001/blk00000040/sig00000172 ),
    .S(\blk00000001/blk00000040/sig000001a1 ),
    .O(\blk00000001/blk00000040/sig000001a2 )
  );
  XORCY   \blk00000001/blk00000040/blk0000006b  (
    .CI(\blk00000001/blk00000040/sig0000019e ),
    .LI(\blk00000001/blk00000040/sig0000019f ),
    .O(\blk00000001/blk00000040/sig00000199 )
  );
  MUXCY   \blk00000001/blk00000040/blk0000006a  (
    .CI(\blk00000001/blk00000040/sig0000019e ),
    .DI(\blk00000001/blk00000040/sig00000173 ),
    .S(\blk00000001/blk00000040/sig0000019f ),
    .O(\blk00000001/blk00000040/sig000001a0 )
  );
  XORCY   \blk00000001/blk00000040/blk00000069  (
    .CI(\blk00000001/sig000000e9 ),
    .LI(\blk00000001/blk00000040/sig0000019d ),
    .O(\blk00000001/blk00000040/sig00000198 )
  );
  MUXCY   \blk00000001/blk00000040/blk00000068  (
    .CI(\blk00000001/sig000000e9 ),
    .DI(\blk00000001/blk00000040/sig00000174 ),
    .S(\blk00000001/blk00000040/sig0000019d ),
    .O(\blk00000001/blk00000040/sig0000019e )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk00000067  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000fa ),
    .Q(\blk00000001/blk00000040/sig00000186 ),
    .Q15(\NLW_blk00000001/blk00000040/blk00000067_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk00000066  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000f9 ),
    .Q(\blk00000001/blk00000040/sig00000187 ),
    .Q15(\NLW_blk00000001/blk00000040/blk00000066_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk00000065  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000f8 ),
    .Q(\blk00000001/blk00000040/sig00000188 ),
    .Q15(\NLW_blk00000001/blk00000040/blk00000065_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk00000064  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000f7 ),
    .Q(\blk00000001/blk00000040/sig00000189 ),
    .Q15(\NLW_blk00000001/blk00000040/blk00000064_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk00000063  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000f6 ),
    .Q(\blk00000001/blk00000040/sig0000018a ),
    .Q15(\NLW_blk00000001/blk00000040/blk00000063_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk00000062  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000f5 ),
    .Q(\blk00000001/blk00000040/sig0000018b ),
    .Q15(\NLW_blk00000001/blk00000040/blk00000062_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk00000061  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000f4 ),
    .Q(\blk00000001/blk00000040/sig0000018c ),
    .Q15(\NLW_blk00000001/blk00000040/blk00000061_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk00000060  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000f3 ),
    .Q(\blk00000001/blk00000040/sig0000018d ),
    .Q15(\NLW_blk00000001/blk00000040/blk00000060_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk0000005f  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000f2 ),
    .Q(\blk00000001/blk00000040/sig0000018e ),
    .Q15(\NLW_blk00000001/blk00000040/blk0000005f_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk0000005e  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000f1 ),
    .Q(\blk00000001/blk00000040/sig0000018f ),
    .Q15(\NLW_blk00000001/blk00000040/blk0000005e_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk0000005d  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000f0 ),
    .Q(\blk00000001/blk00000040/sig00000190 ),
    .Q15(\NLW_blk00000001/blk00000040/blk0000005d_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk0000005c  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000ef ),
    .Q(\blk00000001/blk00000040/sig00000191 ),
    .Q15(\NLW_blk00000001/blk00000040/blk0000005c_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk0000005b  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000ee ),
    .Q(\blk00000001/blk00000040/sig00000192 ),
    .Q15(\NLW_blk00000001/blk00000040/blk0000005b_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk0000005a  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000ed ),
    .Q(\blk00000001/blk00000040/sig00000193 ),
    .Q15(\NLW_blk00000001/blk00000040/blk0000005a_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk00000059  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000ec ),
    .Q(\blk00000001/blk00000040/sig00000194 ),
    .Q15(\NLW_blk00000001/blk00000040/blk00000059_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040/blk00000058  (
    .A0(\blk00000001/blk00000040/sig00000174 ),
    .A1(\blk00000001/blk00000040/sig00000173 ),
    .A2(\blk00000001/blk00000040/sig00000172 ),
    .A3(\blk00000001/blk00000040/sig00000171 ),
    .CE(\blk00000001/sig000000e9 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000eb ),
    .Q(\blk00000001/blk00000040/sig00000195 ),
    .Q15(\NLW_blk00000001/blk00000040/blk00000058_Q15_UNCONNECTED )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000040/blk00000057  (
    .C(aclk),
    .D(\blk00000001/blk00000040/sig0000019c ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/blk00000040/sig00000170 )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000040/blk00000056  (
    .C(aclk),
    .D(\blk00000001/blk00000040/sig0000019b ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/blk00000040/sig00000171 )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000040/blk00000055  (
    .C(aclk),
    .D(\blk00000001/blk00000040/sig0000019a ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/blk00000040/sig00000172 )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000040/blk00000054  (
    .C(aclk),
    .D(\blk00000001/blk00000040/sig00000199 ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/blk00000040/sig00000173 )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000040/blk00000053  (
    .C(aclk),
    .D(\blk00000001/blk00000040/sig00000198 ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/blk00000040/sig00000174 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk00000052  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig00000186 ),
    .Q(\blk00000001/sig000000e6 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk00000051  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig00000187 ),
    .Q(\blk00000001/sig000000e5 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk00000050  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig00000188 ),
    .Q(\blk00000001/sig000000e4 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk0000004f  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig00000189 ),
    .Q(\blk00000001/sig000000e3 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk0000004e  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig0000018a ),
    .Q(\blk00000001/sig000000e2 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk0000004d  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig0000018b ),
    .Q(\blk00000001/sig000000e1 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk0000004c  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig0000018c ),
    .Q(\blk00000001/sig000000e0 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk0000004b  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig0000018d ),
    .Q(\blk00000001/sig000000df )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk0000004a  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig0000018e ),
    .Q(\blk00000001/sig000000de )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk00000049  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig0000018f ),
    .Q(\blk00000001/sig000000dd )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk00000048  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig00000190 ),
    .Q(\blk00000001/sig000000dc )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk00000047  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig00000191 ),
    .Q(\blk00000001/sig000000db )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk00000046  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig00000192 ),
    .Q(\blk00000001/sig000000da )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk00000045  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig00000193 ),
    .Q(\blk00000001/sig000000d9 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk00000044  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig00000194 ),
    .Q(\blk00000001/sig000000d8 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk00000043  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/blk00000040/sig00000195 ),
    .Q(\blk00000001/sig000000d7 )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000040/blk00000042  (
    .C(aclk),
    .D(\blk00000001/blk00000040/sig00000196 ),
    .S(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig000000ea )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040/blk00000041  (
    .C(aclk),
    .D(\blk00000001/blk00000040/sig00000197 ),
    .R(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig000000e7 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk0000009e  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000092 ),
    .Q(\blk00000001/blk0000007d/sig000001cf ),
    .Q15(\NLW_blk00000001/blk0000007d/blk0000009e_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk0000009d  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000091 ),
    .Q(\blk00000001/blk0000007d/sig000001d0 ),
    .Q15(\NLW_blk00000001/blk0000007d/blk0000009d_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk0000009c  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000090 ),
    .Q(\blk00000001/blk0000007d/sig000001d1 ),
    .Q15(\NLW_blk00000001/blk0000007d/blk0000009c_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk0000009b  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig0000008f ),
    .Q(\blk00000001/blk0000007d/sig000001d2 ),
    .Q15(\NLW_blk00000001/blk0000007d/blk0000009b_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk0000009a  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig0000008e ),
    .Q(\blk00000001/blk0000007d/sig000001d3 ),
    .Q15(\NLW_blk00000001/blk0000007d/blk0000009a_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk00000099  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig0000008d ),
    .Q(\blk00000001/blk0000007d/sig000001d4 ),
    .Q15(\NLW_blk00000001/blk0000007d/blk00000099_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk00000098  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig0000008c ),
    .Q(\blk00000001/blk0000007d/sig000001d5 ),
    .Q15(\NLW_blk00000001/blk0000007d/blk00000098_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk00000097  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig0000008b ),
    .Q(\blk00000001/blk0000007d/sig000001d6 ),
    .Q15(\NLW_blk00000001/blk0000007d/blk00000097_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk00000096  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig0000008a ),
    .Q(\blk00000001/blk0000007d/sig000001d7 ),
    .Q15(\NLW_blk00000001/blk0000007d/blk00000096_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk00000095  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000089 ),
    .Q(\blk00000001/blk0000007d/sig000001d8 ),
    .Q15(\NLW_blk00000001/blk0000007d/blk00000095_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk00000094  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000088 ),
    .Q(\blk00000001/blk0000007d/sig000001d9 ),
    .Q15(\NLW_blk00000001/blk0000007d/blk00000094_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk00000093  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000087 ),
    .Q(\blk00000001/blk0000007d/sig000001da ),
    .Q15(\NLW_blk00000001/blk0000007d/blk00000093_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk00000092  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000086 ),
    .Q(\blk00000001/blk0000007d/sig000001db ),
    .Q15(\NLW_blk00000001/blk0000007d/blk00000092_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk00000091  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000085 ),
    .Q(\blk00000001/blk0000007d/sig000001dc ),
    .Q15(\NLW_blk00000001/blk0000007d/blk00000091_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk00000090  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000084 ),
    .Q(\blk00000001/blk0000007d/sig000001dd ),
    .Q15(\NLW_blk00000001/blk0000007d/blk00000090_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d/blk0000008f  (
    .A0(\blk00000001/sig0000004c ),
    .A1(\blk00000001/sig00000097 ),
    .A2(\blk00000001/sig00000098 ),
    .A3(\blk00000001/sig00000099 ),
    .CE(\blk00000001/sig00000094 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000083 ),
    .Q(\blk00000001/blk0000007d/sig000001de ),
    .Q15(\NLW_blk00000001/blk0000007d/blk0000008f_Q15_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk0000008e  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001cf ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000bd )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk0000008d  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001d0 ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000bc )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk0000008c  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001d1 ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000bb )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk0000008b  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001d2 ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000ba )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk0000008a  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001d3 ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000b9 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk00000089  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001d4 ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000b8 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk00000088  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001d5 ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000b7 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk00000087  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001d6 ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000b6 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk00000086  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001d7 ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000b5 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk00000085  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001d8 ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000b4 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk00000084  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001d9 ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000b3 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk00000083  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001da ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000b2 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk00000082  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001db ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000b1 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk00000081  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001dc ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000b0 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk00000080  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001dd ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000af )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d/blk0000007f  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000007d/sig000001de ),
    .R(\blk00000001/blk0000007d/sig000001df ),
    .Q(\blk00000001/sig000000ae )
  );
  GND   \blk00000001/blk0000007d/blk0000007e  (
    .G(\blk00000001/blk0000007d/sig000001df )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000c0  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000e6 ),
    .Q(\blk00000001/blk0000009f/sig00000207 ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000c0_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000bf  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000e5 ),
    .Q(\blk00000001/blk0000009f/sig00000208 ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000bf_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000be  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000e4 ),
    .Q(\blk00000001/blk0000009f/sig00000209 ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000be_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000bd  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000e3 ),
    .Q(\blk00000001/blk0000009f/sig0000020a ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000bd_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000bc  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000e2 ),
    .Q(\blk00000001/blk0000009f/sig0000020b ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000bc_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000bb  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000e1 ),
    .Q(\blk00000001/blk0000009f/sig0000020c ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000bb_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000ba  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000e0 ),
    .Q(\blk00000001/blk0000009f/sig0000020d ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000ba_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000b9  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000df ),
    .Q(\blk00000001/blk0000009f/sig0000020e ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000b9_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000b8  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000de ),
    .Q(\blk00000001/blk0000009f/sig0000020f ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000b8_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000b7  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000dd ),
    .Q(\blk00000001/blk0000009f/sig00000210 ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000b7_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000b6  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000dc ),
    .Q(\blk00000001/blk0000009f/sig00000211 ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000b6_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000b5  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000db ),
    .Q(\blk00000001/blk0000009f/sig00000212 ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000b5_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000b4  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000da ),
    .Q(\blk00000001/blk0000009f/sig00000213 ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000b4_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000b3  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000d9 ),
    .Q(\blk00000001/blk0000009f/sig00000214 ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000b3_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000b2  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000d8 ),
    .Q(\blk00000001/blk0000009f/sig00000215 ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000b2_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000009f/blk000000b1  (
    .A0(\blk00000001/sig00000050 ),
    .A1(\blk00000001/sig0000004f ),
    .A2(\blk00000001/sig0000004e ),
    .A3(\blk00000001/sig0000004d ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig000000d7 ),
    .Q(\blk00000001/blk0000009f/sig00000216 ),
    .Q15(\NLW_blk00000001/blk0000009f/blk000000b1_Q15_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000b0  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig00000207 ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000cd )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000af  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig00000208 ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000cc )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000ae  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig00000209 ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000cb )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000ad  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig0000020a ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000ca )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000ac  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig0000020b ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000c9 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000ab  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig0000020c ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000c8 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000aa  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig0000020d ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000c7 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000a9  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig0000020e ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000c6 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000a8  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig0000020f ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000c5 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000a7  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig00000210 ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000c4 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000a6  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig00000211 ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000c3 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000a5  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig00000212 ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000c2 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000a4  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig00000213 ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000c1 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000a3  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig00000214 ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000c0 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000a2  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig00000215 ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000bf )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009f/blk000000a1  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk0000009f/sig00000216 ),
    .R(\blk00000001/blk0000009f/sig00000217 ),
    .Q(\blk00000001/sig000000be )
  );
  GND   \blk00000001/blk0000009f/blk000000a0  (
    .G(\blk00000001/blk0000009f/sig00000217 )
  );
  LUT4 #(
    .INIT ( 16'h4464 ))
  \blk00000001/blk000000c1/blk000000cf  (
    .I0(\blk00000001/sig000000d6 ),
    .I1(\blk00000001/sig000000d4 ),
    .I2(\blk00000001/sig000000d3 ),
    .I3(\blk00000001/sig000000d5 ),
    .O(\blk00000001/blk000000c1/sig00000229 )
  );
  LUT4 #(
    .INIT ( 16'h0918 ))
  \blk00000001/blk000000c1/blk000000ce  (
    .I0(\blk00000001/sig000000d3 ),
    .I1(\blk00000001/sig000000d4 ),
    .I2(\blk00000001/sig000000d6 ),
    .I3(\blk00000001/sig000000d5 ),
    .O(\blk00000001/blk000000c1/sig00000225 )
  );
  LUT4 #(
    .INIT ( 16'h1617 ))
  \blk00000001/blk000000c1/blk000000cd  (
    .I0(\blk00000001/sig000000d4 ),
    .I1(\blk00000001/sig000000d5 ),
    .I2(\blk00000001/sig000000d6 ),
    .I3(\blk00000001/sig000000d3 ),
    .O(\blk00000001/blk000000c1/sig00000227 )
  );
  LUT4 #(
    .INIT ( 16'h0262 ))
  \blk00000001/blk000000c1/blk000000cc  (
    .I0(\blk00000001/sig000000d4 ),
    .I1(\blk00000001/sig000000d6 ),
    .I2(\blk00000001/sig000000d3 ),
    .I3(\blk00000001/sig000000d5 ),
    .O(\blk00000001/blk000000c1/sig00000228 )
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \blk00000001/blk000000c1/blk000000cb  (
    .I0(\blk00000001/sig000000d4 ),
    .I1(\blk00000001/sig000000d5 ),
    .I2(\blk00000001/sig000000d3 ),
    .I3(\blk00000001/sig000000d6 ),
    .O(\blk00000001/blk000000c1/sig0000022a )
  );
  LUT4 #(
    .INIT ( 16'h2225 ))
  \blk00000001/blk000000c1/blk000000ca  (
    .I0(\blk00000001/sig000000d5 ),
    .I1(\blk00000001/sig000000d6 ),
    .I2(\blk00000001/sig000000d4 ),
    .I3(\blk00000001/sig000000d3 ),
    .O(\blk00000001/blk000000c1/sig00000226 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000001/blk000000c1/blk000000c9  (
    .I0(\blk00000001/sig000000d6 ),
    .I1(\blk00000001/sig000000d4 ),
    .O(\blk00000001/blk000000c1/sig0000022b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c1/blk000000c8  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk000000c1/sig0000022a ),
    .Q(\blk00000001/sig000000a4 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c1/blk000000c7  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk000000c1/sig00000229 ),
    .Q(\blk00000001/sig000000a3 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c1/blk000000c6  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk000000c1/sig0000022b ),
    .Q(\blk00000001/sig000000a2 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c1/blk000000c5  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk000000c1/sig00000228 ),
    .Q(\blk00000001/sig000000a1 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c1/blk000000c4  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk000000c1/sig00000227 ),
    .Q(\blk00000001/sig000000a0 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c1/blk000000c3  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk000000c1/sig00000226 ),
    .Q(\blk00000001/sig0000009f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c1/blk000000c2  (
    .C(aclk),
    .CE(\blk00000001/sig00000142 ),
    .D(\blk00000001/blk000000c1/sig00000225 ),
    .Q(\blk00000001/sig0000009e )
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
