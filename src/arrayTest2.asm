.data	# array declarations follow this line 						
A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10	# array declaration	
.text 	# instructions follow this line	

main:	la $t1, A
		addi $t0, $0, 9 # t0 =9
		addi $s1, $0, 0  # i = 0
		addi $s0, $0, 10  # result = 10;
		

for:	beq $s1, $t0, done		
		lw $t2, 0($t1)   # t2 = A[i]
		lw $t4, 4($t1)   # t4 = A[i+1]		
		
		bne $t2, $t4, else
		addi $s0, $s0, -1  # result--
		addi $s1, $s1, 1  # i ++
		addi $t1, $t1, 4
		j for

else:	addi $s1, $s1, 1  # i ++
		addi $t1, $t1, 4
		j for

done:
	jr $ra


