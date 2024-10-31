library ieee;
use ieee.std_logic_1164.all;

entity ciclo_oper is
    port(
        finalizado: in std_logic;
        ciclo: out integer range 0 to 14
    );
end ciclo_oper;

architecture arch_ciclo_oper of ciclo_oper is
    signal fin: integer range 0 to 14 := 0;

    procedure incrementar_ciclo(signal fin: inout integer range 0 to 14) is
    begin
        if fin < 14 then
            fin <= fin + 1;
        else
            fin <= 14;
        end if;
    end procedure;

begin
    ciclo_operacion: process(finalizado)
    begin
        if finalizado = '1' then
            incrementar_ciclo(fin);
        end if;
    end process;

    ciclo <= fin;

end arch_ciclo_oper;
