Library IEEE;
Library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity incrementador is 
	port (Estado: in std_logic_vector(3 downto 0);
	sal: out std_logic_vector (3 downto 0));
	
end incrementador;

architecture Behavioral of  incrementador is 
	begin 
		process (Estado)
		begin 
			sal<=Estado+1;
			end process;
		end Behavioral;