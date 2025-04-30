-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Apr 29 17:13:32 2025
-- Host        : DESKTOP-8IL51LS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Mehmet/Desktop/TestProjects/MicroblazeUARTtoLED/MicroblazeUARTtoLED.srcs/sources_1/bd/MicroblazeUARTtoLED/ip/MicroblazeUARTtoLED_twostage_synchronizer_1_0/MicroblazeUARTtoLED_twostage_synchronizer_1_0_sim_netlist.vhdl
-- Design      : MicroblazeUARTtoLED_twostage_synchronizer_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MicroblazeUARTtoLED_twostage_synchronizer_1_0_twostage_synchronizer is
  port (
    dst_signal : out STD_LOGIC;
    src_signal : in STD_LOGIC;
    dst_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MicroblazeUARTtoLED_twostage_synchronizer_1_0_twostage_synchronizer : entity is "twostage_synchronizer";
end MicroblazeUARTtoLED_twostage_synchronizer_1_0_twostage_synchronizer;

architecture STRUCTURE of MicroblazeUARTtoLED_twostage_synchronizer_1_0_twostage_synchronizer is
  signal src_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of src_reg : signal is "true";
  signal sync_regs : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of sync_regs : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of src_reg_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of src_reg_reg : label is "yes";
  attribute ASYNC_REG_boolean of \sync_regs_reg[0]\ : label is std.standard.true;
  attribute KEEP of \sync_regs_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_regs_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_regs_reg[1]\ : label is "yes";
begin
  dst_signal <= sync_regs(1);
src_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => dst_clk,
      CE => '1',
      D => src_signal,
      Q => src_reg,
      R => '0'
    );
\sync_regs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dst_clk,
      CE => '1',
      D => src_reg,
      Q => sync_regs(0),
      R => '0'
    );
\sync_regs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dst_clk,
      CE => '1',
      D => sync_regs(0),
      Q => sync_regs(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MicroblazeUARTtoLED_twostage_synchronizer_1_0 is
  port (
    src_signal : in STD_LOGIC;
    dst_clk : in STD_LOGIC;
    dst_signal : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MicroblazeUARTtoLED_twostage_synchronizer_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MicroblazeUARTtoLED_twostage_synchronizer_1_0 : entity is "MicroblazeUARTtoLED_twostage_synchronizer_1_0,twostage_synchronizer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of MicroblazeUARTtoLED_twostage_synchronizer_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of MicroblazeUARTtoLED_twostage_synchronizer_1_0 : entity is "twostage_synchronizer,Vivado 2017.4";
end MicroblazeUARTtoLED_twostage_synchronizer_1_0;

architecture STRUCTURE of MicroblazeUARTtoLED_twostage_synchronizer_1_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of dst_clk : signal is "xilinx.com:signal:clock:1.0 dst_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of dst_clk : signal is "XIL_INTERFACENAME dst_clk, FREQ_HZ 99997885, PHASE 0.0, CLK_DOMAIN MicroblazeUARTtoLED_clk_wiz_0_0_clk_out1";
begin
inst: entity work.MicroblazeUARTtoLED_twostage_synchronizer_1_0_twostage_synchronizer
     port map (
      dst_clk => dst_clk,
      dst_signal => dst_signal,
      src_signal => src_signal
    );
end STRUCTURE;
