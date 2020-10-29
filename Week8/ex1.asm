.data
Cels: .float 0.0
subValue: .float 32.0
mulValue: .float 5.0
divValue: .float 9.0
.text

l.s $f1, subValue
l.s $f2, mulValue
l.s $f3, divValue

li $v0, 6
syscall


sub.s $f0, $f0, $f1
mul.s $f1, $f0, $f2
div.s $f12, $f1, $f3

s.s $f12, Cels

li $v0, 2
syscall

li $v0, 10
syscall