// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Apr 29 17:13:30 2025
// Host        : DESKTOP-8IL51LS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Mehmet/Desktop/TestProjects/MicroblazeUARTtoLED/MicroblazeUARTtoLED.srcs/sources_1/bd/MicroblazeUARTtoLED/ip/MicroblazeUARTtoLED_clk_wiz_0_0/MicroblazeUARTtoLED_clk_wiz_0_0_stub.v
// Design      : MicroblazeUARTtoLED_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module MicroblazeUARTtoLED_clk_wiz_0_0(clk_out1, reset, locked, clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,reset,locked,clk_in1_p,clk_in1_n" */;
  output clk_out1;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
