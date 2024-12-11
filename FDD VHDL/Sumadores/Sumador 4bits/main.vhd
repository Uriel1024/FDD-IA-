library ieee;
use ieee.std_logic_1164.all;

entity sum_res is
    port (
        A, B : in std_logic_vector(3 downto 0); 
        S : out std_logic_vector(3 downto 0); 
        cout : out std_logic                    
    );	
	attribute pin_numbers of sum_res: entity is
	"A(0):1 A(1):2 A(2):3 A(3):4 B(0):5 B(1):6 B(2):7 B(3):8"
	& " S(0):14 S(1):15 S(2):16 S(3):17 cout:18 ";		
end sum_res;

architecture asum_res of sum_res is
signal c: std_logic_vector(2 downto 0);
ATTRIBUTE synthesis_off OF c : SIGNAL IS true;
begin
			S(0) <= A(0) xor B(0);
			C(0) <= A(0) and B(0);
			S(1) <= (A(1) xor B(1) xor C(0));
			C(1) <= (A(1) and B(1)) or (C(0) and (A(1) xor B(1)));
		    S(2) <= (A(2) xor B(2) xor C(1));
			C(2) <= (A(2) and B(2)) or (C(1) and (A(2) xor B(2)));
			S(3) <= (A(3) xor B(3)) xor C(2);
			cout <= (A(3) and B(3)) or (C(2) and (A(3)  xor B(3)));
 end asum_res;





