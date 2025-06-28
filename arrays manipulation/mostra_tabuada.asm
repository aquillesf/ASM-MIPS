.data
	input: .asciiz "Insira aqui a sua tabuada de 1 a 10: "
	final: .asciiz "aqui está sua tabuada :D"
	linha: .asciiz "\n"
	letrax: .asciiz " x "
	igual: .asciiz " = "
	checar: .asciiz "Insira um valor de 0 até 10"
.text

	li $v0, 4
	la $a0, input
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	li $t1, 0
	li $t2, 0
	bgt $t0, 10, validando
	
	loop:
		beq $t1, 10, saida
		addi $t1, $t1, 1		
		mul $t2, $t0, $t1
		li $v0, 1
		move $a0, $t0
		syscall
		
		li $v0, 4
		la $a0, letrax
		syscall
		
		li $v0, 1
		move $a0, $t1
		syscall
		
		li $v0, 4
		la $a0, igual
		syscall
		
		li $v0, 1
		move $a0, $t2
		syscall
		
		li $v0, 4
		la $a0, linha
		syscall
		
		j loop
	
	saida:
		li $v0, 4
		la $a0, linha
		syscall
		
		li $v0, 4
		la $a0, final
		syscall
		
		la $v0, 10
		syscall
		
	validando:
		li $v0, 4
		la $a0, checar
		syscall
		
		la $v0, 10
		syscall
	
		
		
