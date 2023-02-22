MVI C, 00 ;Initialize C to 00
LDA 4150 ;Load the value to Acc.
MOV B, A ;Move the content of Acc to B register.
LDA 4151 ;Load the value to Acc.
SUB B
JNC LOOP ;Jump on no carry.
CMA ;Complement Accumulator contents.
INR A ;Increment value in Accumulator.
INR C ;Increment value in register C
LOOP: STA 4152 ;Store the value of A-reg to memory address.
MOV A, C ;Move contents of register C to Accumulator.
STA 4153 ;Store the value of Accumulator memory address.
HLT ;Terminate the program.