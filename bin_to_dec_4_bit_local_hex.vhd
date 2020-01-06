--the only difference between this file and bin_to_dec_4_bit
--is that this file will not turn off other unused seven seg displays (hex's)

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
use work.my_package.all;


entity bin_to_dec_4_bit_local_hex is
port(V : IN std_logic_vector(3 downto 0);
	 d_1, d_0 : OUT std_logic_vector(0 to 6)
	 );
end bin_to_dec_4_bit_local_hex;

architecture behavior of bin_to_dec_4_bit_local_hex is
signal z : std_logic;
signal m : std_logic_vector (3 downto 0);
signal S : std_logic_vector (2 downto 0);

begin

gt_9 : comparator_gt_9 PORT MAP (V, z);

multiplex_3 : multiplexor_2_to_1 PORT MAP (V(3),'0',z,m(3));
multiplex_2 : multiplexor_2_to_1 PORT MAP (V(2),S(2),z,m(2));
multiplex_1 : multiplexor_2_to_1 PORT MAP (V(1),S(1),z,m(1));
multiplex_0 : multiplexor_2_to_1 PORT MAP (V(0),S(0),z,m(0));

add_6: adder3 PORT MAP (V(2 downto 0), S);

left_digit: first_digit_decoder PORT MAP (z, d_1);

right_digit: zeroth_digit_decoder PORT MAP (m, d_0);


end behavior;