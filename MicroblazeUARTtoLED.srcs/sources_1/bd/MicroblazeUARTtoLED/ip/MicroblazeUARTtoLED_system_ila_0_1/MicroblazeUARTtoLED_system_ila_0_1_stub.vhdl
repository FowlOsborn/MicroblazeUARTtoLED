-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Apr 29 11:56:36 2025
-- Host        : DESKTOP-8IL51LS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top MicroblazeUARTtoLED_system_ila_0_1 -prefix
--               MicroblazeUARTtoLED_system_ila_0_1_ MicroblazeUARTtoLED_system_ila_0_1_stub.vhdl
-- Design      : MicroblazeUARTtoLED_system_ila_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MicroblazeUARTtoLED_system_ila_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

end MicroblazeUARTtoLED_system_ila_0_1;

architecture stub of MicroblazeUARTtoLED_system_ila_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[0:0],probe1[0:0],probe2[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_c02a,Vivado 2017.4";
begin
end;
