
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name pipeline -dir "D:/Facu/Arquitectura de Computadoras/pipeline/planAhead_run_2" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Facu/Arquitectura de Computadoras/pipeline/pipeline.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Facu/Arquitectura de Computadoras/pipeline} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "pipeline.ucf" [current_fileset -constrset]
add_files [list {pipeline.ucf}] -fileset [get_property constrset [current_run]]
link_design
