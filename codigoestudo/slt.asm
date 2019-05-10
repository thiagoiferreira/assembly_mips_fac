.data
	msg: .asciiz "The number is less than the other"
.text

	main:
		addi $t0, $zero, 100
		addi $t1, $zero, 200
	
		slt $s0, $t0, $t1
		bne $s0, 0, printMsg
		
		li $v0, 10
		syscall	
	printMsg:
	
	li $v0, 4
	la $a0, msg
	syscall
	
