LXI H, 4150
MOV B, M     ;Get the dividend in B – reg.
MVI C, 00     ;Clear C – reg for qoutient
INX H
MOV A, M     ;Get the divisor in A – reg.
NEXT: CMP B     ;Compare A - reg with register B.
JC LOOP     ;Jump on carry to LOOP
SUB B     ;Subtract A – reg from B- reg.
INR C     ;Increment content of register C.
JMP NEXT     ;Jump to NEXT
LOOP: STA 4152     ;Store the remainder in Memory
MOV A, C
STA 4153     ;Store the quotient in memory
HLT     ;Terminate the program.