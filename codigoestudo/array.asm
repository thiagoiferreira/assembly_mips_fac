.data
	myA: .space 12
	line: .asciiz "\n"
.text

	main:
		addi $s0, $zero, 4
		addi $s1, $zero, 12
		addi $s2, $zero, 10
		
	#index = $t0
	
	addi $t0, $zero,0
	
	sw $s0, myA($t0)
	addi $t0, $t0,4
	sw $s1, myA($t0)
	addi $t0, $t0,4
	sw $s2, myA($t0)
	
	addi $t0, $zero,0
	
	while:
		beq $t0, 12,exit
		
		lw $t6, myA($t0)
		
		addi $t0, $t0,4
	
		li $v0, 1
		move $a0, $t6
		syscall
		
		li $v0, 4
		la $a0, line
		syscall
		
		j while
		
	exit:
		li $v0, 10
		syscall
	

	
	