.data

	string: .asciiz "aeiou"

.text

	li $t0, 0 #contador de vogais
	li $t1, 0 #iteração loop
	li $t2, ' ' #char atual
	
	loop:
		lb $t2, string($t1)
		beq $t2, 0, fim
		beq $t2, 97, mais_um	
		beq $t2, 101, mais_um
		beq $t2, 105, mais_um
		beq $t2, 111, mais_um
		beq $t2, 117, mais_um
		addi $t1, $t1, 1
		j loop
		
	mais_um:
		addi $t0, $t0, 1
		addi $t1, $t1, 1
		j loop
		
	fim:
		li $v0, 1
		move $a0, $t0
		syscall
		li $v0, 10
		syscall