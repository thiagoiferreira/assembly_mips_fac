.data
	msg: .asciiz "saiu do while"
	space: .asciiz "\n"
.text
	main:
	# i = 0
		addi $t0, $zero, 0
		
		jal while
		
		while:
			bge $t0, 10, exit
			jal printNumber
			
			addi $t0, $t0, 1 #i++
			
			j while 
		
		exit:
			li $v0, 4
			la $a0, msg
			syscall
		
		#End of program
		li $v0, 10
		syscall
		
	printNumber:
		li $v0, 1
		add $a0, $t0, $zero
		syscall
	
		li $v0, 4
		la $a0, space
		syscall
	
		jr $ra
	
	