mov ax,1000h
mov ds,ax
mov byte ptr [0021h],05h
mov bx,0020h
mov di,0001h
mov cl,[bx+di]      