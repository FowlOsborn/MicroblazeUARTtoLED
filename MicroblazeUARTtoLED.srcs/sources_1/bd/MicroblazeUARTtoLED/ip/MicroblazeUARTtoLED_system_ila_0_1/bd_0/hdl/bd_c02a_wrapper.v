//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_c02a_wrapper.bd
//Design : bd_c02a_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_c02a_wrapper
   (clk,
    probe0,
    probe1,
    probe2);
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;

  wire clk;
  wire [0:0]probe0;
  wire [0:0]probe1;
  wire [0:0]probe2;

  bd_c02a bd_c02a_i
       (.clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe2(probe2));
endmodule
