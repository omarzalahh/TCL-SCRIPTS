puts "**** List Operations Lab****"
#requirment 3
set lst0 [list Jan Mar April May]
#requirment 4
set lst1 {June July August}
#requirment 5 and 6
puts "$lst0"
puts "$lst1"
#requirment 7
puts "length of list0 from (0:3) [llength $lst0]"
#requirment 8
puts "Third item of list1: [lindex $lst1 0]"
#requirment 9
if {[lsearch $lst1 Oct]>=0} {
puts "OCT exist in list 1"
} else {
puts "Oct not exist in list 1"
}
#requirment 10 and 11
set lst0 [linsert $lst0 1 Feb]
puts "New list 0 $lst0"
#requirement 12 and 13
lappend lst1  Sep Oct Nov Dec
puts "list1 after append $lst1 "
#requirement 14
set lst2 [concat $lst0 $lst1]
puts "List after concation :$lst2"
#Requiremnt 15
set index_start_lst2 0
set lengthlst2 [llength $lst2]
set index_end_lst2 [expr $lengthlst2-1]
puts "range of lst 2 [lrange $lst2 $index_start_lst2 $index_end_lst2] "
#requirement 16
puts "joing function [join $lst2 " , "]"
#requirement 17
set length_list [llength $lst0]
set intial_list0 0
for {set intial_list0 0} {$intial_list0< $length_list} {incr intial_list0} {
puts "[string toupper [lindex $lst0 $intial_list0]]"
}
#requirement18
foreach x $lst1{
puts "[string tolower &x"
}