.data
string: .asciz "Hello world!"
.text
.global _start
_start:
	ldr r0,=string
	mov r1,#0
	loop:
	ldrb r2,[r0,r1]
	cmp r2,#0
	beq done
	
	cmp r2,#'a'
	blt skip
	
	cmp r2,#'z'
	bgt skip
	
	sub r2,r2,#32
	strb r2,[r0,r1]
	
skip:
	add r1,r1,#1
	b loop
done:
	b done