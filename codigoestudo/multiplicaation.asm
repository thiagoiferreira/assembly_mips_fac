.data

.text
	addi $s0,$zero,2000
	addi $s1, $zero, 10
	
	mul $t0,$s0,$s1

	li $v0,1
	move $a0,$t0	
	syscall
	
	mult $t0, $t1
	
	mflo $s0
	
	li $v0, 1
	add $s0, $zero, $s0
	syscall
	
	
	