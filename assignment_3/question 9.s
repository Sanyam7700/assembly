.data
array: .word 10,20,30,40,50,35,23,42

.text
.global _start
_start:
	ldr r0,=array
	mov r1,#4
	mov r2,#7
	ldr r4,[r0,#0]
	loop:
		ldr r3,[r0,r1]
		add r1,r1,#4
		cmp r4,r3
		movlt r4,r3
		subs r2,r2,#1
		bne loop
done:
	b done