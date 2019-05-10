.data
	message: .asciiz "The numbers are equal\n"
	message1: .asciiz "Nothing Happened\n"
	message2: .asciiz "The numbers are diferent\n"
	message3: .asciiz "The t0 is less that t1\n"
.text

	main:
		addi $t0, $zero, 5
		addi $t1, $zero, 10
	
		beq $t0, $t1, numbersEqual
		bne $t0, $t1, numbersDiferent
		blt $t0, $t1, numberLess
	
	
	#end
		li $v0, 10
		syscall
		
	numbersEqual:
		li $v0, 4
		la $a0, message
		syscall
	
		li $v0, 10
		syscall
		
	numbersDiferent:
		li $v0, 4
		la $a0, message2
		syscall
	

	
	numberLess:
		li $v0, 4
		la $a0, message3
		syscall
	
		li $v0, 10
		syscall


