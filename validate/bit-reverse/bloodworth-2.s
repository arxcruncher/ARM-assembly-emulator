	.section	.text.bitreverse_bloodworth,"ax",%progbits
	.align	2
	.global	bitreverse_bloodworth
	.code	16
	.thumb_func
	.type	bitreverse_bloodworth, %function
bitreverse_bloodworth:
	.fnstart
.LFB21:
	.loc 1 227 0
	.save	{r4, r5, r6, r7, lr}
	push	{r4, r5, r6, r7, lr}
.LCFI13:
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	.save	{r8, r9, sl}
	push	{r5, r6, r7}
.LCFI14:
.LVL80:
	.loc 1 227 0
	mov	ip, r1
	.loc 1 232 0
	cmp	r0, #0
	ble	.L96
.LVL81:
	asr	r7, r0, #1
.LVL82:
	asr	r3, r0, #31
	sub	r3, r3, r7
	lsr	r3, r3, #31
	mov	r6, r1
	mov	r8, r3
	add	r6, r6, #8
	mov	r5, #0
.LVL83:
	.loc 1 230 0
	mov	r2, #0
.LVL84:
.L88:
	.loc 1 242 0
	cmp	r2, r7
	bge	.L100
.LVL85:
.L97:
	.loc 1 232 0
	add	r5, r5, #1
	.loc 1 242 0
	mov	r3, r7
	.loc 1 232 0
	cmp	r5, r0
	bne	.L95
.L96:
	.loc 1 249 0
	@ sp needed for prologue
.LVL86:
	pop	{r2, r3, r4}
	mov	r8, r2
	mov	r9, r3
	mov	sl, r4
	pop	{r4, r5, r6, r7, pc}
.LVL87:
.L100:
	.loc 1 242 0
	mov	r1, r8
.LVL88:
	mov	r3, r7
	cmp	r1, #0
	beq	.L97
.LVL89:
.L98:
	.loc 1 244 0
	lsr	r4, r3, #31
	.loc 1 243 0
	sub	r2, r2, r3
	.loc 1 244 0
	add	r3, r4, r3
.LVL90:
	asr	r3, r3, #1
.LVL91:
	.loc 1 242 0
	cmp	r3, #0
	ble	.L92
	cmp	r2, r3
	bge	.L98
.L92:
	.loc 1 232 0
	add	r5, r5, #1
	cmp	r5, r0
	beq	.L96
.LVL92:
.L95:
	.loc 1 247 0
	add	r2, r2, r3
	.loc 1 234 0
	cmp	r2, r5
	ble	.L89
.LBB13:
	.loc 1 235 0
	lsl	r3, r2, #3
.LVL93:
	add	r3, r3, ip
	ldr	r1, [r3, #4]
	ldr	r4, [r3]
	mov	sl, r1
	.loc 1 236 0
	ldr	r1, [r6]
	str	r1, [r3]
	ldr	r1, [r6, #4]
	str	r1, [r3, #4]
	.loc 1 237 0
	mov	r3, sl
	str	r3, [r6, #4]
	str	r4, [r6]
.LVL94:
.L89:
	add	r6, r6, #8
	b	.L88
.LBE13:
.LFE21:
	.fnend
