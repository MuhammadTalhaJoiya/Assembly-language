[org 0x0100]

xor ax,ax

mov bx,num1

add ah,[bx]
add bh,2

add ah,[bx+1]
add bh,2

add ah,[bx+2]
add bh,2

mov [result],bh
mov ax,0x4c00
int 0x21

num1: db  5,10,15
result: dw  0