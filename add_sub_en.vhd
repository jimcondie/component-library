--adder/subtractor modified for EE421 proj. 1
--modified in that cin is not connected to add/sub unit

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.proj_1_package.all ;

ENTITY add_sub_en IS
PORT ( Cin, B_En, Add_Sub, C_in_en : IN STD_LOGIC ;
		A, B : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		Cout : OUT STD_LOGIC;
		Overflow : out std_logic ) ;
END add_sub_en ;
		

ARCHITECTURE structure OF add_sub_en IS
SIGNAL C: STD_LOGIC_VECTOR(1 TO 3) ;
signal B_p: std_logic_vector (3 downto 0);
signal Cout_w: std_logic;
BEGIN
B_p(3)<=(Add_Sub XOR B(3)) AND B_En;
B_p(2)<=(Add_Sub XOR B(2)) AND B_En;
B_p(1)<=(Add_Sub XOR B(1)) AND B_En;
B_p(0)<=(Add_Sub XOR B(0)) AND B_En;


stage0: fulladd_w_xor PORT MAP ( Cin, A(0), B_p(0),C_in_en, S(0), C(1) ) ;
stage1: fulladd_w_xor PORT MAP ( C(1), A(1), B_p(1),C_in_en, S(1), C(2) ) ;
stage2: fulladd_w_xor PORT MAP ( C(2), A(2), B_p(2),C_in_en, S(2), C(3) ) ;
stage3: fulladd_w_xor_last_bit PORT MAP ( C(3), A(3), B_p(3),C_in_en, S(3), Cout_w ) ;


--discard carryout bit if subtraction
Cout <= not(Cout_w) NOR (Add_Sub);

--check for overflow
Overflow <=Cout_w XOR C(3);

END structure ;