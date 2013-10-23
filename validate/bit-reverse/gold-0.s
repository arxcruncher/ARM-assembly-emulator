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
	.pad #40
	sub	sp, sp, #40
.LCFI6:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 145 0
	ldr	r3, [sp, #4]
	str	r3, [sp, #36]
	.loc 1 146 0
	ldr	r3, [sp, #36]
	sub	r3, r3, #1
	str	r3, [sp, #32]
	.loc 1 147 0
	mov	r3, #0
	str	r3, [sp, #28]
	.loc 1 148 0
	mov	r3, #0
	str	r3, [sp, #24]
	.loc 1 150 0
	b	.L34
.L38:
.LBB4:
	.loc 1 152 0
	ldr	r3, [sp, #36]
	asr	r3, r3, #1
	str	r3, [sp, #20]
	.loc 1 154 0
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bge	.L40
.LBB5:
	.loc 1 155 0
	ldr	r3, [sp, #28]
	lsl	r3, r3, #3
	ldr	r2, [sp]
	add	r2, r2, r3
	add	r3, sp, #12
	ldr	r1, [r2]
	str	r1, [r3]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	.loc 1 156 0
	ldr	r3, [sp, #28]
	lsl	r3, r3, #3
	ldr	r2, [sp]
	add	r3, r2, r3
	ldr	r2, [sp, #24]
	lsl	r2, r2, #3
	ldr	r1, [sp]
	add	r2, r1, r2
	ldr	r1, [r2]
	str	r1, [r3]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	.loc 1 157 0
	ldr	r3, [sp, #24]
	lsl	r3, r3, #3
	ldr	r2, [sp]
	add	r3, r2, r3
	add	r2, sp, #12
	ldr	r1, [r2]
	str	r1, [r3]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
.LBE5:
	.loc 1 160 0
	b	.L36
.L37:
	.loc 1 161 0
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #20]
	sub	r3, r2, r3
	str	r3, [sp, #24]
	.loc 1 162 0
	ldr	r3, [sp, #20]
	asr	r3, r3, #1
	str	r3, [sp, #20]
	b	.L36
.L40:
	.loc 1 160 0
	mov	r8, r8
.L36:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	ble	.L37
	.loc 1 164 0
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #20]
	add	r3, r2, r3
	str	r3, [sp, #24]
.LBE4:
	.loc 1 150 0
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L34:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #32]
	cmp	r2, r3
	blt	.L38
	.loc 1 166 0
	add	sp, sp, #40
	@ sp needed for prologue
	bx	lr
.LFE18:
	.fnend
	.size	bitreverse_gold_rader, .-bitreverse_gold_rader
