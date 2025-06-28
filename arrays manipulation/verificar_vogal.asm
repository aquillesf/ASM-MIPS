.data
	msg: .asciiz "Insira uma vogal: "
	retorno_vogal: .asciiz "\né uma vogal!"
	retorno_n_vogal: .asciiz "\nNão é uma vogal!"
	
.text

	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 12
	syscall
	
	move $s0, $v0
	li $t0, 'A'
	li $t1, 'E'
	li $t2, 'I'
	li $t3, 'O'
	li $t4, 'U'
	
	beq $s0, $t0, eh_vogal
	beq $s0, $t1, eh_vogal
	beq $s0, $t2, eh_vogal
	beq $s0, $t3, eh_vogal
	beq $s0, $t4, eh_vogal
	
	bne $s0, $t0, n_eh_vogal
	bne $s0, $t1, n_eh_vogal
	bne $s0, $t2, n_eh_vogal
	bne $s0, $t3, n_eh_vogal
	bne $s0, $t4, n_eh_vogal
	syscall
	
	li $v0, 10
	syscall
	
	eh_vogal:
		li $v0, 4
		la $a0, retorno_vogal
		syscall
		
		li $v0, 10
		syscall
		
	n_eh_vogal:
		li $v0, 4
		la $a0, retorno_n_vogal
		syscall
		
		li $v0, 10
		syscall