-----------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------------------------
ENTITY circuit IS
	PORT (a,b,c: IN STD_LOGIC;
		  z : OUT STD_LOGIC);
END circuit;
-----------------------------------------------------------
ARCHITECTURE sequential OF circuit IS
	
BEGIN
	z <= (a AND b AND NOT c) OR (A AND B) OR C;

END sequential;
-----------------------------------------------------------	