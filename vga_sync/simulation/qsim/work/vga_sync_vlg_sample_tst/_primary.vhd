library verilog;
use verilog.vl_types.all;
entity vga_sync_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end vga_sync_vlg_sample_tst;
