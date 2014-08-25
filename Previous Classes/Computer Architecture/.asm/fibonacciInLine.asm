fibInLine: 
bne $a0, $zero notZero
move $v0, $zero
j exit

notZero:
addi $t1, $zero, 1 #$t1=1
bne $a0, $t1 notOne
move $v0, $t1
j exit

notOne:
subi $t0, $a0, 1 #$t0=$a0-1

