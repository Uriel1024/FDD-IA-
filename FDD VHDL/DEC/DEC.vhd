--DEC 4x10

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

	
entity DEC is
    PORT (
		E : in std_logic_vector(3 downto 0);
		D : out std_logic_vector(9 downto 0)
	);
	attribute pin_numbers of DEC: entity is 
	" E(0):1 E(1):2 E(2):3 E(3):4 " 
	& " D(0):14 D(1):15 D(2):16 D(3):17 D(4):18 "
	& "D(5):19 D(6):20 D(7):21 D(8):22 D(9):23";
END ;


architecture ADEC of DEC is	
begin
	pdec : process(E)
	begin
		case (E) is       
			when  "1111"  => D <=  "1111111111";
			when  "1110"  => D <=  "0111111111";
			when  "1101"  => D <=  "1011111111";
			when  "1100"  => D <=  "1101111111";
			when  "1011"  => D <=  "1110111111";
			when  "1010"  => D <=  "1111011111";
			when  "1001"  => D <=  "1111101111";
			when  "1000"  => D <=  "1111110111";
			when  "0111"  => D <=  "1111111011";
			when  "0110"  => D <=  "1111111101";
			when  "0101"  => D <=  "1111111110";
			when others => D <= "0000000000";
			end case;
		end process pdec;
	end ADEC;

