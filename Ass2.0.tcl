#Description
#Name:omar salah eldin
#Date:5/8/2022
#Ass2.0
puts "****Assignment 2.0****"
set cities [list cairo alexandria damietta dakahlia faiyum sohag aswan]
set newcitys ""
#To make the code portable set start of upper and start or lower and end of lower and upper
set start_upper 0
set end_upper 0
set start_lower 1
foreach x $cities {
set length_list [string length $x]
set end_string [expr $length_list-1]
lappend newcitys [concat [string toupper [string range $x $start_upper $end_upper]][string tolower [string range $x $start_lower $end_string]]]
}
puts "Old cities list: $cities"
puts "----------------------------------------------------------------------"
puts "new cities list :$newcitys"