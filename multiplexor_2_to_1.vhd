LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

entity multiplexor_2_to_1 is 
	port (i_0, i_1, s : in std_logic;
      m: out std_logic);      
end multiplexor_2_to_1;

architecture behavior of multiplexor_2_to_1 is
begin
	m<=(i_0 and not(s)) or (i_1 and s);
end;
