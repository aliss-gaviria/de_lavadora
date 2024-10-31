library ieee;
use ieee.std_logic_1164.all;
entity de_lavadora is
port ( encendido, lleno, cerrado, clk: std_logic;
        llenado : out std_logic;         
        vaciado : out std_logic;       
        giro : out std_logic_vector(2 downto 0); 
        velocidad : out std_logic_vector(2 downto 0); 
        alarma: out std_logic
);
end de_lavadora;
architecture arch_lavadora of de_lavadora is 

component load
    Port ( clk : in STD_LOGIC;         
           reset : in STD_LOGIC; 
           load : in STD_LOGIC;			  
           pulse_out : out STD_LOGIC);  
end component;
component  memoria_rom_lavadora
	port
	(
		-- Input ports
		address	: in std_logic_vector( 3 downto 0);
		-- Output ports
		data_out_int :out integer  range 0 to 99
	);
end component;
component ciclo 
    Port (       
        encendido : in std_logic;     
        ciclo_oper: in integer range 0 to 14;		 
        llenado : out std_logic;         
        vaciado : out std_logic;       
        giro : out std_logic_vector(2 downto 0); 
        velocidad : out std_logic_vector(2 downto 0); 
        carga: out std_logic;
        alarma: out std_logic;
        cout : out integer range 0 to 99      
    );
end component;
begin
end arch_lavadora;