	.section	.text.bitreverse_nbrv,"ax",%progbits
	.align	2
	.global	bitreverse_nbrv
	.code	16
	.thumb_func
	.type	bitreverse_nbrv, %function
bitreverse_nbrv:
	.fnstart
.LFB20:
	.loc 1 196 0
	.save	{r4, r5, r6, r7, lr}
	push	{r4, r5, r6, r7, lr}
.LCFI8:
	.pad #28
	sub	sp, sp, #28
.LCFI9:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 202 0
	ldr	r2, [sp, #4]
	ldr	r3, #1000
.LPIC1:
	add	r3, pc
	lsl	r2, r2, #2
	ldr	r6, [r2, r3]
	.loc 1 203 0
	ldr	r3, [sp, #12]
	add	r7, r6, r3
	.loc 1 205 0
	mov	r5, r6
	.loc 1 206 0
	mov	r4, r6
	b	.L52
.L56:
	.loc 1 224 0
	mov	r8, r8
.L52:
	.loc 1 210 0
	asr	r5, r5, #1
	.loc 1 211 0
	lsl	r4, r4, #1
	.loc 1 213 0
	ldr	r3, [sp, #12]
	cmp	r4, r3
	blt	.L49
	.loc 1 214 0
	ldr	r3, [sp, #12]
	cmp	r4, r3
	beq	.L55
.L50:
	.loc 1 215 0
	eor	r5, r5, r6
	.loc 1 216 0
	eor	r4, r4, r7
.L49:
	.loc 1 219 0
	cmp	r5, r4
	ble	.L56
.LBB6:
	.loc 1 220 0
	mov	r3, r5
	lsl	r3, r3, #3
	ldr	r2, [sp, #8]
	add	r2, r2, r3
	add	r3, sp, #16
	ldr	r1, [r2]
	str	r1, [r3]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	.loc 1 221 0
	mov	r3, r5
	lsl	r3, r3, #3
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	mov	r2, r4
	lsl	r2, r2, #3
	ldr	r1, [sp, #8]
	add	r2, r1, r2
	ldr	r1, [r2]
	str	r1, [r3]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	.loc 1 222 0
	mov	r3, r4
	lsl	r3, r3, #3
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	add	r2, sp, #16
	ldr	r1, [r2]
	str	r1, [r3]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
.LBE6:
	.loc 1 224 0
	b	.L52
.L55:
	.loc 1 225 0
	mov	r8, r8
.L54:
	add	sp, sp, #28
	@ sp needed for prologue
	pop	{r4, r5, r6, r7, pc}
.L58:
	.align	2
.L57:
	.word	seed.2798-(.LPIC1+4)
.LFE20:
	.fnend
