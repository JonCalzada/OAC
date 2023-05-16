library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity async_rom is

	 generic (
	data_width: integer:=8;
	addr_length: integer:=3);
	port(
		addr: in std_logic_vector (addr_length-1 downto 0);
		cs: in std_logic;
		data: out std_logic_vector(data_width-1 downto 0)
		);
		
end entity async_rom;

architecture behavorial  of async_rom is
type memory is array(2**addr_length-1 downto 0) of std_logic_vector (data_width-1 downto 0);
signal rom_data: memory;

attribute ram_init_file: string;
attribute ram_init_file of rom_data: signal is "memoria2.mif";
Signal datum: std_logic_vector (data_width-1 downto 0);

begin
	process(addr)
	begin 
	datum<= rom_data(to_integer(unsigned(addr)));
end process;

process (datum, cs)
begin 
	if cs='1' then
	data<=datum;
	else
	data<= (others=>'Z');
	end if;
end process;
end architecture; 
