.data

	input_msg: .asciiz "Insira seu numero: "
	par: .asciiz "ele é par"
	impar: .asciiz "ele é impar"
.text
	.main:
	la $a0, input_msg
	jal printar
	jal input	
	move $a0, $v0
	jal verifica_valor
	beq $v0, $zero, msg_par
	jal msg_impar
	jal printar	
	jal encerrar
	
	encerrar:
		li $v0, 10
		syscall
		jr $ra
	
	verifica_valor:
		li $t1, 2
		div $a0, $t1
		mfhi $v0
		jr $ra
	
	printar:
		li $v0, 4
		syscall
		jr $ra
		
	msg_par:
		la $a0, par
		jal printar
		jal encerrar	
	
	msg_impar:
		la $a0, impar
		jr $ra
		
	input:
		li $v0, 5
		syscall
		jr $ra
			
		
		
		
