library ieee;
use ieee.math_real.all;
use ieee.std_logic_1164.all;

entity rand_gen is
PORT(
	clk: in STD_LOGIC;
	random: OUT INTEGER
);
end rand_gen;

architecture behavior of rand_gen is 

signal rand_num : integer := 0;

begin

process(clk)
    variable seed1, seed2: positive;               -- seed values for random generator
    variable rand: real;   -- random real-number value in range 0 to 1.0  
    variable range_of_rand : real := 200.0;    -- the range of random values created will be 0 to +200.
begin
    uniform(seed1, seed2, rand);   -- generate random number
    rand_num <= integer(rand*range_of_rand);  -- rescale to 0..1000, convert integer part 
    wait for 10 ns;
end process;

random <= rand_num;

end behavior;