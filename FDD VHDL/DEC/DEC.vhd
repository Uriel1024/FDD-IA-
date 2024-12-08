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
	& " D(0):23 D(1):22 D(2):21 D(3):20 D(4):19 "
	& "D(5):18 D(6):17 D(7):16 D(8):15 D(9):14";
END ;


architecture ADEC of DEC is	
begin
	pdec : process(E)
	begin
		case (E) is       
			when  "0000"  => D <=  "0000000000";
			when  "0001"  => D <=  "1000000000";
			when  "0010"  => D <=  "0100000000";
			when  "0011"  => D <=  "0010000000";
			when  "0100"  => D <=  "0001000000";
			when  "0101"  => D <=  "0000100000";
			when  "0110"  => D <=  "0000010000";
			when  "0111"  => D <=  "0000001000";
			when  "1000"  => D <=  "0000000100";
			when  "1001"  => D <=  "0000000010";
			when  "1010"  => D <=  "0000000001";
			when others => D <= "1111111111";
			end case;
		end process pdec;
	end ADEC;

