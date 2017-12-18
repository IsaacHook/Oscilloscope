--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ram_read.vhf
-- /___/   /\     Timestamp : 12/17/2017 11:58:46
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl Z:/Desktop/DSO/CPLD_debug/dso_outputs_full/ram_read.vhf -w Z:/Desktop/DSO/CPLD_debug/dso_outputs_full/ram_read.sch
--Design Name: ram_read
--Device: xc9500xl
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ram_read is
   port ( ENABLE        : in    std_logic; 
          FAST_CLK      : in    std_logic; 
          RAM_FULL      : in    std_logic; 
          SLOW_CLK      : in    std_logic; 
          TRIGGER_IN    : in    std_logic; 
          XLXN_1        : in    std_logic; 
          CLEAR_COUNT   : out   std_logic; 
          COUNTER_CLK   : out   std_logic; 
          ENABLE_COUNT  : out   std_logic; 
          FILL_COMPLETE : out   std_logic; 
          RAM_READ_OUT  : out   std_logic; 
          XLXN_2        : out   std_logic);
end ram_read;

architecture BEHAVIORAL of ram_read is
   attribute BOX_TYPE   : string ;
   signal INMUX1              : std_logic;
   signal INMUX2              : std_logic;
   signal XLXN_119            : std_logic;
   signal XLXN_120            : std_logic;
   signal XLXN_121            : std_logic;
   signal XLXN_122            : std_logic;
   signal XLXN_138            : std_logic;
   signal XLXN_142            : std_logic;
   signal XLXN_143            : std_logic;
   signal XLXN_144            : std_logic;
   signal XLXN_145            : std_logic;
   signal XLXN_149            : std_logic;
   signal RAM_READ_OUT_DUMMY  : std_logic;
   signal FILL_COMPLETE_DUMMY : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FDCP
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             PRE : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCP : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
begin
   FILL_COMPLETE <= FILL_COMPLETE_DUMMY;
   RAM_READ_OUT <= RAM_READ_OUT_DUMMY;
   XLXI_1 : XOR2
      port map (I0=>XLXN_1,
                I1=>XLXN_149,
                O=>CLEAR_COUNT);
   
   XLXI_2 : XOR2
      port map (I0=>XLXN_1,
                I1=>FILL_COMPLETE_DUMMY,
                O=>ENABLE_COUNT);
   
   XLXI_7 : INV
      port map (I=>XLXN_1,
                O=>RAM_READ_OUT_DUMMY);
   
   XLXI_46 : INV
      port map (I=>XLXN_149,
                O=>FILL_COMPLETE_DUMMY);
   
   XLXI_47 : AND2
      port map (I0=>FAST_CLK,
                I1=>RAM_READ_OUT_DUMMY,
                O=>INMUX1);
   
   XLXI_48 : AND2
      port map (I0=>XLXN_1,
                I1=>SLOW_CLK,
                O=>INMUX2);
   
   XLXI_49 : OR2
      port map (I0=>INMUX2,
                I1=>INMUX1,
                O=>COUNTER_CLK);
   
   XLXI_76 : OR2
      port map (I0=>FAST_CLK,
                I1=>XLXN_1,
                O=>XLXN_119);
   
   XLXI_77 : OR2
      port map (I0=>XLXN_122,
                I1=>XLXN_119,
                O=>XLXN_120);
   
   XLXI_78 : INV
      port map (I=>XLXN_120,
                O=>XLXN_121);
   
   XLXI_79 : INV
      port map (I=>XLXN_121,
                O=>XLXN_2);
   
   XLXI_80 : GND
      port map (G=>XLXN_122);
   
   XLXI_84 : FDCP
      port map (C=>ENABLE,
                CLR=>XLXN_145,
                D=>XLXN_142,
                PRE=>XLXN_144,
                Q=>XLXN_138);
   
   XLXI_85 : FDCP
      port map (C=>TRIGGER_IN,
                CLR=>XLXN_145,
                D=>XLXN_138,
                PRE=>XLXN_143,
                Q=>XLXN_149);
   
   XLXI_90 : INV
      port map (I=>RAM_FULL,
                O=>XLXN_145);
   
   XLXI_91 : VCC
      port map (P=>XLXN_142);
   
   XLXI_92 : GND
      port map (G=>XLXN_144);
   
   XLXI_93 : GND
      port map (G=>XLXN_143);
   
end BEHAVIORAL;


