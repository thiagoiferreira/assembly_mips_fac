.data
	message: .asciiz "Enter the value of PI:"
	zeroFloat: .float 0.0
.text
	main:
	lwc1 $f4, zeroFloat
	
	#display msg
	li $v0, 4
	la $a0, message
	syscall
	
	li $v0, 6
	syscall 
	
	
	li $v0,2
	add.s $f12,$f0,$f4
	syscall