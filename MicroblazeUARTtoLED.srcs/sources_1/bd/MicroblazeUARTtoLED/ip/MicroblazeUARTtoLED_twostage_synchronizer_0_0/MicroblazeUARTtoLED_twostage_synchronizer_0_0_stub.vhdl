-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Apr 29 17:13:32 2025
-- Host        : DESKTOP-8IL51LS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Mehmet/Desktop/TestProjects/MicroblazeUARTtoLED/MicroblazeUARTtoLED.srcs/sources_1/bd/MicroblazeUARTtoLED/ip/MicroblazeUARTtoLED_twostage_synchronizer_0_0/MicroblazeUARTtoLED_twostage_synchronizer_0_0_stub.vhdl
-- Design      : MicroblazeUARTtoLED_twostage_synchronizer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MicroblazeUARTtoLED_twostage_synchronizer_0_0 is
  Port ( 
    src_signal : in STD_LOGIC;
    dst_clk : in STD_LOGIC;
    dst_signal : out STD_LOGIC
  );

end MicroblazeUARTtoLED_twostage_synchronizer_0_0;

architecture stub of MicroblazeUARTtoLED_twostage_synchronizer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "src_signal,dst_clk,dst_signal";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "twostage_synchronizer,Vivado 2017.4";
begin
end;
