-- CS232 Project 4
-- Tyler Hansen
-- ssdDriver.vhd
-- Drives a seven segment display.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ssdDriver is

	port 
	(
		a	   : in  std_logic_vector (3 downto 0);
		result : out std_logic_vector (6 downto 0)
	);

end entity;

architecture rtl of ssdDriver is
begin

	result(0) <= '1' when a = "0001" or a = "0100" or a = "1011" or a = "1101" else '0';
	result(1) <= '1' when a = "0101" or a = "0110" or a = "1011" or a = "1100" or a = "1110" or a = "1111" else '0';
	result(2) <= '1' when a = "0010" or a = "1100" or a = "1110" or a = "1111" else '0';
	result(3) <= '1' when a = "0001" or a = "0100" or a = "0111" or a = "1010" or a = "1111" else '0';
	result(4) <= '1' when a = "0001" or a = "0011" or a = "0100" or a = "0101" or a = "0111" or a = "1001" else '0';
	result(5) <= '1' when a = "0001" or a = "0010" or a = "0011" or a = "0111" or a = "1101" else '0';
	result(6) <= '1' when a = "0000" or a = "0001" or a = "0111" or a = "1100" else '0';

end rtl;
