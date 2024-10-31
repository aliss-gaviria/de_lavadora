library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ciclo is
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
end ciclo;

architecture arch_ciclo_operacion of ciclo is

    type state_type is (S_APAGADO, S_LLENA, S_LAVA, S_ENJUAGA, S_CENTRIFUGA, S_ALARMA);
    signal estado, siguiente_estado: state_type ;

begin

    
    process(encendido, estado, ciclo_oper)
    begin
        if encendido = '0' then
            siguiente_estado <= S_APAGADO;
        else
            case estado is
                when S_APAGADO =>
                    cout <= 0;
                    llenado <= '0';
                    vaciado <= '0';
                    giro <= "111"; -- nada
                    velocidad <= "111"; -- nada
                    alarma <= '0';
                    carga <= '0';
                    
                    case ciclo_oper is
                        when 0 => 
								siguiente_estado <= S_LLENA; -- Llenado
                        when 1 => 
								siguiente_estado <= S_APAGADO; -- Fin de llenado
                        when 2 => 
								siguiente_estado <= S_LAVA; -- Lavado
                        when 3 => 
								siguiente_estado <= S_APAGADO; -- Fin de lavado
                        when 4 => 
								siguiente_estado <= S_LLENA; -- Llenado
                        when 5 => 
								siguiente_estado <= S_APAGADO; -- Fin de lavado
                        when 6 => 
								siguiente_estado <= S_LLENA; -- Vaciado
                        when 7 => 
								siguiente_estado <= S_APAGADO; -- Fin de vaciado
                        when 8 => 
								siguiente_estado <= S_LLENA; -- Llenado
                        when 9 => 
								siguiente_estado <= S_LAVA; -- Enjuagar
                        when 10 => 
								siguiente_estado <= S_LLENA; -- Llenado
                        when 11 => 
								siguiente_estado <= S_APAGADO; -- Fin de enjuagar
                        when 12 => 
								siguiente_estado <= S_LLENA; -- Llenado
                        when 13 => 
								siguiente_estado <= S_CENTRIFUGA; -- Centrifugar
                        when 14 => 
								siguiente_estado <= S_ALARMA; -- Alarma
                        when others => siguiente_estado <= S_APAGADO; 
                    end case;

                when S_LLENA =>
                    if ciclo_oper = 0 then
                        cout <= 30;
                        llenado <= '1';
                        vaciado <= '0';
                        giro <= "111"; -- nada
                        velocidad <= "111"; -- nada
                        alarma <= '0';
                        carga <= '1';
                    else
                        cout <= 0;
                        llenado <= '0';
                        vaciado <= '0';
                        giro <= "111"; -- nada
                        velocidad <= "111"; -- nada
                        alarma <= '0';
                        carga <= '0';
                    end if;
                    siguiente_estado <= S_APAGADO; -- Regresar a apagado

                when S_LAVA =>
                    cout <= 0;
                    giro <= "000"; -- derecha
                    velocidad <= "111"; -- lenta
                    llenado <= '0';
                    vaciado <= '0';
                    alarma <= '0';
                    carga <= '0';
                    siguiente_estado <= S_ENJUAGA; -- Pasar a enjuagar

                when S_ENJUAGA =>
                    cout <= 75;
                    llenado <= '0';
                    vaciado <= '0';
                    giro <= "111"; -- nada
                    velocidad <= "011"; -- rápida
                    alarma <= '0';
                    carga <= '1';
                    siguiente_estado <= S_CENTRIFUGA; -- Pasar a centrifugar

                when S_CENTRIFUGA =>
                    cout <= 0;
                    giro <= "111"; -- derecha
                    velocidad <= "111"; -- rápida
                    llenado <= '0';
                    vaciado <= '0';
                    alarma <= '0';
                    carga <= '0';
                    siguiente_estado <= S_APAGADO; -- Regresar a apagado

                when S_ALARMA =>
                    cout <= 0;
                    llenado <= '0';
                    vaciado <= '0';
                    giro <= "111"; -- nada
                    velocidad <= "111"; 
                    alarma <= '1';
                    carga <= '0';
                    siguiente_estado <= S_APAGADO; -- Regresar a apagado

                when others =>
                    siguiente_estado <= S_APAGADO;
            end case;
        end if;
    end process;

  
    process(encendido, siguiente_estado)
    begin
        if encendido = '0' then
            estado <= S_APAGADO;
        else
            estado <= siguiente_estado;
        end if;
    end process;

end arch_ciclo_operacion;
