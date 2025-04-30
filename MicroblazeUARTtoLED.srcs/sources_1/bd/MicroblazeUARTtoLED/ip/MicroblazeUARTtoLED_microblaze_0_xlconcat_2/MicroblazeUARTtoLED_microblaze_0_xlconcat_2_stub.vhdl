-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Fri Apr 25 12:52:53 2025
-- Host        : DESKTOP-8IL51LS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top MicroblazeUARTtoLED_microblaze_0_xlconcat_2 -prefix
--               MicroblazeUARTtoLED_microblaze_0_xlconcat_2_ MicroblazeUARTtoLED_microblaze_0_xlconcat_0_stub.vhdl
-- Design      : MicroblazeUARTtoLED_microblaze_0_xlconcat_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MicroblazeUARTtoLED_microblaze_0_xlconcat_2 is
  Port ( 
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end MicroblazeUARTtoLED_microblaze_0_xlconcat_2;

architecture stub of MicroblazeUARTtoLED_microblaze_0_xlconcat_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "In0[0:0],dout[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconcat_v2_1_1_xlconcat,Vivado 2017.4";
begin
end;
