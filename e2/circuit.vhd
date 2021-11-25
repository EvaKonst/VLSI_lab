-----------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------------------------
ENTITY circuit IS
	PORT (a,b,c: IN STD_LOGIC;
		  z : OUT STD_LOGIC);
END circuit;
-----------------------------------------------------------
ARCHITECTURE behavioral OF circuit IS
BEGIN
	z <= '1' WHEN (a AND b) = '1' ELSE
		 '1' WHEN c = '1' ELSE '0';
		 
END behavioral;