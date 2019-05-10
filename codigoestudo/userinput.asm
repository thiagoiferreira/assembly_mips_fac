.data
	prompt: .asciiz "Enter your age: "
	message: .asciiz "\nYour age is " 
.text

	main:
	
	#prompt user to enter age
	li $v0, 4
	la $a0, prompt
	syscall
	
	# Get the user's age
	li $v0, 5
	syscall
	
	move $t0, $v0

	li $v0, 4
	la $a0, message		
	syscall
	
	li $v0, 1	
	move $a0, $t0
	syscall

	
	li $v0, 10
	syscall