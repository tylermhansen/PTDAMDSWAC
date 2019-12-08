library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my.all;

ENTITY SYNC IS
PORT(
CLK: IN STD_LOGIC;
KCLK: IN STD_LOGIC;
DATA: IN STD_LOGIC;
HSYNC: OUT STD_LOGIC;
VSYNC: OUT STD_LOGIC;
R: OUT STD_LOGIC_VECTOR(3 downto 0);
G: OUT STD_LOGIC_VECTOR(3 downto 0);
B: OUT STD_LOGIC_VECTOR(3 downto 0);
KEYS: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
S: IN STD_LOGIC_VECTOR(1 downto 0)
);
END SYNC;


ARCHITECTURE MAIN OF SYNC IS

COMPONENT ps2_keyboard IS
 PORT(
	 clk          : IN  STD_LOGIC;                     --system clock
    ps2_clk      : IN  STD_LOGIC;                     --clock signal from PS/2 keyboard
    ps2_data     : IN  STD_LOGIC;                     --data signal from PS/2 keyboard
    ps2_code_new : OUT STD_LOGIC;                     --flag that new PS/2 code is available on ps2_code bus
    ps2_code     : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT ps2_keyboard;

COMPONENT player_sprite_straight_updated is
port(
X	: in INTEGER RANGE 0 TO 1688;
Y	: in INTEGER RANGE 0 TO 1688;
data : out std_logic_vector (11 downto 0)
);
END COMPONENT player_sprite_straight_updated;

-----1280x1024 @ 60 Hz pixel clock 108 MHz
SIGNAL RGB: STD_LOGIC_VECTOR(3 downto 0);
SIGNAL SQ_X1,SQ_Y1: INTEGER RANGE 0 TO 1688:=500;
SIGNAL SQ_X2,SQ_Y2: INTEGER RANGE 0 TO 1688:=600;
SIGNAL CAR_X,CAR_Y: INTEGER RANGE 0 TO 1688:=1000;
SIGNAL DRAW1,DRAW2, DRAWCAR:STD_LOGIC:='0';
SIGNAL HPOS: INTEGER RANGE 0 TO 1688:=0;
SIGNAL VPOS: INTEGER RANGE 0 TO 1066:=0;
SIGNAL KEYBOARDIN : STD_LOGIC;
SIGNAL DEPRESSED : STD_LOGIC := '0'; 
SIGNAL KEYBOARDCODE: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CAR_DATA: STD_LOGIC_VECTOR(11 DOWNTO 0);

BEGIN
SQ(HPOS,VPOS,SQ_X1,SQ_Y1,RGB,DRAW1);
SQ(HPOS,VPOS,SQ_X2,SQ_Y2,RGB,DRAW2);
CAR(HPOS,VPOS,CAR_X,CAR_Y,RGB,DRAWCAR);

PROCESS(CLK)
BEGIN

	-- THIS IS HOW I AM CURRENTLY TRYING TO TEST IF A KEY IS BEING HELD DOWN
	IF(KEYBOARDIN = '1') THEN  -- if on there is a new PS/2 code available on ps2_code bus 
		IF KEYBOARDCODE(7 downto 4)  = "1111" THEN -- if that code is a break code
			DEPRESSED <= '0'; -- no key is being held down 
		ELSE							-- if that code is not a break code
			DEPRESSED <= '1'; -- a key is being held down
		END IF;
	END IF; 
	
	IF(CLK'EVENT AND CLK='1')THEN
			IF(DRAW1='1')THEN
			  IF(S(0)='1')THEN
				R<=(others=>'1');
				G<=(others=>'0');
				B<=(others=>'0');
				ELSE
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'1');
				END IF;
			END IF;
			 IF(DRAW2='1')THEN
			  IF(S(1)='1')THEN
				R<=(others=>'1');
				G<=(others=>'0');
				B<=(others=>'0');
				ELSE
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'1');
			  END IF;
			END IF;
			IF(DRAWCAR='1')THEN
				R<= CAR_DATA(11 downto 8);
				G<= CAR_DATA(7 downto 4);
				B<= CAR_DATA(3 downto 0);
			END IF;
			IF (DRAW1='0' AND DRAW2='0' AND DRAWCAR ='0')THEN
				R<=(others=>'0');
				G<=(others=>'0');
				B<=(others=>'0');
			END IF;

			IF(HPOS<1688)THEN
			HPOS<=HPOS+1;
			ELSE
			HPOS<=0;
			  IF(VPOS<1066)THEN
				  VPOS<=VPOS+1;
				  ELSE
				  VPOS<=0; 
						IF(S(0)='1')THEN
							IF DEPRESSED = '1' THEN -- if a key is being pressed down
								CASE KEYBOARDCODE IS 
									WHEN "00100011" => -- when its A, go right
										SQ_X1<=SQ_X1+5;
									WHEN "00011100" => -- when its D, go left
										SQ_X1<=SQ_X1-5;
									WHEN OTHERS => -- when its anything else, stay still 
									SQ_X1<=SQ_X1;
									SQ_Y1<=SQ_Y1;
								END CASE;
							ELSE -- if a key is not being pressed down, stay still 
								SQ_X1<=SQ_X1;
								SQ_Y1<=SQ_Y1;
							END IF; 
						END IF;
						IF(S(1)='1')THEN
							IF DEPRESSED = '1' THEN 	--if a key is being pressed down
								 CASE KEYBOARDCODE IS 
									WHEN "00100011" => -- when its A, go right
										SQ_X2<=SQ_X2+5;
									WHEN "00011100" => -- when its D, go left
										SQ_X2<=SQ_X2-5;
									WHEN OTHERS=> -- when its anything else, stay still 
									SQ_X2<=SQ_X2;
									SQ_Y2<=SQ_Y2;
								END CASE; -- if a key is not being pressed down, stay still 
							ELSE
								SQ_X1<=SQ_X1;
								SQ_Y1<=SQ_Y1;
							END IF; 
						END IF;  
					END IF;
			END IF;
		IF((HPOS>0 AND HPOS<408) OR (VPOS>0 AND VPOS<42))THEN
		R<=(others=>'0');
		G<=(others=>'0');
		B<=(others=>'0');
		END IF;
		IF(HPOS>48 AND HPOS<160)THEN----HSYNC
			HSYNC<='0';
		ELSE
			HSYNC<='1';
		END IF;
		IF(VPOS>0 AND VPOS<4)THEN----------vsync
			VSYNC<='0';
		ELSE
			VSYNC<='1';
		END IF;
	 END IF;
 END PROCESS;
 
 INST1: ps2_keyboard PORT MAP (CLK, KCLK, DATA, KEYBOARDIN, KEYBOARDCODE);
 INST2l: player_sprite_straight_updated PORT MAP (HPOS - CAR_X, VPOS - CAR_Y, CAR_DATA);
 
 END MAIN;