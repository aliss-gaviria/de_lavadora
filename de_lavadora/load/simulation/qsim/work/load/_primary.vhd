library verilog;
use verilog.vl_types.all;
entity load is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        load            : in     vl_logic;
        pulse_out       : out    vl_logic
    );
end load;
