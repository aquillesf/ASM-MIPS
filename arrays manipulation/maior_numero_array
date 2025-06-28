.data
	lista: .word 4, 5, 6, 2, 4, 7, 1, 9, 31, 10

.text
	li $t0, 0 #variavel que vai armazenar o maior numero
	li $t1, 0 # numero atual
	li $t2, 0 #numero iteração
	
	loop:

		lw $a0, lista($t2)
		move $t1, $a0
		bgt $t1, $t0, armazenar_numero
		beq $t2, 40, fim
		addi $t2, $t2, 4
		j loop
		
	armazenar_numero:
		move $t0, $t1	
		j loop
		
	fim:
		li $v0, 1
		move $a0, $t0
		syscall
		li $v0, 10
		syscall