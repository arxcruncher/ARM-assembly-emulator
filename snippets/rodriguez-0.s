	.section	.text.bitreverse_rodriguez,"ax",%progbits
	.align	2
	.global	bitreverse_rodriguez
	.code	16
	.thumb_func
	.type	bitreverse_rodriguez, %function
bitreverse_rodriguez:
	.fnstart
.LFB19:
	.loc 1 168 0
	.pad #48
	sub	sp, sp, #48
.LCFI7:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 176 0
	ldr	r3, [sp, #12]
	asr	r3, r3, #1
	str	r3, [sp, #32]
	.loc 1 177 0
	ldr	r3, [sp, #12]
	sub	r2, r3, #1
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	asr	r3, r3, #1
	mov	r1, #1
	mov	r0, r1
	lsl	r0, r0, r3
	mov	r3, r0
	sub	r3, r2, r3
	str	r3, [sp, #28]
	.loc 1 179 0
	mov	r3, #0
	str	r3, [sp, #40]
	.loc 1 181 0
	mov	r3, #1
	str	r3, [sp, #44]
	b	.L42
.L46:
	.loc 1 183 0
	ldr	r3, [sp, #32]
	str	r3, [sp, #36]
	b	.L43
.L44:
	.loc 1 184 0
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #36]
	sub	r3, r2, r3
	str	r3, [sp, #40]
	.loc 1 183 0
	ldr	r3, [sp, #36]
	asr	r3, r3, #1
	str	r3, [sp, #36]
.L43:
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #40]
	cmp	r2, r3
	ble	.L44
	.loc 1 186 0
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #36]
	add	r3, r2, r3
	str	r3, [sp, #40]
	.loc 1 188 0
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #40]
	cmp	r2, r3
	bge	.L45
	.loc 1 189 0
	ldr	r3, [sp, #44]
	lsl	r3, r3, #3
	ldr	r2, [sp, #8]
	add	r2, r2, r3
	add	r3, sp, #20
	ldr	r1, [r2]
	str	r1, [r3]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	.loc 1 190 0
	ldr	r3, [sp, #44]
	lsl	r3, r3, #3
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	ldr	r2, [sp, #40]
	lsl	r2, r2, #3
	ldr	r1, [sp, #8]
	add	r2, r1, r2
	ldr	r1, [r2]
	str	r1, [r3]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	.loc 1 191 0
	ldr	r3, [sp, #40]
	lsl	r3, r3, #3
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	add	r2, sp, #20
	ldr	r1, [r2]
	str	r1, [r3]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
.L45:
	.loc 1 181 0
	ldr	r3, [sp, #44]
	add	r3, r3, #1
	str	r3, [sp, #44]
.L42:
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #28]
	cmp	r2, r3
	ble	.L46
	.loc 1 194 0
	add	sp, sp, #48
	@ sp needed for prologue
	bx	lr
.LFE19:
	.fnend
