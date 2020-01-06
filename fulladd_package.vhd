LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
	

PACKAGE fulladd_package IS
	component fulladd is
		PORT ( Cin, x, y : IN STD_LOGIC ;
		s, Cout : OUT STD_LOGIC ) ;
	end component fulladd;
	

END fulladd_package ;

