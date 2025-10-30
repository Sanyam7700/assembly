.text
.global _start
_start:
	ldr r0,=0x74AF18AE
	mov r1,#32
	mov r2,#0
	loop:
		and r3,r0,#1
		cmp r3,#1
		addeq r2,r2,#1
		lsr r0,r0,#1
		subs r1,r1,#1
		bne loop
	done:
	b done
		