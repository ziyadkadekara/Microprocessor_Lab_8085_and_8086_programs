;largest number in an array of data

LXI H,4200     ;Set pointer for array
MOV B,M     ;Load the Count
INX H
MOV A,M     ;Set 1st element as largest data
DCR B     ;Decrement the count
LOOP: INX H
CMP M     ;If A- reg > M go to AHEAD
JNC AHEAD
MOV A,M     ;Set the new value as largest
AHEAD: DCR B
JNZ LOOP    ; Repeat comparisons till count = 0
STA 4300     ;Store the largest value at 4300
HLT