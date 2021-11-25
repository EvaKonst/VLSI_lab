---------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
---------------------------------------------------------------------
ENTITY ram IS
 PORT (clk: IN STD_LOGIC;
		we: IN STD_LOGIC;
		wr_address: IN INTEGER RANGE 0 TO 31;
 rd_address: IN INTEGER RANGE 0 TO 31;
 data_in: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
 data_out: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
 END ram;
---------------------------------------------------------------------
ARCHITECTURE fpga_ram OF ram IS
 TYPE memory IS ARRAY (0 to 31) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
 SIGNAL myram: memory;
 --ATTRIBUTE ram_init_file: STRING;
 --ATTRIBUTE ram_init_file OF my_ram: SIGNAL IS "ram_contents.mif";
 ATTRIBUTE ramstyle: STRING;
 ATTRIBUTE ramstyle OF myram: SIGNAL IS "M4K";
	BEGIN
		PROCESS (clk)
		BEGIN
		IF (clk'EVENT AND clk='1') THEN
			IF (we='1') THEN
			myram(wr_address) <= data_in;
			END IF;
		data_out <= myram(rd_address);
		END IF;
		END PROCESS;
		
 END fpga_ram;
---------------------------------------------------------------------