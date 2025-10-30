.data
string: .asciz "Hello world!"
vowels: .asciz "AEIOUaeiou" 

.text
.global _start
_start:
	ldr r0,=string
	mov r1,#0
	mov r2,#0
loop1:
	ldr r4,=vowels
	ldrb r6,[r0,r1]
	add r1,r1,#1
	mov r3,#0
	cmp r6,#0
	beq done
	loop2:
		ldrb r5,[r4,r3]
		cmp r5,#0
		BEQ loop1
		cmp r6,r5
		beq add
		add r3,r3,#1
		b loop2
	b loop1
		
add:
	add r2,r2,#1
	b loop1
done:
	b done