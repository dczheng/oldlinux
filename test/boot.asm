org 07c00h
mov ax, cs
mov ds, ax
mov es, ax
call DispStr
jmp $
DispStr:
    mov ax, BootMessage
    mov bp, ax
    mov cx, 35
    mov ax, 01301h
    mov bx, 000ch
    mov dl, 0
    int 10h
    ret
BootMessage: db "Hello dczheng, Welcome to os world."
times 510-($-$$) db 1
dw 0xaa55
