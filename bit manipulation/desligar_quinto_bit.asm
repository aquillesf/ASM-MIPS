.data
	bit: .word 32
.text

	lw $t0, bit
	li $t1, 0xFFFFFFEF
	and $t3, $t1, $t0
	li $v0, 1
	move $a0, $t3
	syscall
	