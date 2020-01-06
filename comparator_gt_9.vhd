LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

entity comparator_gt_9 is
port( V : in std_logic_vector (3 downto 0);
		z: out std_logic	);
end comparator_gt_9;


architecture behavior of comparator_gt_9 is

begin

z<= (V(2) and V(3)) or (V(3) and V(1));
end behavior;