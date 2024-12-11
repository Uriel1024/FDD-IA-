	--DEC 4x10
	
	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	
		
	entity DEC is
	    PORT (
			E : in std_logic_vector(4 downto 0);
			D : out std_logic_vector(9 downto 0)
		);
		attribute pin_numbers of DEC: entity is 
		" E(0):1 E(1):2 E(2):3 E(3):4 " 
		& " D(0):14 D(1):15 D(2):16 D(3):17 D(4):18 "
		& "D(5):19 D(6):20 D(7):21 D(8):22 ";
	END ;
	
	
	architecture ADEC of DEC is	
	begin
		pdec : process(E)
		begin
			case (E) is       
				when  "01111"  => D <=  "0111111111";
				when  "01110"  => D <=  "0011111111";
				when  "01101"  => D <=  "0101111111";
				when  "01100"  => D <=  "0110111111";
				when  "01011"  => D <=  "0111011111";
				when  "01010"  => D <=  "0111101111";
				when  "01001"  => D <=  "0111110111";
				when  "01000"  => D <=  "0111111011";
				when  "00111"  => D <=  "0111111101";
				when  "00110"  => D <=  "0111111110";
				when  "10000"  => D <=  "1000000000";
				when  "10001"  => D <=  "1100000000";
				when  "10010"  => D <=  "1010000000";
				when  "10011"  => D <=  "1001000000";
				when  "10100"  => D <=  "1000100000";
				when  "10101"  => D <=  "1000010000";
				when  "10110"  => D <=  "1000001000";
				when  "10111"  => D <=  "1000000100";
				when  "11000"  => D <=  "1000000010";
				when  "11001"  => D <=  "1000000001"; 			
				when others => D <=	 "0000000000";
				
				end case;
			end process pdec;
		end ADEC;

