MVI H 20 H <- 20
MVI L 50 L <- 50
MVI A 00 A <- 00
MOV B, M B <- M
ADD M A <- A + M
DCR B B <- B – 01
JNZ 2007 Jump if ZF = 0
STA 3050 M[3050] <- A
HLT END