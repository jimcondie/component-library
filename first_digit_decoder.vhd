LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

--decodes d1 for d1d0 (2nd digit if starting from 1 d2d1)
entity first_digit_decoder is
port (z : in std_logic;
      led : out std_logic_vector(0 to 6)
      );
end first_digit_decoder;

architecture behavior of first_digit_decoder is
begin
led(6) <= '1';
led(5) <= (z);
led(4) <= (z);
led(3) <= (z);
led(2) <= '0';
led(1) <= '0';
led(0) <= (z);

	
end behavior;