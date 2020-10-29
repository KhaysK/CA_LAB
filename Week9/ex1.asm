.data
msg1: .asciiz " Enter the first number  : "
msg2: .asciiz "\n Enter the second number : "
fivePtfour : .float 5.4
twelvePtthree : .float 12.3
eighteenPttt: .float 18.23
eightPtthree: .float 8.23

.text
li $v0,4
la $a0, msg1
syscall



li $v0,6
syscall
mov.s $f5, $f0

li $v0,4
la $a0, msg2
syscall



li $v0,6
syscall


l.s $f2, fivePtfour
l.s $f3, twelvePtthree
l.s $f4, eighteenPttt
l.s $f10, eightPtthree


mul.s $f6, $f5, $f0
mul.s $f6, $f6,$f2
mul.s $f7, $f3,$f0
mul.s $f9, $f4,$f5

sub.s $f6, $f6,$f7
sub.s $f9, $f9,$f10

add.s $f6, $f6, $f9 



li $v0,2
mov.s $f12,$f6
syscall

li $v0,10
syscall
