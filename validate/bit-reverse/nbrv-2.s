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
.LCFI11:
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	.save	{r8, r9, sl}
	push	{r5, r6, r7}
.LCFI12:
.LVL73:
	.loc 1 202 0
	ldr	r3, #1000
	lsl	r2, r2, #2
.LVL74:
	.loc 1 203 0
	mov	r9, r0
.LVL75:
	.loc 1 202 0
.LPIC16:
	add	r3, pc
	ldr	r2, [r2, r3]
	mov	r8, r2
.LVL76:
	.loc 1 203 0
	add	r9, r9, r8
	.loc 1 206 0
	mov	r3, r2
.LVL77:
.L82:
	.loc 1 211 0
	lsl	r3, r3, #1
	.loc 1 210 0
	asr	r2, r2, #1
	.loc 1 213 0
	cmp	r0, r3
	bgt	.L76
	.loc 1 214 0
	cmp	r3, r0
	beq	.L79
.L83:
	.loc 1 215 0
	mov	r4, r8
	.loc 1 216 0
	mov	r5, r9
	.loc 1 215 0
	eor	r2, r2, r4
	.loc 1 216 0
	eor	r3, r3, r5
.L76:
	.loc 1 219 0
	cmp	r2, r3
	ble	.L82
.LBB10:
	.loc 1 220 0
	lsl	r5, r2, #3
	add	r5, r1, r5
	ldr	r6, [r5]
	.loc 1 221 0
	lsl	r4, r3, #3
	add	r4, r1, r4
	.loc 1 220 0
	mov	sl, r6
	.loc 1 221 0
	ldr	r6, [r4]
	.loc 1 220 0
	ldr	r7, [r5, #4]
.LBE10:
	.loc 1 211 0
	lsl	r3, r3, #1
.LBB11:
	.loc 1 221 0
	str	r6, [r5]
	ldr	r6, [r4, #4]
.LBE11:
	.loc 1 210 0
	asr	r2, r2, #1
.LBB12:
	.loc 1 221 0
	str	r6, [r5, #4]
	.loc 1 222 0
	mov	r5, sl
	str	r7, [r4, #4]
	str	r5, [r4]
.LBE12:
	.loc 1 213 0
	cmp	r0, r3
	bgt	.L76
	.loc 1 214 0
	cmp	r3, r0
	bne	.L83
.L79:
	.loc 1 225 0
	@ sp needed for prologue
.LVL78:
.LVL79:
	pop	{r2, r3, r4}
	mov	r8, r2
	mov	r9, r3
	mov	sl, r4
	pop	{r4, r5, r6, r7, pc}
.L85:
	.align	2
.L84:
	.word	.LANCHOR0-(.LPIC16+4)
.LFE20:
	.fnend
