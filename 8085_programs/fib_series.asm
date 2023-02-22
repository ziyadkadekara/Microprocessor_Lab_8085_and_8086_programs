LXI H, 3050 H <- 30, L <- 50
MVI C, 08 C <- 08
MVI B, 00 B <- 00
MVI D, 01 D <- 01
MOV M, B M <- B
INX H M <- M + 01
MOV M, D M <- D
MOV A, B A <- B
ADD D A <- A + D
MOV B, D B <- D
MOV D, A D <- A
INX H M <- M + 01
MOV M, A M <- A
DCR C C <- C – 01
JNZ 200C Jump if ZF = 0
HLT END