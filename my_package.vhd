LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
	

PACKAGE my_package IS

	component multiplexor_2_to_1 is
		PORT ( i_0, i_1, s : IN STD_LOGIC ;
				m : OUT STD_LOGIC ) ;
	end component multiplexor_2_to_1;
	
	component comparator_gt_9 is
		port( V : in std_logic_vector (3 downto 0);
		z: out std_logic	);
	end component comparator_gt_9;
	
	
	component first_digit_decoder is
		port (z : in std_logic;
		led : out std_logic_vector(0 to 6)
		);
	end component first_digit_decoder;
	
	component adder3 IS
		PORT (
				V: IN STD_LOGIC_VECTOR(2 DOWNTO 0) ;
				S : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
				) ;
	END component adder3 ;
	
	component adder4 is
		port (
			 Cin : IN STD_LOGIC ;
			X, Y : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			Cout : OUT STD_LOGIC ) ;
	end component adder4;
	
	component zeroth_digit_decoder is
		port ( m: in STD_LOGIC_VECTOR (3 downto 0);
			   L: out STD_LOGIC_VECTOR (0 to 6)
			   );
	end component zeroth_digit_decoder;
	
	
	component fulladd is
		PORT ( Cin, x, y : IN STD_LOGIC ;
				s, Cout : OUT STD_LOGIC ) ;
	end component fulladd;
	
	component my_fulladd is
		PORT ( Cin, x, y : IN STD_LOGIC ;
				s, Cout : OUT STD_LOGIC ) ;
	end component my_fulladd;
	
	component half_adder is
		PORT (a, b : in std_logic;
			  s, c_o: out std_logic
			  );
	end component half_adder;
	
	component bin_to_dec_4_bit_local_hex is
		port(V : IN std_logic_vector(3 downto 0);
			d_1, d_0 : OUT std_logic_vector(0 to 6)
			);
	end component bin_to_dec_4_bit_local_hex;
	
	component shift8 is
		port(
			clock, Resetn, w : in std_logic;
			Q : BUFFER std_logic_vector(7 downto 0)
			);	
	end component shift8;
	
	
	component counter is
		port( 	CLOCK : in STD_LOGIC;
			    COUNT_OUT : out STD_LOGIC);
	end component counter;
		
		
END my_package ;