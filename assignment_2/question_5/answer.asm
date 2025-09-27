mov ax, 1234h        ; AX=1234h
push ax              ; SP=SP-2, [SP]=1234h
mov ax, 0            ; AX=0
pop ax               ; SP=SP+2, AX now has value set to 1234h