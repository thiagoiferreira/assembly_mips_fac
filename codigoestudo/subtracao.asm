.data 
	n1: .word 20
	n2: .word 13
	
.text
	lw $s0, n1 #s0 = 20
	lw $s1, n2 #s1 = 8
	
	sub $t0, $s0,$s1 #t0=20-13
	
	li $v0, 1
	move $a0, $t0 #to print i need to move the data to an a# 
	syscall
	
	
	