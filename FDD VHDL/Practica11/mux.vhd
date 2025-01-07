library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_8a1 is
    Port (
        I0, I1, I2, I3, I4, I5, I6, I7 : in STD_LOGIC;
        S : in STD_LOGIC_VECTOR (2 downto 0);        
        Y : out STD_LOGIC                             
    );

	attribute pin_numbers of MUX_8a1: entity is 
    "S(0):1 S(1):2 S(2):3 ";
end MUX_8a1;

architecture AMUX_8a1 of MUX_8a1 is
begin
    with S select
        Y <= '0' when "000",  
             '1' when "001",  
             '0' when "010",   
             '0' when "011",  
             '1' when "100",  
             '1' when "101",  
             '1' when "110",  
             '0' when OTHERS; 
end AMUX_8a1;
