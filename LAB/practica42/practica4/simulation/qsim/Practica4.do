onerror {quit -f}
vlib work
vlog -work work Practica4.vo
vlog -work work Practica4.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Practica4_vlg_vec_tst
vcd file -direction Practica4.msim.vcd
vcd add -internal Practica4_vlg_vec_tst/*
vcd add -internal Practica4_vlg_vec_tst/i1/*
add wave /*
run -all
