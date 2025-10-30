.text
.global _start
_start:
	mov r0,#6
	mov r1,#1
	loop:
	mul r1,r1,r0
	SUBS r0,r0,#1
	beq done
	b loop
done:
	b done
