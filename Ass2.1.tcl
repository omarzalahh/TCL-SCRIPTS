#Description
#Name:omar salah eldin
#Date:5/8/2022
#Ass2.1
puts "****Writing Verilog Block Interface****"
puts ""
set modname Up_Dn_Counter
set in_ports [list IN Load Up Down CLK]
set in_ports_width [list 4 1 1 1 1]
set out_ports [list High Counter Low]
set out_ports_width [list 1 4 1]
set all_ports [concat $in_ports $out_ports]
set all_width [concat  $in_ports_width $out_ports_width]
set length_inputports [llength $in_ports]
set length_outputports [llength $out_ports]
set counter1 0
set check 0
set counter2 [expr $length_inputports-1]
set check_end 1
puts "module $modname\("
#with array will be more easier

foreach x $all_ports {
if {$counter1 < $length_inputports} {
#reset check to start of counter1 
set check 0
foreach z $in_ports_width {
if { $check==$counter1} {
if { $z !=1 } {
puts "input  \t\[[expr $z-1]:0\]\t\t $x, "
set counter1 [expr $counter1+1]
break
} else {
puts "input  \t\t\t $x, "
set counter1 [expr $counter1+1]
break
} 
} else {
set check [expr $check+1]
}
}
} elseif {$counter1>=$length_inputports} {
#reset check
set check [expr $length_inputports-1]
foreach k $out_ports_width {
if { $check==$counter2} {
if { $k !=1 } {
puts "output \t\[[expr $k-1]:0\]\t\t $x, "
set counter1 [expr $y+1]
set counter2 [expr $counter2+1]
break
} else {
if { $check_end!=[llength $all_ports] } {
puts "output \t\t\t $x, "
} else {
puts "output \t\t\t $x "
}
set counter1 [expr $y+1]
set counter2 [expr $counter2+1]
break
} 
} else {
set check [expr $check+1]
}
}
} else {
puts "error in counter1"
}
set check_end [expr $check_end+1]
}
puts ");"