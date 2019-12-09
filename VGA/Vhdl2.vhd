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
SIGNAL SQ_X1: INTEGER RANGE 0 TO 1688:=408;
SIGNAL SQ_Y1: INTEGER RANGE 0 TO 1688:=500;
SIGNAL SKY_X: INTEGER RANGE 0 TO 1688:=408;
SIGNAL SKY_Y: INTEGER RANGE 0 TO 1688:=0;
SIGNAL DASH_X,DASH2_X,DASH3_X,DASH4_X,DASH5_X: INTEGER RANGE 0 TO 1688:=990;
SIGNAL DASH_Y: INTEGER RANGE 0 TO 1688:=500;
SIGNAL DASH2_Y: INTEGER RANGE 0 TO 1688:=550;
SIGNAL DASH3_Y: INTEGER RANGE 0 TO 1688:=625;
SIGNAL DASH4_Y: INTEGER RANGE 0 TO 1688:=775;
SIGNAL DASH5_Y: INTEGER RANGE 0 TO 1688:=975;
SIGNAL DASH6_Y: INTEGER RANGE 0 TO 1688:=1025;
SIGNAL CAR_X,CAR_Y: INTEGER RANGE 0 TO 1688:=1000;
SIGNAL LINE_X1: INTEGER RANGE 0 TO 1688:=1100; 
SIGNAL LINE_Y1: INTEGER RANGE 0 TO 1688:=500;
SIGNAL LINE_X2: INTEGER RANGE 0 TO 1688:=1101;
SIGNAL LINE_Y2: INTEGER RANGE 0 TO 1688:=501;
SIGNAL LINE2_X1: INTEGER RANGE 0 TO 1688:=900; 
SIGNAL LINE2_Y1: INTEGER RANGE 0 TO 1688:=500;
SIGNAL LINE2_X2: INTEGER RANGE 0 TO 1688:=899;
SIGNAL LINE2_Y2: INTEGER RANGE 0 TO 1688:=501;
SIGNAL DRAW1,DRAWSKY,DRAWCAR,DRAWLINE,DRAWDASH,DRAWDASH2,DRAWDASH3,DRAWDASH4,DRAWDASH5,DRAWLINE2,DRAWROAD:STD_LOGIC:='0';
SIGNAL HPOS: INTEGER RANGE 0 TO 1688:=0;
SIGNAL VPOS: INTEGER RANGE 0 TO 1066:=0;
SIGNAL KEYBOARDIN : STD_LOGIC;
SIGNAL DEPRESSED : STD_LOGIC := '0'; 
SIGNAL KEYBOARDCODE: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CAR_DATA: STD_LOGIC_VECTOR(11 DOWNTO 0);

BEGIN
SQ(HPOS,VPOS,SQ_X1,SQ_Y1,RGB,DRAW1);
SKY(HPOS,VPOS,SKY_X,SKY_Y,RGB,DRAWSKY);
LINEAR(HPOS,VPOS,LINE_X1,LINE_Y1,LINE_X2,LINE_Y2,RGB,DRAWLINE);
LINEARPOS(HPOS,VPOS,LINE2_X1,LINE2_Y1,LINE2_X2,LINE2_Y2,RGB,DRAWLINE2);
ROAD(HPOS,VPOS,LINE_X1,LINE_Y1,LINE_X2,LINE_Y2,LINE2_X1,LINE2_Y1,LINE2_X2,LINE2_Y2,RGB,DRAWROAD);
DASH(HPOS,VPOS,DASH_X,DASH_Y,RGB,DRAWDASH);
DASH(HPOS,VPOS,DASH2_X,DASH2_Y,RGB,DRAWDASH2);
DASH(HPOS,VPOS,DASH3_X,DASH3_Y,RGB,DRAWDASH3);
DASH(HPOS,VPOS,DASH4_X,DASH4_Y,RGB,DRAWDASH4);
DASH(HPOS,VPOS,DASH5_X,DASH5_Y,RGB,DRAWDASH5);
CAR(HPOS,VPOS,CAR_X,CAR_Y,CAR_DATA,RGB,DRAWCAR);

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
				R<=(others=>'0');
				G<=(others=>'1');
				B<=(others=>'0');
			END IF;
			IF(DRAWSKY='1')THEN
				R<=("0011");
				G<=("1000");
				B<=("1111");
			END IF;
			IF(DRAWLINE='1')THEN
				R<=(others=>'0');
				G<=(others=>'0');
				B<=(others=>'0');
			END IF;
			IF(DRAWLINE2='1')THEN
				R<=(others=>'0');
				G<=(others=>'0');
				B<=(others=>'0');
			END IF;
			IF(DRAWROAD='1')THEN
				R<=("0110");
				G<=("0110");
				B<=("0110");
			END IF;
			IF(DRAWDASH='1')THEN
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'1');
			END IF;
			IF(DRAWDASH2='1')THEN
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'1');
			END IF;
			IF(DRAWDASH3='1')THEN
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'1');
			END IF;
			IF(DRAWDASH4='1')THEN
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'1');
			END IF;
			IF(DRAWDASH5='1')THEN
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'1');
			END IF;
			IF(DRAWCAR = '1')THEN
				R<= CAR_DATA(11 downto 8);
				G<= CAR_DATA(7 downto 4);
				B<= CAR_DATA(3 downto 0);
			END IF;
			IF (DRAW1='0' AND DRAWSKY = '0' AND DRAWLINE = '0' AND DRAWLINE2 = '0' AND DRAWCAR ='0')THEN
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
							IF DEPRESSED = '1' THEN -- if a key is being pressed down
								CASE KEYBOARDCODE IS 
									WHEN "00100011" => -- when its A, go right
										CAR_X <= CAR_X + 5;
									WHEN "00011100" => -- when its D, go left
										CAR_X <= CAR_X - 5;
									WHEN OTHERS => -- when its anything else, stay still 
									CAR_X<=CAR_X;
									CAR_Y<=CAR_Y;
								END CASE;
							ELSE -- if a key is not being pressed down, stay still 
								CAR_X<=CAR_X;
								CAR_Y<=CAR_Y;
							END IF; 
							IF DASH_Y >= 1100 THEN
								DASH_Y <= 500;
							ELSE
								DASH_Y <= DASH_Y + DASH_Y/75;
							END IF;
							IF DASH2_Y >= 1100 THEN
								DASH2_Y <= 500;
							ELSE
								DASH2_Y <= DASH2_Y + DASH2_Y/75;
							END IF;
							IF DASH3_Y >= 1100 THEN
								DASH3_Y <= 500;
							ELSE
								DASH3_Y <= DASH3_Y + DASH3_Y/75;
							END IF;
							IF DASH4_Y >= 1100 THEN
								DASH4_Y <= 500;
							ELSE
								DASH4_Y <= DASH4_Y + DASH4_Y/75;
							END IF;
							IF DASH5_Y >= 1100 THEN
								DASH5_Y <= 500;
							ELSE
								DASH5_Y <= DASH5_Y + DASH5_Y/75;
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