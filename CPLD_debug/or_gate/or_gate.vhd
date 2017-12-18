--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : or_gate.vhf
-- /___/   /\     Timestamp : 12/05/2017 19:11:34
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl Z:/Desktop/DSO/CPLD_debug/or_gate/or_gate.vhf -w Z:/Desktop/DSO/CPLD_debug/or_gate/or_gate.sch
--Design Name: or_gate
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

entity or_gate is
   port ( ENABLE       : in    std_logic; 
          RAM_READ_OUT : out   std_logic);
end or_gate;

architecture BEHAVIORAL of or_gate is
   attribute BOX_TYPE   : string ;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_11 : INV
      port map (I=>ENABLE,
                O=>RAM_READ_OUT);
   
end BEHAVIORAL;


