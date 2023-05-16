vlog -work work C:/Users/yoter/OneDrive/Documentos/2023-2/OAC/practica42/practica4/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Practica4_vlg_vec_tst
onerror {resume}
add wave {Practica4_vlg_vec_tst/i1/AUX}
add wave {Practica4_vlg_vec_tst/i1/CLK}
add wave {Practica4_vlg_vec_tst/i1/edoPresente}
add wave {Practica4_vlg_vec_tst/i1/edoPresente[2]}
add wave {Practica4_vlg_vec_tst/i1/edoPresente[1]}
add wave {Practica4_vlg_vec_tst/i1/edoPresente[0]}
add wave {Practica4_vlg_vec_tst/i1/liga}
add wave {Practica4_vlg_vec_tst/i1/liga[2]}
add wave {Practica4_vlg_vec_tst/i1/liga[1]}
add wave {Practica4_vlg_vec_tst/i1/liga[0]}
add wave {Practica4_vlg_vec_tst/i1/prueba}
add wave {Practica4_vlg_vec_tst/i1/prueba[2]}
add wave {Practica4_vlg_vec_tst/i1/prueba[1]}
add wave {Practica4_vlg_vec_tst/i1/prueba[0]}
add wave {Practica4_vlg_vec_tst/i1/RESET}
add wave {Practica4_vlg_vec_tst/i1/Salida}
add wave {Practica4_vlg_vec_tst/i1/Salida[4]}
add wave {Practica4_vlg_vec_tst/i1/Salida[3]}
add wave {Practica4_vlg_vec_tst/i1/Salida[2]}
add wave {Practica4_vlg_vec_tst/i1/Salida[1]}
add wave {Practica4_vlg_vec_tst/i1/Salida[0]}
add wave {Practica4_vlg_vec_tst/i1/W}
add wave {Practica4_vlg_vec_tst/i1/X}
add wave {Practica4_vlg_vec_tst/i1/Y}
add wave {Practica4_vlg_vec_tst/i1/Z}
run -all
