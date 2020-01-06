LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

entity zeroth_digit_decoder is
 		port ( m: in STD_LOGIC_VECTOR (3 downto 0);
			   L: out STD_LOGIC_VECTOR (0 to 6)
			   );
	end zeroth_digit_decoder;


architecture behavior of zeroth_digit_decoder is
begin

L(0) <= not(m(3)) and not(m(1)) and (not(m(2)) or not(m(0))) and ((m(0)) or (m(2)));
L(1) <= not(m(3)) and (m(2)) and (not(m(1)) or not(m(0))) and ((m(1)) or (m(0)));
L(2) <= (not(m(2)) and (m(1)) and not(m(0)));
L(3) <= (m(2) and not(m(1)) and not(m(0))) or (not(m(3)) and not(m(2)) and not(m(1)) and m(0)) or (m(2) and m(1) and m(0));
L(4) <= ((m(2)) or (m(0))) and (not(m(1)) or (m(0)));
L(5) <= not(m(3)) and (not(m(2)) or (m(0))) and (not(m(2)) or m(1)) and (m(1) or m(0));
L(6) <= not(m(3)) and (not(m(1)) or m(0)) and (not(m(2)) or m(1)) and (not(m(1)) or m(2));

end behavior;
