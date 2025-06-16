.text
	li $t0, 0
	li $t1, 0

	while:
		li $v0, 1
		move $a0, $t1
		syscall
		
		addi $t0, $t0, 1
		addi $t1, $t1, 1
		beq $t0, 10, saida
		j while

	saida:
		li $v0, 1
		move $a0, $t0
		syscall
	
		