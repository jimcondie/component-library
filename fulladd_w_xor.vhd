--full add with modified XOR

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

entity fulladd_w_xor is
PORT ( Cin, x, y , c_in_en: IN STD_LOGIC ;
		s,Cout: OUT STD_LOGIC ) ;
end fulladd_w_xor;
	


ARCHITECTURE LogicFunc OF fulladd_w_xor IS
signal c_in_p:  std_logic;
BEGIN

c_in_p <=Cin AND c_in_en;
s <= x XOR y XOR c_in_p;
Cout <= (x AND y) OR (Cin AND x) OR (Cin AND y) ;

END LogicFunc ;