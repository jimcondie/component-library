LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

entity half_adder is
port (a, b : in std_logic;
      s, c_o: out std_logic
      );
      
      end half_adder;
      
architecture behavior of half_adder is
begin

	c_o <= a and b;
	s <= a xor b;
	
 end behavior;
 