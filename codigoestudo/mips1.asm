.data
	myMessage: .asciiz "Hello World\n"
	
.text
  li $v0, 4 #li load imediate
  la $a0, myMessage #la load adress
  syscall
  
  
	
