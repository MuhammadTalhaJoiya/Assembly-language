
[org 0x0100]
jmp start
num1:dw  6,4,5,2
start:
    mov cx,4
    outerloop:
        mov bx,0
        innerloop:
            mov ax,[num1+bx]
            cmp ax,[num1+bx+2]
            jbe noswap
                mov dx,[num1+bx+2]
                mov [num1+bx+2],ax
                mov [num1+bx],dx
            noswap:
                add bx,2
                cmp bx,6
                jne innerloop
        sub cx,1
        jnz outerloop
    mov ax,0x4c00
    int 0x21