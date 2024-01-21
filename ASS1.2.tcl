#Description
#1-Display on the screen the following message 
#"****Mathematical Operations****"
#2-Create a variable named a with a value of -64. 
#3-Create a variable named b with a value of 49. 
#4-Place the results of the expr expression that will return the absolute value of variable a into a variable named var0. 
#5-Place the results of the expr expression that will return the square root of variables b into a variable named var1. 
#6-Display the contents of var0
#7-Display the contents of var1
puts "****Mathematical Operations****"
set a -64
set b 49
set var0 [expr abs($a)]
set var1 [expr sqrt($b)]
puts "Var0=$var0"
puts "var1=$var1"
puts "****End ASS1.2.TCL****"