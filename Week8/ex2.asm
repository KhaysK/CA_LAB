.data
ask: .asciiz "Enter the number: \n"

.text
li $v0 ,4
la $a0, ask
syscall

li $v0, 5 
syscall
move $t0, $v0
add $a0, $zero, $t0
j func


func:
subi $t0, $t0, 1
add $a0, $a0, $t0
bgtz $t0, func

li $v0, 1
syscall

li $v0, 10
syscall
