.data
array:
	.word 10,20,30,40,50
.text
.global _start
	_start:
	MOV SP,#0x1000
	ldr r0,=array
	mov r1,#0
	mov r3,#5
	mov r4,#0
	mov r5,#5
	loop:
		ldr r2,[r0,r1]
		add r1,r1,#4
		push {r2}
		SUBS r3,r3,#1
		beq loop1
		b loop
	loop1:
		pop {r2}
		str r2,[r0,r4]
		add r4,r4,#4
		subs r5,r5,#1
		beq done
		b loop1
	done:
	b done
		
	
	
