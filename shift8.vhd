LIBRARY IEEE;
use ieee.std_logic_1164.all;


entity shift8 is

port (
	clock, Resetn, w : in std_logic;
	Q : BUFFER std_logic_vector(7 downto 0)
	)	;
end shift8;

architecture behavior of shift8 is

begin
	process (Resetn, clock)
	begin
	if Resetn='0' then
		Q <= (others => '0'); 
	elsif (clock'EVENT and clock='1') then
		Q(0)<=w;
		Q(1)<=Q(0);
		Q(2)<=Q(1);
		Q(3)<=Q(2);
		Q(4)<=Q(3);
		Q(5)<=Q(4);
		Q(6)<=Q(5);
		Q(7)<=Q(6);
		end if;
	end process;
end behavior;