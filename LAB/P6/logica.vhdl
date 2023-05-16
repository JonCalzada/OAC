library IEEE; 

use IEEE.STD_LOGIC_1164.ALL; 
entity logica is 
port (instruccion: in std_logic_vector (1 downto 0); 
	ncc: in std_logic;
	selector: out std_logic; 
	npl: out std_logic; 
	nmap: out std_logic; 
	nvect: out std_logic);
end logica; 
architecture Behavioral of logica is 
begin 
	process (instruccion, ncc) 
		begin 
			if instruccion ="00" then 
				selector <= '0'; 
				npl <='1'; 
				nmap <='1';
				nvect <='1'; 
			elsif instruccion ="01" then 
				if ncc='0' then
				selector <= '1';
				else selector <='0';
				end if ;
				npl <= '0';
				nmap <= '1';
				nvect <= '1';
			elsif	instruccion ="10" then 
				selector <= '1';
				npl <= '1';
				nmap <= '0';
				nvect <='1';
			elsif instruccion ="11" then 
				if  ncc ='0' then 
				selector <= '1';
				else selector <= '0';
				end if; 
				npl <= '1';
				nmap <='1';
				nvect <='0';
				end if ;
			end process;
end Behavioral;
