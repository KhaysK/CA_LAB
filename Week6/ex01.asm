.data
ask: .asciiz "Enter the number: \n"

.text
li $v0 ,4
la $a0, ask
syscall
# Input Begin
li $v0, 5 
syscall
move $t0, $v0



end:
#Output Begin
li $v0, 1
move $v0, $t0
syscall
#End
li $v0, 10
syscall

signum: 

beq  $t0, $zero, put0
bgtz $t0, put1
jr $ra

put0:
li $t1, 0
j end
putn:
li $t1, -1
j end
put1:
li $t1, 1
j end