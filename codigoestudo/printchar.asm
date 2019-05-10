.data
	myCharacter: .byte 'T'
	myInt: .word 788999999
	PI: .float 3.14
	myDouble: .double 7.202
	zeroDouble: .double 0.0
.text
	li $v0, 4 #for string use 4
	la $a0, myCharacter
	syscall

	li $v0, 1 #for loading words use 1
	lw $a0, myInt
	syscall
	
	li $v0, 2
	lwc1 $f12,PI #  lwc1 for printing float
	syscall
	li $v0, 4
	la $a0, myCharacter
	syscall
		
	ldc1 $f2, myDouble
	ldc1 $f0, zeroDouble

	li $v0, 3
	add.d $f12, $f2, $f0
	syscall 