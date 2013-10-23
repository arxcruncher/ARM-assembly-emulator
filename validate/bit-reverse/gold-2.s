	.section	.text.bitreverse_gold_rader,"ax",%progbits
	.align	2
	.global	bitreverse_gold_rader
	.code	16
	.thumb_func
	.type	bitreverse_gold_rader, %function
bitreverse_gold_rader:
	.fnstart
.LFB18:
	.loc 1 143 0
	.save	{r4, r5, r6, r7, lr}
	push	{r4, r5, r6, r7, lr}
.LCFI7:
	mov	r7, r9
	mov	r6, r8
	.save	{r8, r9}
	push	{r6, r7}
.LCFI8:
.LVL43:
	.loc 1 143 0
	mov	r8, r1
	.loc 1 150 0
	cmp	r0, #1
	ble	.L62
.LVL44:
.LBB5:
	.loc 1 152 0
	mov	r5, r1
	asr	r6, r0, #1
.LVL45:
	add	r5, r5, #8
	.loc 1 143 0
	sub	r0, r0, #1
.LVL46:
	.loc 1 147 0
	mov	r4, #0
.LVL47:
	.loc 1 148 0
	mov	r2, #0
.LVL48:
.L61:
	.loc 1 160 0
	mov	r3, r6
	cmp	r6, r2
	bgt	.L58
.L63:
	.loc 1 161 0
	sub	r2, r2, r3
	.loc 1 162 0
	asr	r3, r3, #1
.LVL49:
	.loc 1 160 0
	cmp	r2, r3
	bge	.L63
.LVL50:
.L58:
.LBE5:
	.loc 1 150 0
	add	r4, r4, #1
	cmp	r4, r0
	beq	.L62
.LBB9:
	.loc 1 164 0
	add	r2, r2, r3
	.loc 1 154 0
	cmp	r2, r4
	ble	.L56
	.loc 1 155 0
	ldr	r1, [r5, #4]
.LVL51:
.LBB6:
	.loc 1 156 0
	lsl	r3, r2, #3
.LVL52:
	add	r3, r3, r8
.LBE6:
	.loc 1 155 0
	mov	r9, r1
.LBB7:
	.loc 1 156 0
	ldr	r1, [r3]
.LBE7:
	.loc 1 155 0
	ldr	r7, [r5]
.LBB8:
	.loc 1 156 0
	str	r1, [r5]
	ldr	r1, [r3, #4]
	str	r1, [r5, #4]
	.loc 1 157 0
	mov	r1, r9
	str	r1, [r3, #4]
	str	r7, [r3]
.LVL53:
.L56:
	add	r5, r5, #8
	b	.L61
.LVL54:
.L62:
.LBE8:
.LBE9:
	.loc 1 166 0
	@ sp needed for prologue
.LVL55:
.LVL56:
	pop	{r2, r3}
	mov	r8, r2
	mov	r9, r3
	pop	{r4, r5, r6, r7, pc}
.LFE18:
	.fnend
	.size	bitreverse_gold_rader, .-bitreverse_gold_rader
