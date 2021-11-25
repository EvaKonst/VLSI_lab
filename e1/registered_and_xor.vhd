-----------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------------------------
ENTITY registered_and_xor IS

	PORT (clk      : IN STD_LOGIC;
		  a, b     : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	      reg_and : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	      reg_xor : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
		  
END registered_and_xor;
-----------------------------------------------------------
ARCHITECTURE reg_ax_circ OF registered_and_xor IS

	SIGNAL res_and, res_xor: STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN
	res_and <= a AND b;
	res_xor <= a XOR b;
	PROCESS(clk)
	BEGIN
			IF(clk'EVENT AND clk='1')THEN
				reg_and <= res_and;
				reg_xor <= res_xor;
			END IF;
	END PROCESS;
	
END reg_ax_circ;
-----------------------------------------------------------