library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY VGA IS
PORT(
CLOCK_24: IN STD_LOGIC_VECTOR(1 downto 0);
PS2_CLK: IN STD_LOGIC;
PS2_DAT: IN STD_LOGIC;
VGA_HS,VGA_VS:OUT STD_LOGIC;
SW: STD_LOGIC_VECTOR(1 downto 0);
KEY: STD_LOGIC_VECTOR(3 DOWNTO 0);
HEX0: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
HEX1: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
LEDG: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
VGA_R,VGA_B,VGA_G: OUT STD_LOGIC_VECTOR(3 downto 0)
);
END VGA;


ARCHITECTURE MAIN OF VGA IS
SIGNAL VGACLK,RESET:STD_LOGIC;
SIGNAL COLLISIONS: STD_LOGIC_VECTOR(7 DOWNTO 0);
 COMPONENT SYNC IS
 PORT(
	CLK: IN STD_LOGIC;
	KCLK: IN STD_LOGIC;
	DATA: IN STD_LOGIC;
	HSYNC: OUT STD_LOGIC;
	VSYNC: OUT STD_LOGIC;
	HITS: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	R: OUT STD_LOGIC_VECTOR(3 downto 0);
	G: OUT STD_LOGIC_VECTOR(3 downto 0);
	B: OUT STD_LOGIC_VECTOR(3 downto 0);
	KEYS: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
   S: IN STD_LOGIC_VECTOR(1 downto 0);
	YAY: OUT STD_LOGIC_VECTOR(7 downto 0)
	);
END COMPONENT SYNC;

    component pll is
        port (
            clkout_clk : out std_logic;        -- clk
            clkin_clk  : in  std_logic := 'X'; -- clk
            rst_reset  : in  std_logic := 'X'  -- reset
        );
	 END COMPONENT pll;
	 
COMPONENT ssdDriver is
	port 
	(
		a	   : in  std_logic_vector (3 downto 0);
		result : out std_logic_vector (6 downto 0)
	);

END COMPONENT ssdDriver;

 BEGIN
 
 C: pll PORT MAP (VGACLK,CLOCK_24(0),RESET);
 C1: SYNC PORT MAP(VGACLK,PS2_CLK,PS2_DAT,VGA_HS,VGA_VS,COLLISIONS,VGA_R,VGA_G,VGA_B,KEY,SW,LEDG);
 C2: ssdDriver PORT MAP(COLLISIONS(7 DOWNTO 4), HEX1);
 C3: ssdDriver PORT MAP(COLLISIONS(3 DOWNTO 0), HEX0);
 END MAIN;
 