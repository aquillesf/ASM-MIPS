.data
	numero: .word 18 
.text
	li $t0, 4
	lw $t1, numero
	xor $t3 $t0, $t1	
	li $v0, 1
	move $a0, $t2
	syscall

