#description
#1-Display on the screen the following message 
#"****Logical Operations****"
#2-Create a variable named a with a value of 5. 
#3-Create a variable named b with a value of -1. 
#4-Create a variable named c with a value of 0
#5-Place the results of the expr expression that will return the Logical AND of variables a and c into a variable named var0. 
#6-Place the results of the expr expression that will return the Logical OR of variables a and b into a variable named var1. 
#7-Display the contents of var0.
#8-Display the contents of var1.
puts "****Logical Operations****"
set A 5
set B -1
set C 0
set var0 [expr ($A && $C)]
puts "var0= $var0"
set var1 [expr ($A || $B)]
puts "var1=$var1"
puts "****End ASS1.0.TCL****"