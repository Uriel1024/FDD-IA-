library ieee;
use ieee.std_logic_1164.all;

entity resta is port(
	a,b,pi: in std_logic;
	resta, po: out std_logic
);

end resta;

architecture aresta of resta is 
begin 
	resta <= a xor b xor pi;
	po <= (pi and (a xor b)) or ((not a) and b);

end aresta;
