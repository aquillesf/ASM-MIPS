.data

	input1: .asciiz "Insira o seu primeiro n�mero: "
	input2: .asciiz "Insira o seu segundo n�mero: "
	iguais: .asciiz "Os n�meros s�o iguais"
	desiguais: .asciiz "Os n�meros n�o s�o iguais"
	zero: .float 0.0

.text
	
	li $v0, 4
	la $a0, input1
	syscall
	
	li $v0, 6
	syscall
	
	lwc1 $f1, zero
	add.s $f12, $f1, $f0
	li $v0, 4
	la $a0, input2
	syscall
	
	li $v0, 6
	syscall
	
	add.s $f13, $f1, $f0
	c.eq.s  $f12, $f13
	bc1t n_iguais
	c.eq.s  $f12, $f13
	bc1f n_desiguais
	syscall
	
	li $v0, 10
	syscall
	
	
	n_iguais:
		li $v0, 4
		la $a0, iguais
		syscall
		
		li $v0, 10
		syscall
	
	n_desiguais:
		li $v0, 4
		la $a0, desiguais
		syscall
		
		li $v0, 10
		syscall
	