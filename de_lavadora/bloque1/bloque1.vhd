library ieee;
use ieee.std_logic_1164.all;

entity bloque1 is
    port (
        -- Input ports
        reloj, enable, reset,load,encendida: in std_logic;
        count_in: in integer range 0 to 99;
        -- Output ports
        uni, dece: out std_logic_vector(6 downto 0);
        finalizado: out std_logic
    );
end bloque1;

architecture arch_bloque1 of bloque1 is
    signal cen: std_logic_vector(6 downto 0);
    signal clk: std_logic;
    signal out1, out2: std_logic;
    signal unidades, decenas: std_logic_vector(6 downto 0);

    component divisorfrecuencia
        port (
            clk: in std_logic;
            out1, out2: out std_logic  
        );
    end component;

 component contador_lavadora 
    PORT (
        clk        : IN std_logic;
        reset      : IN std_logic;
        enable     : IN std_logic;
        load       : IN std_logic;
        count_in   : IN integer range 0 to 99;
		  encendida: in std_logic;
        count      : OUT std_logic_vector(6 DOWNTO 0);
        finalizado : OUT std_logic  
    );
END component;

    component separador
        port (
            en: in std_logic_vector(6 downto 0);
            unidades, decenas: out std_logic_vector(6 downto 0)
        );
    end component;

    component decobcda7segmentos
        port (
            A, B, C, D: in std_logic;
            S: out std_logic_vector(6 downto 0)
        );
    end component;

begin
    clk <= reloj;
    
    u_d: divisorfrecuencia port map(clk => reloj, out1 => out1, out2 => out2);
    u_c: contador_lavadora port map(clk => out1, reset=>reset, enable => enable, load => load, count_in => count_in, encendida=>encendida, count => cen, finalizado => finalizado);
    u_s: separador port map(en => cen, decenas => decenas, unidades => unidades);
    u_deco_uni: decobcda7segmentos port map(A => unidades(3), B => unidades(2), C => unidades(1), D => unidades(0), S => uni);
    u_deco_dece: decobcda7segmentos port map(A => decenas(3), B => decenas(2), C => decenas(1), D => decenas(0), S => dece);
    
end arch_bloque1;
