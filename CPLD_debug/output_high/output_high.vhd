--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : output_high.vhf
-- /___/   /\     Timestamp : 12/08/2017 15:25:49
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl Z:/Desktop/DSO/CPLD_debug/output_high/output_high.vhf -w Z:/Desktop/DSO/CPLD_debug/output_high/output_high.sch
--Design Name: output_high
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

entity output_high is
   port ( XLXN_12 : in    std_logic; 
          XLXN_11 : out   std_logic);
end output_high;

architecture BEHAVIORAL of output_high is
   attribute SLEW       : string ;
   attribute BOX_TYPE   : string ;
   component OBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute SLEW of OBUF : component is "SLOW";
   attribute BOX_TYPE of OBUF : component is "BLACK_BOX";
   
begin
   XLXI_9 : OBUF
      port map (I=>XLXN_12,
                O=>XLXN_11);
   
end BEHAVIORAL;


