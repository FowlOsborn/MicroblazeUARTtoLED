// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Apr 29 17:13:32 2025
// Host        : DESKTOP-8IL51LS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Mehmet/Desktop/TestProjects/MicroblazeUARTtoLED/MicroblazeUARTtoLED.srcs/sources_1/bd/MicroblazeUARTtoLED/ip/MicroblazeUARTtoLED_twostage_synchronizer_1_0/MicroblazeUARTtoLED_twostage_synchronizer_1_0_sim_netlist.v
// Design      : MicroblazeUARTtoLED_twostage_synchronizer_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MicroblazeUARTtoLED_twostage_synchronizer_1_0,twostage_synchronizer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "twostage_synchronizer,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module MicroblazeUARTtoLED_twostage_synchronizer_1_0
   (src_signal,
    dst_clk,
    dst_signal);
  input src_signal;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dst_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dst_clk, FREQ_HZ 99997885, PHASE 0.0, CLK_DOMAIN MicroblazeUARTtoLED_clk_wiz_0_0_clk_out1" *) input dst_clk;
  output dst_signal;

  wire dst_clk;
  wire dst_signal;
  wire src_signal;

  MicroblazeUARTtoLED_twostage_synchronizer_1_0_twostage_synchronizer inst
       (.dst_clk(dst_clk),
        .dst_signal(dst_signal),
        .src_signal(src_signal));
endmodule

(* ORIG_REF_NAME = "twostage_synchronizer" *) 
module MicroblazeUARTtoLED_twostage_synchronizer_1_0_twostage_synchronizer
   (dst_signal,
    src_signal,
    dst_clk);
  output dst_signal;
  input src_signal;
  input dst_clk;

  wire dst_clk;
  (* async_reg = "true" *) wire src_reg;
  wire src_signal;
  (* async_reg = "true" *) wire [1:0]sync_regs;

  assign dst_signal = sync_regs[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE src_reg_reg
       (.C(dst_clk),
        .CE(1'b1),
        .D(src_signal),
        .Q(src_reg),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_regs_reg[0] 
       (.C(dst_clk),
        .CE(1'b1),
        .D(src_reg),
        .Q(sync_regs[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_regs_reg[1] 
       (.C(dst_clk),
        .CE(1'b1),
        .D(sync_regs[0]),
        .Q(sync_regs[1]),
        .R(1'b0));
endmodule
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
