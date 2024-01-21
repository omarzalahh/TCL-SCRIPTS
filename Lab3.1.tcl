puts "**** File I/O & Regsub Lab****"
set in_ports [list IN Load Up Down Clk ]
set out_ports [list High Counter Low]
set pointer [open interface.txt r+]
set file_data [read $pointer]
puts $file_data
regsub -all input $file_data reg file_data
regsub -all output $file_data wire file_data
puts "After regsub"
puts ""
puts $file_data
foreach x $in_ports {
regsub -nocase -all $x $file_data  "i_$x;"  file_data

} 
foreach y $out_ports {
regsub -nocase -all $y $file_data  "o_$y;"  file_data
}

puts $file_data
close $pointer
set pointer2 [open tb.txt w+]
puts $pointer2 "$file_data"
close $pointer2