[org 0x0100]
mov ax,0
mov bx,0
outerloop:
    add ax,[num1+bx]
    add bx,5
    cmp bx,21
    jne outerloop

mov [result],ax
mov ax,0x4c00
int 0x21

result:dw  0
num1:dw  5,10,15,20