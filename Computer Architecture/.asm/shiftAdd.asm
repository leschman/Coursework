move $t0, $a0 #Copy $a0 to $t0.
andi $t1, $t0, 1 #set $t1 to value of bit 0.
beq $t1, $zero, loop #jump to even if $t0 is even.
add $v0, $zero, $a0 #if $t0 is odd, add $a0 to result. 
addi $t3, $zero, 0 #intialize $t3 to 0.
loop: 
beq $t3, 15, exit #if this is our 15th iteration, exit. 
addi $t3, $zero, $t3 #add 1 to $t3 to count.
srl $t0, $t0, 1 #shift $t0 right by 1. 
andi $t1, $t0, 1 #set $t1 to value of bit 0.
beq $t1, $zero, loop #jump to top if we dont need to shift. 
sll $a0, $a0, 1 # shift $a0 left by one. 

exit: 
add $v0, $v0, $a0 #move result into return register
jr $ra #return. 