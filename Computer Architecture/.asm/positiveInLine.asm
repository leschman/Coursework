positiveInLine: 
add $v0, $a0, $a1 #$v0 = $a0 + $a1
slt $t0, $v0, $zero 
bne $zero, $t0, lessZero
addi $v0, $zero, 1 #set $v0 = 1
jr $ra

lessZero:
move $v0, $zero
jr $ra
