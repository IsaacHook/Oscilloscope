--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : blank_drc.vhf
-- /___/   /\     Timestamp : 12/06/2017 08:45:09
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family xc9500xl -flat -suppress -vhdl blank_drc.vhf -w Z:/Desktop/DSO/CPLD_debug/blank/blank.sch
--Design Name: blank
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

entity blank is
   port ( XLXN_1 : out   std_logic);
   attribute LOC : string ;
   attribute LOC of XLXN_1 : signal is "P1";
end blank;

architecture BEHAVIORAL of blank is
   attribute BOX_TYPE   : string ;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_1 : GND
      port map (G=>XLXN_1);
   
end BEHAVIORAL;


