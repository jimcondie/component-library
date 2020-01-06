LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

entity d_flip_flop_fall_edge is 
port ( clk, D: in std_logic;
       Q: out std_logic
       );
end d_flip_flop_fall_edge;

architecture behavior of d_flip_flop_fall_edge is
begin
	process(clk)
	begin
		  if clk'EVENT and clk='0' then
		  Q <=D;
		  end if;
	end process;
end behavior;