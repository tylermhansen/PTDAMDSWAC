import graphics
import display
import sys

def decimalToBinary(n): 
    return bin(n).replace("0b","") 

# converts d to an 8-bit unsigned binary value
def dec2bin8(d):
    if d > 0:
        l = d.bit_length()
        v = "00000000"
        v = v[0:8-l] + format( d, 'b' )
    elif d == 0:
        v = "00000000"
    else:
        print ('Invalid v: value is negative')
        exit()

    return v

def printStart( argv ): # this just handles all of the static starting prints
	print('-- Tyler Hansen')
	print('-- CS232 Final Project')
	print('-- genSpriteROM.py')
	print('-- generates a ROM file in VHDL from a .ppm image')
	print('')
	print('library ieee;')
	print('use ieee.std_logic_1164.all;')
	print('use ieee.numeric_std.all;')
	print('')
	print('entity ' + argv[1][:-4] + ' is')
	print('port(')
	print('X	: in INTEGER RANGE 0 TO 1688;')
	print('Y	: in INTEGER RANGE 0 TO 1688;')
	print('data : out std_logic_vector (11 downto 0)')
	print(');')
	print('')
	print('end entity;')
	print('')
	print('architecture rtl of ' + argv[1][:-4] + ' is')
	print('begin')
	print('data <=')
	return

def main( argv ):
	f = open(argv[1][:-3] + 'vhd', 'w')
	sys.stdout = f
	if len(argv) < 2:
		print ('Usage: python %s <filename>' % (argv[0]))
		exit()
		return
	printStart( argv )
	src = graphics.Image(graphics.Point(0, 0), argv[1])
	display.displayImage(src, argv[1][:-4])
	num_rows = src.getHeight()
	num_cols = src.getWidth()
	row = 0	
	col = 0
	while row < num_rows:
		while col < num_cols:
			(r, g, b) = src.getPixel(col, row)
			pixelString = "\"" + dec2bin8(r) + dec2bin8(g) + dec2bin8(b) + "\" when X = \"" + str(row) + "\" AND Y = \"" + str(col) + "\" else"    
			print (pixelString)
			col += 1
		col = 0
		row += 1
	print ('"000000000000000000000000"; -- should never get here') 
	print ("end rtl;")
	f.close()

	return

if __name__ == '__main__':
	main(sys.argv)
