library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_nbits is
generic(
data_width: integer:=2
);

port(
clk:in std_logic;
data_in: in std_logic_vector(data_width-1 downto 0);
data_out: out std_logic_vector(data_width-1 downto 1)
);
end entity;



architecture behavioral of register_nbits is
signal data: std_logic_vector(data_width-1 downto 0);

begin

process (clk)
begin
if rising_edge(clk) then
	data <= data_in;
	end if;
	end process;
process (data)
begin
data_out<=data;
end process;
end behavioral;