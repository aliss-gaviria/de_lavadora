library ieee;
use ieee.std_logic_1164.all;

package package_ciclo_oper is
signal fin: integer range 0 to 14 := 0;
procedure incrementar_ciclo(signal fin: inout integer range 0 to 14);
end package_ciclo_oper;

package body package_ciclo_oper is
procedure incrementar_ciclo(signal fin: inout integer range 0 to 14) is
    begin
        if fin < 14 then
            fin <= fin + 1;
        else
            fin <= 14;
        end if;
    end procedure;

end package body package_ciclo_oper;





