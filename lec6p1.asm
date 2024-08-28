[org 0x0100]

mov ax,0
mov cx,4
mov bx,0

outerloop:
    add ax,[num1+bx]
    add bx,2
    sub cx,1
    jnz outerloop

mov [result],ax
mov ax,0x4c00
int 0x21

result:dw  0
num1:dw  5,10,15,20


