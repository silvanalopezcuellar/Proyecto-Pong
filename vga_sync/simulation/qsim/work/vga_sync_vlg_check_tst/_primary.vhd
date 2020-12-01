library verilog;
use verilog.vl_types.all;
entity vga_sync_vlg_check_tst is
    port(
        h_video_on_out  : in     vl_logic;
        hsync_out       : in     vl_logic;
        pixel           : in     vl_logic_vector(11 downto 0);
        v_video_on_out  : in     vl_logic;
        vsync_out       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end vga_sync_vlg_check_tst;
