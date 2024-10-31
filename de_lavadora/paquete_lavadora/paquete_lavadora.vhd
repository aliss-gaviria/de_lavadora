library ieee;
use ieee.std_logic_1164.all;
package paquete_lavadora is
 component decobcda7segmentos is 
	  port(
        -- Input ports
	     A,B,C,D	: in  std_logic;
		  -- Output ports
	     S : out std_logic_vector(  6 downto 0 ));
 end component;
 component separador is 
 	port
	(
		-- Input ports
	en	: in  std_logic_vector(6 downto 0);
		-- Output ports
		unidades,decenas	: out std_logic_vector(6 downto 0)
	);
end component;
component divisorfrecuencia is 
port
	(
		-- Input ports
	clk: in  std_logic;	
		-- Output ports
		out1, out2	: buffer std_logic		
	);
end component;
component contador is
PORT (
        clk      : IN std_logic;
        reset    : IN std_logic;
        enable   : IN std_logic;
        load     : IN std_logic;
        count_in : IN std_logic_vector(6 downto 0);
        count    : OUT std_logic_vector(6 DOWNTO 0);
        finalizado : OUT std_logic  
    );
END component;
end paquete_lavadora;

