
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Nibble_Knowledge_CPU -dir "C:/Users/Bailey/Desktop/Nibble_Knowledge_CPU(1)/planAhead_run_2" -part xc3s250evq100-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Bailey/Desktop/Nibble_Knowledge_CPU(1)/CPU.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Bailey/Desktop/Nibble_Knowledge_CPU(1)} }
set_property target_constrs_file "CPU_pins.ucf" [current_fileset -constrset]
add_files [list {CPU_pins.ucf}] -fileset [get_property constrset [current_run]]
link_design
