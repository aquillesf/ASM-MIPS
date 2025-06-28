#Dado um array de 6 inteiros, dobre o valor de cada elemento e armazene em outro array.
.data
	lista: .word 3, 4 ,5, 2, 10, 8
	lista_duplicados: .space 24
.text

	li $t0, 0 #contador de bytes do array
	li $t2, 0 #numero atual
	li $t1, 0 #armazenar numeros duplicados para o outro array
	loop:
		lw $t2, lista($t0)
		mul $t1, $t2, 2
		sw $t1, lista_duplicados($t0)
		li $t3, 24
		addi $t0, $t0, 4
		blt $t0, $t3, loop

	inicio_funcao_printar:
		li $t0, 0 #contador de bytes do array
		li $t2, 0 #numero atual
		printar:
			beq $t0, 24, fim
			lw $a0, lista_duplicados($t0)
			li $v0, 1
			syscall
			addi $t0, $t0, 4
			j printar
	
	fim:
		li $v0, 10
		syscall