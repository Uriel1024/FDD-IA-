library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--ESTE ES EL SUMADOR COMPLETO
entity SC is
	Port (
    	A : in STD_LOGIC;
    	B : in STD_LOGIC;
    	Cin : in STD_LOGIC;
    	Sum : out STD_LOGIC;
    	Co : out STD_LOGIC
	);
end SC;

architecture SC_arc of SC is
begin
	Sum <= A XOR B XOR Cin;    	 
	Co <= (A AND B) OR (Cin AND (A XOR B));
end SC_arc;