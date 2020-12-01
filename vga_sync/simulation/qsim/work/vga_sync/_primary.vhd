library verilog;
use verilog.vl_types.all;
entity vga_sync is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        pixel           : out    vl_logic_vector(11 downto 0);
        h_video_on_out  : out    vl_logic;
        v_video_on_out  : out    vl_logic;
        vsync_out       : out    vl_logic;
        hsync_out       : out    vl_logic
    );
end vga_sync;
