puts "**** String Manipulation Lab ****"
set str1 "MahmoudAhmed@gmail.com"
set str2 "MostafaAli@hotmail.com"
set index1 [string first @ $str1 ]
set index2 [string first @ $str2 ]
set indexdot [string last . $str2]

puts "The legnth of str1 [string length $str1]"
puts "str1 Email Name is [string toupper [string range $str1 0 [expr $index1-1]]]"
puts "Domain name of str2  [string range $str2 [expr $index2+1] [expr $indexdot-1]]"

set str3 [string range $str1 0 [expr $index1-1]]
append str3 [string range $str2 [expr $index2] [expr $indexdot-1]]
append str3 {.com}
puts "STR3 is $str3"

if {[string match *gmail* $str1]} {
puts "Email is @gmail"
} else {
puts "Not gmail.com"
}