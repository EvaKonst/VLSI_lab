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
ARCHITECTURE with_SELECT OF mux IS
	BEGIN
	WITH sel SELECT
	x <= "00000000" WHEN "00",
		  a WHEN "01",
		  b WHEN "10",
	     "ZZZZZZZZ" WHEN OTHERS;
END with_SELECT;
-----------------------------------------------------------