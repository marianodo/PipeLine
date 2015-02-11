
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name PipeLine -dir "C:/Users/Nano/Desktop/PipeLine/planAhead_run_5" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Nano/Desktop/PipeLine/pipeline.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Nano/Desktop/PipeLine} {ipcore_dir} }
add_files [list {ipcore_dir/DataMemory.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "pipeline.ucf" [current_fileset -constrset]
add_files [list {pipeline.ucf}] -fileset [get_property constrset [current_run]]
link_design
