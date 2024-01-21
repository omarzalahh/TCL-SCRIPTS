#Display on the screen the following message 
#"****Bitwise Operations****"
#1-Create a variable named a with a value of 20. 
#2-Create a variable named b with a value of 5. 
#3-Create a variable named c with a value of 9
#4-Place the results of the expr expression that will return the Bit-wise AND of variables a and c into a variable named var0. 
#5-Place the results of the expr expression that will return the Bit-wise OR of variables a and b into a variable named var1. 
#6-Place the results of the expr expression that will return the Bit-wise exclusive or of variables a and a into a variable named var2. 
#7-Display the contents of var0
#8-Display the contents of var1.
#9-Display the contents of var2.
puts "****Bitwise Operations****"
set a 20
set b 5
set c 9
set var0 [expr ( $a & $c )]
set var1 [expr ( $a | $b )]
set var2 [expr ( $a ^ $a )]
puts "var0 = $var0"
puts "var1 = $var1"
puts "var2 = $var2"
puts "****End ASS1.1.TCL****"