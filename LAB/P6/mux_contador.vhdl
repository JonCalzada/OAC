Library IEEE;
use ieee.std_logic_1164.all;
entity  mux_contador is 
	port (
			sel:in std_logic;
			e0: in std_logic_vector(3 downto 0);
			e1: in std_logic_vector (3 downto 0);
			salida : out std_logic_vector (3 downto 0)
			);
end mux_contador;

architecture Behavioral of mux_contador is 


BEGIN 
	process (sel,e0,e1)
	begin 
		if sel = '0' then 
			salida <= e0;
			elsif sel='1' then 
				salida <= e1;
			end if;
	end process;
end Behavioral;