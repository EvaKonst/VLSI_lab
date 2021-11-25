----------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
----------------------------------------------------
ENTITY and_xor IS

	PORT (a, b    : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	      res_and : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	      res_xor : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
		  
END and_xor;
----------------------------------------------------
ARCHITECTURE ax_circ OF and_xor IS

BEGIN
	res_and <= a AND b;
	res_xor <= a XOR b;
	
END ax_circ;
----------------------------------------------------