.data
	message: .asciiz "Fala meu consagrado, boa noite\n"
	
.text
	main:
	jal displayMessage
	
	# Ending program, if dont do, it wont stop
	li $v0, 10
	syscall
	
	displayMessage:
		li $v0, 4
		la $a0, message
		syscall
		
		jr $ra