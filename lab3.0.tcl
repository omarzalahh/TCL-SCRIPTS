proc Avg {Mohamed} {
upvar $Mohamed arr
set total 0
set avg 0
set list_key [array names arr]
foreach x $list_key {
set total [expr $total+$arr($x)]
}
set avg [expr $total/[llength $list_key]]
return $avg
}

puts "**** Arrays & Procedures **** "
array set Mohamed {Waves 70 Electronics 85 Control 65 Comm 78}
array set Ahmed {Waves 66 Electronics 80 Control 88 Comm 69}
array set Mostafa {Waves 72 Electronics 77 Control 70 Comm 88}

set avg_moahmed [Avg Mohamed]
puts "Mohamed gpa $avg_moahmed%"
set avg_ahmed [Avg Ahmed]
set avg_mostfa [Avg Mostafa]
puts "Mostfa gpa $avg_mostfa%"
puts "Ahmed gpa $avg_ahmed%"