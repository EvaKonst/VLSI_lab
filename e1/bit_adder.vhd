----------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
----------------------------------------------------
ENTITY bit_adder IS
        PORT( a, b, cin         : IN  STD_LOGIC;
              sum, cout         : OUT STD_LOGIC );
END bit_adder;
----------------------------------------------------
ARCHITECTURE bit_adder_arc OF bit_adder IS

BEGIN
        
        sum <=  a XOR b XOR cin;
        cout <= (a AND b) OR (a AND cin) OR (b AND cin);
						
END bit_adder_arc;
-----------------------------------------------------