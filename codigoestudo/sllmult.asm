.text
	addi $s0, $zero, 5
	
	sll $t0, $s0, 7
	
	li $v0, 1
	move $a0, $t0
	syscall