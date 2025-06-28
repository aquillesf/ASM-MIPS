.data

	meuarray: 
		.align 2
		.space 16

.text
	.main:
	
	li $t0, 0
	li $t1, 0
	li $t2, 4
		
	loop:
		addi $t0, $t0, 1
		sw $t0, meuarray($t1)
		add $t1, $t1, $t2
		beq $t1, 16, saidoloop
		j loop
		
	saidoloop:
		li $t0, 0
		li $t1, 0
	
	imprime:	
		li $v0, 1
		lw $a0, meuarray($t1)
		syscall
		add $t1, $t1, $t2
		beq $t1, 16, saida
		j imprime
		
	saida:
	li $v0, 10
	syscall
		
		
		
		
		
		
		
		