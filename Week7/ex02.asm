.data
	string: .space 255                    # Number of characters

.text
	la $a0, string # defining variable
	li $v0, 8 # input
	li $a1, 255  # maximum characters
	syscall 
	
	li $t0, 0 # count of spaces
	li $t1, 0 
	la $s0, string
	
	loop:
		add $s1, $s0, $t1 
		move $s3, $s2 # saving
		lb $s2, ($s1)
		beq $s2, 0x20, plus
	plus_end:
		beq $s2, $zero, end
		addi $t1, $t1, 1 # i++
		j loop
	
	plus:
		beq $s2, $s3, plus_end 
		addi $t0, $t0, 1
		j plus_end
		
		beq $s3, 0x20, end
		addi $t0, $t0, 1
		
	
	end:	
		# print number of words
		addi $t0, $t0, 1
		li $v0, 1
		move $a0, $t0
		syscall
		
		# ending of the program
		li $v0, 10
		syscall
