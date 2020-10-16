.data
ask: .asciiz "Enter the number: \n"

# Input begin
.text
li $v0 ,4
la $a0, ask
syscall

li $v0, 5
syscall
move $t0, $v0
#End input 

#Condition begin
beqz $t0, null
bgtz $t0, pos
j negat
#End condition

#function for save 0 
null:
li $t1, 0
j end
#function for save 1
pos: 
li $t1, 1
j end
#function for save -1
negat:
li $t1, -1
j end

#function for print and finish program
end:	
li $v0, 1
move $a0, $t1
syscall

li $v0, 10
syscall

