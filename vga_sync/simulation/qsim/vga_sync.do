onerror {quit -f}
vlib work
vlog -work work vga_sync.vo
vlog -work work vga_sync.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.vga_sync_vlg_vec_tst
vcd file -direction vga_sync.msim.vcd
vcd add -internal vga_sync_vlg_vec_tst/*
vcd add -internal vga_sync_vlg_vec_tst/i1/*
add wave /*
run -all
