library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

	
entity bcd is
    PORT (
		E : in std_logic_vector(3 downto 0);
		DIS : out std_logic_vector(6 downto 0)
	);
	attribute pin_numbers of bcd: entity is 
	" E(0):4 E(1):3 E(2):2 E(3):1" 
	& " DIS(0):14 DIS(1):15 DIS(2):16 DIS(3):17 DIS(4):18 " 
    & " DIS(5):19 DIS(6):20";
END bcd;


architecture abcd of bcd is	
begin
	pbcd : process(E)
	begin
		case (E) is        --ABCDEFG
			when "0000" => DIS<="1111110"; --0
			when "0001" => DIS<="0110000"; --1
			when "0010" => DIS<="1101101"; --2
			when "0011" => DIS<="1111001"; --3
			when "0100" => DIS<="0110011"; --4
			when "0101" => DIS<="1011011"; --5
 	    	when "0110" => DIS<="1011111"; --6
			when "0111" => DIS<="1110000"; --7
			when "1000" => DIS<="1111111"; --8
			when "1001" => DIS<="1111011"; --9
			when others => DIS<="0000000"; --void
			end case;
		end process pbcd;
	end abcd;
