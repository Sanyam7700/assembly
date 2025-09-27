mov ax, 1111h       
mov bx, 2222h        
mov cx, 3333h        
push ax              ; Stack is 1111h
push bx              ; Stack is 2222h, 1111h
push cx              ; Stack is 3333h, 2222h, 1111h
pop ax               ; AX is now 3333h, Stack is 2222h, 1111h
pop bx               ; BX is now 2222h, Stack is  1111h
pop cx               ; CX is now 1111h, Stack empty