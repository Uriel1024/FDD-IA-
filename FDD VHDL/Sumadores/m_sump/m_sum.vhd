--Medio Sumador

library ieee;
use ieee.std_logic_1164.all;

entity m_sum is
	port(
	A,B: in std_logic;
	sum,cout: out std_logic
);
	attribute pin_numbers of m_sum: entity is
	"A:1 B:2 sum:14 cout:15";
end m_sum;

architecture am_sum of m_sum is 
begin 
	sum <= A xor B;
	cout <= A and B;
end am_sum;
