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
	.pad #32
	sub	sp, sp, #32
.LCFI10:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 230 0
	mov	r3, #0
	str	r3, [sp, #24]
	.loc 1 232 0
	mov	r3, #0
	str	r3, [sp, #28]
	b	.L60
.L67:
	.loc 1 234 0
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #28]
	cmp	r2, r3
	ble	.L61
.LBB7:
	.loc 1 235 0
	ldr	r3, [sp, #24]
	lsl	r3, r3, #3
	ldr	r2, [sp]
	add	r2, r2, r3
	add	r3, sp, #12
	ldr	r1, [r2]
	str	r1, [r3]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	.loc 1 236 0
	ldr	r3, [sp, #24]
	lsl	r3, r3, #3
	ldr	r2, [sp]
	add	r3, r2, r3
	ldr	r2, [sp, #28]
	lsl	r2, r2, #3
	ldr	r1, [sp]
	add	r2, r1, r2
	ldr	r1, [r2]
	str	r1, [r3]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	.loc 1 237 0
	ldr	r3, [sp, #28]
	lsl	r3, r3, #3
	ldr	r2, [sp]
	add	r3, r2, r3
	add	r2, sp, #12
	ldr	r1, [r2]
	str	r1, [r3]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
.L61:
.LBE7:
	.loc 1 240 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bge	.L62
	add	r3, r3, #1
.L62:
	asr	r3, r3, #1
	str	r3, [sp, #20]
	.loc 1 242 0
	b	.L63
.L66:
	.loc 1 243 0
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #20]
	sub	r3, r2, r3
	str	r3, [sp, #24]
	.loc 1 244 0
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bge	.L64
	add	r3, r3, #1
.L64:
	asr	r3, r3, #1
	str	r3, [sp, #20]
.L63:
	.loc 1 242 0
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bgt	.L65
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bgt	.L66
.L65:
	.loc 1 247 0
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #20]
	add	r3, r2, r3
	str	r3, [sp, #24]
	.loc 1 232 0
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L60:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	blt	.L67
	.loc 1 249 0
	add	sp, sp, #32
	@ sp needed for prologue
	bx	lr
.LFE21:
	.fnend
