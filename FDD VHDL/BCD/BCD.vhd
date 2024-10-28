library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd is
	port( 
		a,b,c,d : in std_logic; 
		f,g,h,i,j,k,l : out std_logic
	);
end bcd; 



 architecture abcd of bcd is  
 begin 
 	f <= c or a or (b and d) or (not b and not d); 
	g <= not b or (not c and not d) or (c and d);
	h <= not c or d or (a and not b);
	i <= (not b and c) or a or (not b and not d) or (c and not d) or (b and not c and d);
	j <= (not b and not d) or (c and not d);
	k <= (not c and not d) or a or (b and not c) or (b and not d);
	l <= a or (c and not c) or (b and not c) or (not b and c);
end abcd; 
