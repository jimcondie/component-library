LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.my_package.all ;



ENTITY adder3 IS
PORT ( 
		V: IN STD_LOGIC_VECTOR(2 DOWNTO 0) ;
		S : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
		) ;
		END adder3 ;
		

ARCHITECTURE Structure OF adder3 IS
SIGNAL C : STD_LOGIC_VECTOR(1 TO 2) ;
SIGNAL GROUND : STD_LOGIC;
BEGIN
stage0: my_fulladd PORT MAP ( '0', V(0),'0' , S(0), C(1) ) ;
stage1: my_fulladd PORT MAP ( C(1), V(1),'1' , S(1), C(2) ) ;
stage2: my_fulladd PORT MAP ( C(2), V(2),'1' , S(2), GROUND ) ;
END Structure ;