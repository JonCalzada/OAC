Library IEEE;
Library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity registroIns is
Port (clk : in std_logic;
	reset : in std_logic;
	data_in : in std_logic_vector (1 downto 0);
	data_out : out std_logic_vector (1 downto 0);
ena:in std_logic);

end registroIns;

architecture Behavioral of registroIns is

signal internal_value : std_logic_vector (1 downto 0):=B"00";
constant alta_impedancia: std_logic_vector (1 downto 0) :="ZZ";
constant zero: std_logic_vector (1 downto 0) := B"00";


begin
process (clk, reset, data_in)
begin
	if reset = '0' then
		internal_value <= zero;
	elsif rising_edge (clk) then
		internal_value <= data_in;
	end if;
end process;

process (internal_value,ena)
begin
	if ena ='1' then
		data_out <= alta_impedancia;
	else
		data_out <= internal_value;
	end if ;
end process;
end Behavioral;

