.data
array: .word 10,20,30,40,50,35,23,42
final:
	.space 32
	.align 4
.text
.global _start
_start:
	ldr r0,=array
	ldr r1,=final
	mov r2,#0
	mov r4,#8
	loop:
		ldr r3,[r0,r2]
		str r3,[r1,r2]
		add r2,r2,#4
		subs r4,r4,#1
		bne loop
	done:
		b done