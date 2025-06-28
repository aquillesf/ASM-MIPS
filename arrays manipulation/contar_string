#Percorra uma string (.asciiz) e conte quantos caracteres ela tem, sem contar o terminador nulo \0. Depois, imprima o número.
.data

	string: .asciiz "teste"

.text

	li $t0, ' ' #char atual da string
	li $t1, 0 #contador
	
	loop:
		lb $t0, string($t1)
		beq $t0, 0, print
		addi $t1, $t1, 1
		j loop
	
	print:
		li $v0, 1
		move $a0, $t1
		syscall
		li $v0, 10
		syscall
		