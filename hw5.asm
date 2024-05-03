.data
	space: .asciiz " "
	 
.text

init_student:
	move $t7, $a0
	move $t8, $a1
	move $t6, $a2
	move $t5, $a3

	sll $t7, $t7, 10

	or $t7, $t7, $t8

	sw $t7, 0($a3)

	sw $a2, 4($a3)

	jr $ra
	
print_student:

	lw $t8, 0($a0)

	srl $t7, $t8, 10

	andi $t6, $t8, 0x3FF

	lw $t5, 4($a0)

	li $v0, 1
	move $a0, $t7
	syscall 

	li $v0, 4
	la $a0, space
	syscall 

	li $v0, 1
	move $a0, $t6
	syscall 

	li $v0, 4
	la $a0, space
	syscall 

	li $v0, 4
	move $a0, $t5
	syscall 




	jr $ra
	
init_student_array:
	jr $ra
	
insert:
	li $v0, -1
	jr $ra
	
search:
	li $v0, -1
	jr $ra

delete:
	li $v0, -1
	jr $ra
