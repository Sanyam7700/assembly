mov ax, 02h
shr ax, 1            ; AX = 01h, CF=0, ZF=0
mov bx, 01h
shl bx, 1            ; BX = 02h, CF=0, ZF=0