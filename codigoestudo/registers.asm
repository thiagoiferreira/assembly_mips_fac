.data
	newLine: .asciiz "\n"
.text
	main:
	
		addi $s0, $zero, 10
#		print value

		jal increaseRegister
		
		li $v0, 4
		la $a0, newLine
		syscall
		
		jal printvalue
		
	# fim do código
	li $v0, 10
	syscall
	
	increaseRegister:
		addi $sp, $sp, -8
		sw $s0, 0($sp)
		sw $ra, 4($sp)
		
		addi $s0, $s0, 30
		
		#nested procedure
		jal printvalue
		
		lw $s0, 0($sp)
		lw $ra, 4($sp)
		addi, $sp,$sp,8
		
		jr $ra
		
	printvalue:
		li $v0, 1
		move, $a0, $s0
		syscall
		
		jr $ra
		
