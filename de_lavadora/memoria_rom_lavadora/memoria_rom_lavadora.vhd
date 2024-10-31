library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity  memoria_rom_lavadora is
	port
	(
		-- Input ports
		address	: in std_logic_vector( 3 downto 0);
		-- Output ports
		data_out_int :out integer  range 0 to 99
	);
end memoria_rom_lavadora;


architecture arch_memoria_rom_lavadora of memoria_rom_lavadora is
type ROM_TYPE is array (0 to 99)of std_logic_vector( 7 downto 0);
constant ROM:ROM_TYPE:= ( 
                         1 => "00011110",
		                   2 => "00101101",
		                   3 => "00101101", 
		                   4 => "00101101",
		                   5 => "00011110",
		                   6 => "00011110",
		                   7 => "01001011",
		                   others => x"00");

begin
data_out_int<=to_integer(unsigned(ROM(to_integer(unsigned(address)))));


end arch_memoria_rom_lavadora;
