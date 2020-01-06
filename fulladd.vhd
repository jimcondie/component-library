LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

entity fulladd is
PORT ( Cin, x, y : IN STD_LOGIC ;
		s, Cout : OUT STD_LOGIC ) ;
end fulladd;
	


ARCHITECTURE LogicFunc OF fulladd IS

BEGIN
s <= x XOR y XOR Cin ;
Cout <= (x AND y) OR (Cin AND x) OR (Cin AND y) ;
END LogicFunc ;