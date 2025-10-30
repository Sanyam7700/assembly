.data
array:
	.word 10,20,30,40,50
.text
.global _start
	_start:
	@MOV SP,#0x1000
	ldr r0,=array
	mov r1,#0
	mov r3,#5
	loop:
		ldr r2,[r0,r1]
		add r2,r2,#1
		str r2,[r0,r1]
		SUBS r3,r3,#1
		add r1,r1,#4
		beq done
		b loop
	done:
	b done
		
	
	