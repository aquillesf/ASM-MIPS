.data

	msg1: .asciiz "Insira o Número: "
	msgPar: .asciiz "Ele é Par"
	msgImpar: .asciiz "Ele é impar"
	
.text
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	
	li $t0, 2	
	move $s0, $v0
	div $s0, $t0
	mfhi $s1
	beq $s1, $zero, ImprimePar
	bne $s1, $zero, ImprimeImpar
	syscall
	
	li $v0, 10
	syscall
	
	ImprimePar:
		li $v0, 4
		la $a0, msgPar
		syscall
		
		li $v0, 10
		syscall
	
		
	ImprimeImpar:
		li $v0, 4
		la $a0, msgImpar
		syscall
		
		li $v0, 10
		syscall
	
	