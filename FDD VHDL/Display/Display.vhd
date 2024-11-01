library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

	
entity display is
    PORT (
        A, B, C, D : IN std_logic;   -- Entradas
        F, G, H, I, J, K, L : OUT std_logic  -- Salida
	);

	attribute pin_numbers of display: entity is
	"A:4 B:3 C:2 D:1 F:14 G:15 H:16 I:17 J:18 K:19 L:20 ";

    
END display;






architecture adisplay of display is
	begin
	   -- Segmento a
    f <= ((not a and not b) or (not a and d ) or 
		  (not a and c) or (b and c ) 
		  or (a and not d) or (a and not b and not c)); 
         
    -- Segmento b
    g <= ((not a and not c and not d) or (not a and not b)
    	or (not a and c and d) or (not b and not d) or 
		(a and not c and d) );
         
    -- Segmento c
    h <= ((not a and not c and not d) or (not a and b) 
		or (not a and c and d) or (a and not b));
         
    -- Segmento d
    i <= ((not a and not b and not d) or (not a and not b and c) 
		or (b and not c and d) );
         
    -- Segmento e
    j <= ((not b and not d) or (a and b) 
		or (c and not d) or (a and c));
         
    -- Segmento f
    k <= ((not c and not d ) or (not a and b and not c ) 
		or (a and not b) or (b and c and not d) or (a and c));
         
    -- Segmento g
    l <= ((not a and b and not c) or (not a and not b and c) 
		or (a and not b) or (c and not d) or (a and d));
	
	end adisplay;
