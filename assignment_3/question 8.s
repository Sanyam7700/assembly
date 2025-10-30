.data
string: .asciz "Hello world!"

.text
.global _start
_start:
	mov SP,#0x1000
	ldr r0,=string
	mov r1,#0
	mov r2,#0
	loop:
		ldrb r3,[r0,r1]
		cmp r3,#0
		beq loop1
		push {r3}
		add r1,r1,#1
		b loop
	loop1:
		pop {r3}
		strb r3,[r0,r2]
		cmp r3,#0
		beq done
		add r2,r2,#1
		b loop1
done:
	b done