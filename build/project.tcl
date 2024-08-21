set projDir "/media/share/Alchitry/binToDecTest/build/vivado"
set projName "binToDecTest"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir"]} { file delete -force "$projDir" }
create_project $projName "$projDir" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/media/share/Alchitry/binToDecTest/build/source/MI_alchitryTop.sv" "/media/share/Alchitry/binToDecTest/build/source/MI_resetConditioner_7ee16669.sv" "/media/share/Alchitry/binToDecTest/build/source/MI_multiSevenSeg_70303e7f.sv" "/media/share/Alchitry/binToDecTest/build/source/MI_counter_2756ca9f.sv" "/media/share/Alchitry/binToDecTest/build/source/MI_sevenSeg.sv" "/media/share/Alchitry/binToDecTest/build/source/MI_decoder_f702a396.sv" "/media/share/Alchitry/binToDecTest/build/source/MI_binToDec_258523be.sv" "/media/share/Alchitry/binToDecTest/build/source/MI_binToDecV1_258523be.sv" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "/media/share/Alchitry/binToDecTest/build/constraint/alchitry.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
