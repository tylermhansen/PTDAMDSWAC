-- Tyler Hansen
-- CS232 Final Project
-- genSpriteROM.py
-- generates a ROM file in VHDL from a .ppm image

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity player_sprite_straight is
port(
X	: in INTEGER RANGE 0 TO 1688;
Y	: in INTEGER RANGE 0 TO 1688;
data : out std_logic_vector (11 downto 0)
);

end entity;

architecture rtl of player_sprite_straight is
begin
data <=
