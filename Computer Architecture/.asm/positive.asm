positive: 
addi $sp, $sp, -12 #make room on the stack for 3 registers
sw $ra, 8($sp) #save $ra on the stack
sw $s1, 4($sp) #save $s1 on the stack
sw $s0, 0($sp) #save $s0 on the stack
move $s0, $a0 #save $a0 to $s0
move $s1, $a0 #save $a1, $a0
jal addit #run addit
slt $t0, $v0, $zero 
bne $zero, $t0, lessZero
addi $v0, $zero, 1 #set $v0 = 1
j exit

lessZero:
move $v0, $zero
j exit

addit: 
add $v0, $a0, $a1 #$v0 = $a0 + $a1
jr $ra #return 

exit: 
lw $s0, 0($sp)
lw $s1, 4($sp)
lw $ra, 8($sp)
addi $sp, $sp, 20
jr $ra