[org 0x0100]

xor ax,ax


add ah,[num1]
add bh,2

add ah,[num1+1]
add bh,2

add ah,[num1+2]
add bh,2

mov ax,0x4c00
int 0x21

num1: db  5,10,15