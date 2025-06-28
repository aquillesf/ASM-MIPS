#Descri��o: Dada uma string com letras min�sculas e/ou mai�sculas, converta todas as min�sculas para mai�sculas e armazene o resultado em outro espa�o de mem�ria.
.data
	string: .asciiz "Hello World!"
	string_maiuscula: .space 100

.text
	li $t0, ' ' #char atual
	li $t1, ' ' #armazernar letra em capslock
	li $t2, 32 #numero para transformar em capslock
	li $t3, 0 #itera��o
	
	loop:
		lb $t0, string($t3)
		jal verificar_letra
		beqz $t0, printar_string
		j loop
	
	verificar_letra:
		bgt $t0, 65, eh_maiuscula
		bgt $t0, 90, n_eh_maiuscula
		sb $t0, string_maiuscula($t3)
		addi $t3, $t3, 1
		jr $ra
		eh_maiuscula:
			bgt $t0, 90, n_eh_maiuscula
			sb $t0, string_maiuscula($t3)
			addi $t3, $t3, 1
			jr $ra
		n_eh_maiuscula:
			sub $t1, $t0, 32
			sb $t1, string_maiuscula($t3)
			addi $t3, $t3, 1
			jr $ra
		
	
	printar_string:
		li $v0, 4
		la $a0, string_maiuscula
		syscall
		j fim

	fim:
		li $v0, 10
		syscall
	