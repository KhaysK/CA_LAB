.data
ask: .asciiz "Enter the number: \n"

.text
li $v0 ,4
la $a0, ask
syscall

li $v0, 5
syscall
move $t1, $v0



# Print the answer
li $v0, 1
move $a0, $t1
syscall
# ----------------

# Return
li $v0, 10
syscall
