-----------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------------------------
ENTITY mux IS
	GENERIC (N: INTEGER := 8);
	PORT (a,b: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		  sel: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		  x: OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END mux;
-----------------------------------------------------------
ARCHITECTURE with_WHEN OF mux IS
	BEGIN
	x <= a WHEN sel="01" ELSE
		 b WHEN sel="10" ELSE
	     "00000000" WHEN sel="00" ELSE
		(OTHERS => 'Z');
END with_when;
-----------------------------------------------------------