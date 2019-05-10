.data
	msg: .asciiz "Fala meu bom"
.text
	main:
	
		addi $s0, $zero, 14
		addi $s1, $zero, 10
		
	
	li $v0, 10
	syscall