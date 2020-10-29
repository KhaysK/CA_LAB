.data
msg1: .asciiz " Enter the first number : "

.text
li $v0,4
la $a0, msg1
syscall
li $v0,5
syscall
move $t0,$v0
li $t1, 1
li $t2, 0



loop:
ble  $t1, $t0, sqrt
j end



sqrt:
mul $t3, $t1,$t1
add $t2, $t2, $t3
addi $t1,$t1,1
j loop


end:
add $a0, $t2, $zero 
li $v0, 1
syscall

li $v0 ,10
syscall
