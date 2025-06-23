.data
	array: .word 1, 2, 3, 4, 5

.text

	li $t1, 0 #numero das posições
	li $t2, 4 #iterar as posições
	li $s0, 0 #soma total
	
	loop:
		beq $t1, 20, printar
		lw $a0, array($t1)
		move $t0, $a0
		add $s0, $t0, $s0
		add $t1, $t1, $t2
		j loop
		
	printar:
		li $v0, 1
		move $a0, $s0
		syscall
		li $v0, 10
		syscall