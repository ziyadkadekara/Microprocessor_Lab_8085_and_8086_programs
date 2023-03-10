MVI C, 00 ;Initialize C register to 00
LDA 4150 ;Load the value to Accumulator.
MOV B, A ;Move the content of Accumulator to B register.
LDA 4151 ;Load the value to Accumulator.
ADD B ;Add the value of register B to A
JNC LOOP ;Jump on no carry.
INR C ;Increment value of register C
LOOP: STA 4152 ;Store the value of Accumulator (SUM).
MOV A, C ;Move content of register C to Acc.
STA 4153 ;Store the value of Accumulator (CARRY)
HLT