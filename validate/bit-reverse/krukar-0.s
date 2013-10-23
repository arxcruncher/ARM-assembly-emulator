	.section	.text.bitreverse_krukar,"ax",%progbits
	.align	2
	.global	bitreverse_krukar
	.code	16
	.thumb_func
	.type	bitreverse_krukar, %function
bitreverse_krukar:
	.fnstart
.LFB22:
	.loc 1 251 0
	.save	{lr}
	push	{lr}
.LCFI11:
	.pad #44
	sub	sp, sp, #44
.LCFI12:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 256 0
	ldr	r2, [sp, #4]
	mov	r3, #128
	lsl	r3, r3, #2
	cmp	r2, r3
	bgt	.L70
	.loc 1 257 0
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	mov	r0, r2
	mov	r1, r3
	bl	bitreverse_krukar_512
	.loc 1 258 0
	b	.L78
.L70:
	.loc 1 261 0
	ldr	r3, [sp]
	str	r3, [sp, #8]
	.loc 1 263 0
	mov	r3, #0
	str	r3, [sp, #36]
	b	.L72
.L77:
	.loc 1 265 0
	mov	r3, #0
	str	r3, [sp, #32]
	.loc 1 267 0
	mov	r3, #1
	str	r3, [sp, #28]
	ldr	r3, [sp, #4]
	asr	r3, r3, #1
	str	r3, [sp, #24]
	b	.L73
.L75:
	.loc 1 268 0
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #28]
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L74
	.loc 1 269 0
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #24]
	orr	r3, r3, r2
	str	r3, [sp, #32]
.L74:
	.loc 1 267 0
	ldr	r3, [sp, #28]
	lsl	r3, r3, #1
	str	r3, [sp, #28]
	ldr	r3, [sp, #24]
	asr	r3, r3, #1
	str	r3, [sp, #24]
.L73:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	blt	.L75
	.loc 1 271 0
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #32]
	cmp	r2, r3
	bge	.L76
	.loc 1 272 0
	ldr	r3, [sp, #36]
	lsl	r3, r3, #1
	lsl	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 273 0
	ldr	r3, [sp, #32]
	lsl	r3, r3, #1
	lsl	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	str	r3, [sp, #12]
	.loc 1 275 0
	ldr	r3, [sp, #16]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	.loc 1 276 0
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #16]
	str	r2, [r3]
	.loc 1 277 0
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #20]
	str	r2, [r3]
	.loc 1 279 0
	ldr	r3, [sp, #16]
	add	r3, r3, #4
	str	r3, [sp, #16]
	.loc 1 280 0
	ldr	r3, [sp, #12]
	add	r3, r3, #4
	str	r3, [sp, #12]
	.loc 1 282 0
	ldr	r3, [sp, #16]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	.loc 1 283 0
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #16]
	str	r2, [r3]
	.loc 1 284 0
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #20]
	str	r2, [r3]
.L76:
	.loc 1 263 0
	ldr	r3, [sp, #36]
	add	r3, r3, #1
	str	r3, [sp, #36]
.L72:
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	blt	.L77
.L78:
	.loc 1 287 0
	add	sp, sp, #44
	@ sp needed for prologue
	pop	{pc}
.LFE22:
	.fnend
	.size	bitreverse_krukar, .-bitreverse_krukar
	.section	.text.bitreverse_krukar_512,"ax",%progbits
	.align	2
	.global	bitreverse_krukar_512
	.code	16
	.thumb_func
	.type	bitreverse_krukar_512, %function
bitreverse_krukar_512:
	.fnstart
.LFB23:
	.loc 1 289 0
	.save	{r4, lr}
	push	{r4, lr}
.LCFI13:
	.pad #16
	sub	sp, sp, #16
.LCFI14:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 293 0
	ldr	r3, [sp]
	str	r3, [sp, #12]
	.loc 1 295 0
	ldr	r3, [sp, #4]
	cmp	r3, #32
	bne	.LCB971
	bl	.L85	@far jump
.LCB971:
	cmp	r3, #32
	bgt	.L90
	cmp	r3, #4
	bne	.LCB975
	bl	.L82	@far jump
.LCB975:
	cmp	r3, #4
	bgt	.L91
	cmp	r3, #2
	bne	.LCB979
	bl	.L95	@far jump
.LCB979:
	bl	.L80	@ far jump
.L91:
	cmp	r3, #8
	bne	.LCB985
	bl	.L83	@far jump
.LCB985:
	cmp	r3, #16
	bne	.LCB987
	bl	.L84	@far jump
.LCB987:
	bl	.L80	@ far jump
.L90:
	cmp	r3, #128
	bne	.LCB993
	bl	.L87	@far jump
.LCB993:
	cmp	r3, #128
	bgt	.L92
	cmp	r3, #64
	bne	.LCB997
	bl	.L86	@far jump
.LCB997:
	bl	.L80	@ far jump
.L92:
	mov	r2, #128
	lsl	r2, r2, #1
	cmp	r3, r2
	bne	.LCB1005
	bl	.L88	@far jump
.LCB1005:
	mov	r2, #128
	lsl	r2, r2, #2
	cmp	r3, r2
	beq	.LCB1009
	bl	.L80	@far jump
.LCB1009:
.L89:
	.loc 1 297 0
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r2, [sp, #12]
	mov	r1, #128
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #128
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 298 0
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r2, [sp, #12]
	ldr	r1, .L96
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L96
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 299 0
	ldr	r3, [sp, #12]
	add	r3, r3, #16
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #16
	ldr	r2, [sp, #12]
	mov	r1, #128
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #128
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 300 0
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	ldr	r2, [sp, #12]
	ldr	r1, .L96+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L96+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 301 0
	ldr	r3, [sp, #12]
	add	r3, r3, #24
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #24
	ldr	r2, [sp, #12]
	mov	r1, #192
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #192
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 302 0
	ldr	r3, [sp, #12]
	add	r3, r3, #28
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #28
	ldr	r2, [sp, #12]
	ldr	r1, .L96+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L96+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 303 0
	ldr	r3, [sp, #12]
	add	r3, r3, #32
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #32
	ldr	r2, [sp, #12]
	mov	r1, #128
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #128
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 304 0
	ldr	r3, [sp, #12]
	add	r3, r3, #36
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #36
	ldr	r2, [sp, #12]
	mov	r1, #129
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #129
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 305 0
	ldr	r3, [sp, #12]
	add	r3, r3, #40
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #40
	ldr	r2, [sp, #12]
	mov	r1, #160
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #160
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 306 0
	ldr	r3, [sp, #12]
	add	r3, r3, #44
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #44
	ldr	r2, [sp, #12]
	ldr	r1, .L96+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L96+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 307 0
	ldr	r3, [sp, #12]
	add	r3, r3, #48
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #48
	ldr	r2, [sp, #12]
	mov	r1, #192
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #192
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 308 0
	ldr	r3, [sp, #12]
	add	r3, r3, #52
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #52
	ldr	r2, [sp, #12]
	ldr	r1, .L96+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L96+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 309 0
	ldr	r3, [sp, #12]
	add	r3, r3, #56
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #56
	ldr	r2, [sp, #12]
	mov	r1, #224
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #224
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 310 0
	ldr	r3, [sp, #12]
	add	r3, r3, #60
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #60
	ldr	r2, [sp, #12]
	ldr	r1, .L96+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L96+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 311 0
	ldr	r3, [sp, #12]
	add	r3, r3, #64
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #64
	ldr	r2, [sp, #12]
	add	r2, r2, #1
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 312 0
	ldr	r3, [sp, #12]
	add	r3, r3, #68
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #68
	ldr	r2, [sp, #12]
	add	r2, r2, #5
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #5
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 313 0
	ldr	r3, [sp, #12]
	add	r3, r3, #72
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #72
	ldr	r2, [sp, #12]
	mov	r1, #144
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #144
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 314 0
	ldr	r3, [sp, #12]
	add	r3, r3, #76
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #76
	ldr	r2, [sp, #12]
	ldr	r1, .L96+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L96+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 315 0
	ldr	r3, [sp, #12]
	add	r3, r3, #80
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #80
	ldr	r2, [sp, #12]
	mov	r1, #160
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #160
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 316 0
	ldr	r3, [sp, #12]
	add	r3, r3, #84
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #84
	ldr	r2, [sp, #12]
	ldr	r1, .L96+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L96+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 317 0
	ldr	r3, [sp, #12]
	add	r3, r3, #88
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #88
	ldr	r2, [sp, #12]
	mov	r1, #208
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #208
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 318 0
	ldr	r3, [sp, #12]
	add	r3, r3, #92
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #92
	ldr	r2, [sp, #12]
	ldr	r1, .L96+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L96+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 319 0
	ldr	r3, [sp, #12]
	add	r3, r3, #96
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #96
	ldr	r2, [sp, #12]
	mov	r1, #192
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #192
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 320 0
	ldr	r3, [sp, #12]
	add	r3, r3, #100
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #100
	ldr	r2, [sp, #12]
	mov	r1, #193
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #193
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 321 0
	ldr	r3, [sp, #12]
	add	r3, r3, #104
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #104
	ldr	r2, [sp, #12]
	mov	r1, #176
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #176
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 322 0
	ldr	r3, [sp, #12]
	add	r3, r3, #108
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #108
	ldr	r2, [sp, #12]
	ldr	r1, .L96+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L96+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 323 0
	ldr	r3, [sp, #12]
	add	r3, r3, #112
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #112
	ldr	r2, [sp, #12]
	mov	r1, #224
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #224
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 324 0
	ldr	r3, [sp, #12]
	add	r3, r3, #116
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #116
	ldr	r2, [sp, #12]
	ldr	r1, .L96+40
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L96+40
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 325 0
	ldr	r3, [sp, #12]
	add	r3, r3, #120
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #120
	ldr	r2, [sp, #12]
	mov	r1, #240
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #240
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 326 0
	ldr	r3, [sp, #12]
	add	r3, r3, #124
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #124
	ldr	r2, [sp, #12]
	ldr	r1, .L96+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L96+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 327 0
	ldr	r3, [sp, #12]
	add	r3, r3, #136
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #136
	ldr	r2, [sp, #12]
	mov	r1, #136
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #136
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 328 0
	ldr	r3, [sp, #12]
	add	r3, r3, #140
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #140
	ldr	r2, [sp, #12]
	ldr	r1, .L96+48
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L96+48
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 329 0
	ldr	r3, [sp, #12]
	add	r3, r3, #144
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #144
	ldr	r2, [sp, #12]
	mov	r1, #144
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #144
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 330 0
	ldr	r3, [sp, #12]
	add	r3, r3, #148
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #148
	ldr	r2, [sp, #12]
	ldr	r1, .L96+52
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L96+52
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 331 0
	ldr	r3, [sp, #12]
	add	r3, r3, #152
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #152
	ldr	r2, [sp, #12]
	mov	r1, #200
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #200
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 332 0
	ldr	r3, [sp, #12]
	add	r3, r3, #156
	ldr	r4, [r3]
	b	.L97
.L98:
	.align	2
.L96:
	.word	2052
	.word	1028
	.word	3076
	.word	2564
	.word	1540
	.word	3588
	.word	2308
	.word	1284
	.word	3332
	.word	2820
	.word	1796
	.word	3844
	.word	2180
	.word	1156
.L97:
	ldr	r3, [sp, #12]
	add	r3, r3, #156
	ldr	r2, [sp, #12]
	ldr	r1, .L99
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L99
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 333 0
	ldr	r3, [sp, #12]
	add	r3, r3, #160
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #160
	ldr	r2, [sp, #12]
	mov	r1, #160
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #160
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 334 0
	ldr	r3, [sp, #12]
	add	r3, r3, #164
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #164
	ldr	r2, [sp, #12]
	mov	r1, #161
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #161
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 335 0
	ldr	r3, [sp, #12]
	add	r3, r3, #168
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #168
	ldr	r2, [sp, #12]
	mov	r1, #168
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #168
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 336 0
	ldr	r3, [sp, #12]
	add	r3, r3, #172
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #172
	ldr	r2, [sp, #12]
	ldr	r1, .L99+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L99+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 337 0
	ldr	r3, [sp, #12]
	add	r3, r3, #176
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #176
	ldr	r2, [sp, #12]
	mov	r1, #208
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #208
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 338 0
	ldr	r3, [sp, #12]
	add	r3, r3, #180
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #180
	ldr	r2, [sp, #12]
	ldr	r1, .L99+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L99+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 339 0
	ldr	r3, [sp, #12]
	add	r3, r3, #184
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #184
	ldr	r2, [sp, #12]
	mov	r1, #232
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #232
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 340 0
	ldr	r3, [sp, #12]
	add	r3, r3, #188
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #188
	ldr	r2, [sp, #12]
	ldr	r1, .L99+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L99+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 341 0
	ldr	r3, [sp, #12]
	add	r3, r3, #192
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #192
	ldr	r2, [sp, #12]
	add	r2, r2, #129
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #129
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 342 0
	ldr	r3, [sp, #12]
	add	r3, r3, #196
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #196
	ldr	r2, [sp, #12]
	add	r2, r2, #133
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #133
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 343 0
	ldr	r3, [sp, #12]
	add	r3, r3, #200
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #200
	ldr	r2, [sp, #12]
	mov	r1, #152
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #152
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 344 0
	ldr	r3, [sp, #12]
	add	r3, r3, #204
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #204
	ldr	r2, [sp, #12]
	ldr	r1, .L99+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L99+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 345 0
	ldr	r3, [sp, #12]
	add	r3, r3, #208
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #208
	ldr	r2, [sp, #12]
	mov	r1, #176
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #176
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 346 0
	ldr	r3, [sp, #12]
	add	r3, r3, #212
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #212
	ldr	r2, [sp, #12]
	ldr	r1, .L99+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L99+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 347 0
	ldr	r3, [sp, #12]
	add	r3, r3, #216
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #216
	ldr	r2, [sp, #12]
	mov	r1, #216
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #216
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 348 0
	ldr	r3, [sp, #12]
	add	r3, r3, #220
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #220
	ldr	r2, [sp, #12]
	ldr	r1, .L99+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L99+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 349 0
	ldr	r3, [sp, #12]
	add	r3, r3, #224
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #224
	ldr	r2, [sp, #12]
	mov	r1, #224
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #224
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 350 0
	ldr	r3, [sp, #12]
	add	r3, r3, #228
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #228
	ldr	r2, [sp, #12]
	mov	r1, #225
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #225
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 351 0
	ldr	r3, [sp, #12]
	add	r3, r3, #232
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #232
	ldr	r2, [sp, #12]
	mov	r1, #184
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #184
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 352 0
	ldr	r3, [sp, #12]
	add	r3, r3, #236
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #236
	ldr	r2, [sp, #12]
	ldr	r1, .L99+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L99+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 353 0
	ldr	r3, [sp, #12]
	add	r3, r3, #240
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #240
	ldr	r2, [sp, #12]
	mov	r1, #240
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #240
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 354 0
	ldr	r3, [sp, #12]
	add	r3, r3, #244
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #244
	ldr	r2, [sp, #12]
	ldr	r1, .L99+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L99+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 355 0
	ldr	r3, [sp, #12]
	add	r3, r3, #248
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #248
	ldr	r2, [sp, #12]
	mov	r1, #248
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #248
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 356 0
	ldr	r3, [sp, #12]
	add	r3, r3, #252
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #252
	ldr	r2, [sp, #12]
	ldr	r1, .L99+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L99+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 357 0
	ldr	r3, [sp, #12]
	add	r3, r3, #9
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #9
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #132
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #132
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 358 0
	ldr	r3, [sp, #12]
	add	r3, r3, #13
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #13
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L99+40
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L99+40
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 359 0
	ldr	r3, [sp, #12]
	add	r3, r3, #17
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #17
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #136
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #136
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 360 0
	ldr	r3, [sp, #12]
	add	r3, r3, #21
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #21
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L99+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L99+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 361 0
	ldr	r3, [sp, #12]
	add	r3, r3, #25
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #25
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #196
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #196
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 362 0
	ldr	r3, [sp, #12]
	add	r3, r3, #29
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #29
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L99+48
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L99+48
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 363 0
	ldr	r3, [sp, #12]
	add	r3, r3, #33
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #33
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #144
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #144
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 364 0
	ldr	r3, [sp, #12]
	add	r3, r3, #37
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #37
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #145
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #145
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 365 0
	ldr	r3, [sp, #12]
	b	.L100
.L101:
	.align	2
.L99:
	.word	3204
	.word	2692
	.word	1668
	.word	3716
	.word	2436
	.word	1412
	.word	3460
	.word	2948
	.word	1924
	.word	3972
	.word	2116
	.word	1092
	.word	3140
.L100:
	add	r3, r3, #41
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #41
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #164
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #164
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 366 0
	ldr	r3, [sp, #12]
	add	r3, r3, #45
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #45
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L102
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L102
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 367 0
	ldr	r3, [sp, #12]
	add	r3, r3, #49
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #49
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #200
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #200
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 368 0
	ldr	r3, [sp, #12]
	add	r3, r3, #53
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #53
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L102+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L102+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 369 0
	ldr	r3, [sp, #12]
	add	r3, r3, #57
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #57
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #228
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #228
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 370 0
	ldr	r3, [sp, #12]
	add	r3, r3, #61
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #61
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L102+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L102+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 371 0
	ldr	r3, [sp, #12]
	add	r3, r3, #73
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #73
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #148
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #148
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 372 0
	ldr	r3, [sp, #12]
	add	r3, r3, #77
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #77
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L102+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L102+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 373 0
	ldr	r3, [sp, #12]
	add	r3, r3, #81
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #81
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #168
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #168
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 374 0
	ldr	r3, [sp, #12]
	add	r3, r3, #85
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #85
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L102+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L102+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 375 0
	ldr	r3, [sp, #12]
	add	r3, r3, #89
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #89
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #212
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #212
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 376 0
	ldr	r3, [sp, #12]
	add	r3, r3, #93
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #93
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L102+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L102+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 377 0
	ldr	r3, [sp, #12]
	add	r3, r3, #97
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #97
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #208
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #208
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 378 0
	ldr	r3, [sp, #12]
	add	r3, r3, #101
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #101
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #209
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #209
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 379 0
	ldr	r3, [sp, #12]
	add	r3, r3, #105
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #105
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #180
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #180
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 380 0
	ldr	r3, [sp, #12]
	add	r3, r3, #109
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #109
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L102+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L102+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 381 0
	ldr	r3, [sp, #12]
	add	r3, r3, #113
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #113
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #232
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #232
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 382 0
	ldr	r3, [sp, #12]
	add	r3, r3, #117
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #117
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L102+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L102+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 383 0
	ldr	r3, [sp, #12]
	add	r3, r3, #121
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #121
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #244
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #244
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 384 0
	ldr	r3, [sp, #12]
	add	r3, r3, #125
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #125
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L102+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L102+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 385 0
	ldr	r3, [sp, #12]
	add	r3, r3, #137
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #137
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #140
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #140
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 386 0
	ldr	r3, [sp, #12]
	add	r3, r3, #141
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #141
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L102+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L102+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 387 0
	ldr	r3, [sp, #12]
	add	r3, r3, #145
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #145
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #152
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #152
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 388 0
	ldr	r3, [sp, #12]
	add	r3, r3, #149
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #149
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L102+40
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L102+40
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 389 0
	ldr	r3, [sp, #12]
	add	r3, r3, #153
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #153
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #204
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #204
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 390 0
	ldr	r3, [sp, #12]
	add	r3, r3, #157
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #157
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L102+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L102+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 391 0
	ldr	r3, [sp, #12]
	add	r3, r3, #161
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #161
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #176
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #176
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 392 0
	ldr	r3, [sp, #12]
	add	r3, r3, #165
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #165
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #177
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #177
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 393 0
	ldr	r3, [sp, #12]
	add	r3, r3, #169
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #169
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #172
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #172
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 394 0
	ldr	r3, [sp, #12]
	add	r3, r3, #173
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #173
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L102+48
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L102+48
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 395 0
	ldr	r3, [sp, #12]
	add	r3, r3, #177
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #177
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #216
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #216
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 396 0
	ldr	r3, [sp, #12]
	add	r3, r3, #181
	add	r3, r3, #255
	b	.L103
.L104:
	.align	2
.L102:
	.word	2628
	.word	1604
	.word	3652
	.word	2372
	.word	1348
	.word	3396
	.word	2884
	.word	1860
	.word	3908
	.word	2244
	.word	1220
	.word	3268
	.word	2756
.L103:
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #181
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L105
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L105
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 397 0
	ldr	r3, [sp, #12]
	add	r3, r3, #185
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #185
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #236
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #236
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 398 0
	ldr	r3, [sp, #12]
	add	r3, r3, #189
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #189
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L105+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L105+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 399 0
	ldr	r3, [sp, #12]
	add	r3, r3, #201
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #201
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #156
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #156
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 400 0
	ldr	r3, [sp, #12]
	add	r3, r3, #205
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #205
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L105+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L105+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 401 0
	ldr	r3, [sp, #12]
	add	r3, r3, #209
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #209
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #184
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #184
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 402 0
	ldr	r3, [sp, #12]
	add	r3, r3, #213
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #213
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L105+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L105+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 403 0
	ldr	r3, [sp, #12]
	add	r3, r3, #217
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #217
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #220
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #220
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 404 0
	ldr	r3, [sp, #12]
	add	r3, r3, #221
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #221
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L105+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L105+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 405 0
	ldr	r3, [sp, #12]
	add	r3, r3, #225
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #225
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #240
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #240
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 406 0
	ldr	r3, [sp, #12]
	add	r3, r3, #229
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #229
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #241
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #241
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 407 0
	ldr	r3, [sp, #12]
	add	r3, r3, #233
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #233
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #188
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #188
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 408 0
	ldr	r3, [sp, #12]
	add	r3, r3, #237
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #237
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L105+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L105+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 409 0
	ldr	r3, [sp, #12]
	add	r3, r3, #241
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #241
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #248
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #248
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 410 0
	ldr	r3, [sp, #12]
	add	r3, r3, #245
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #245
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L105+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L105+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 411 0
	ldr	r3, [sp, #12]
	add	r3, r3, #249
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #249
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #252
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #252
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 412 0
	ldr	r3, [sp, #12]
	add	r3, r3, #253
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #253
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L105+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L105+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 413 0
	ldr	r3, [sp, #12]
	mov	r1, #130
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #130
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #130
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #130
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 414 0
	ldr	r3, [sp, #12]
	mov	r1, #131
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #131
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L105+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L105+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 415 0
	ldr	r3, [sp, #12]
	mov	r1, #132
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #132
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #132
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #132
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 416 0
	ldr	r3, [sp, #12]
	mov	r1, #133
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #133
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L105+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L105+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 417 0
	ldr	r3, [sp, #12]
	mov	r1, #134
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #134
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #194
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #194
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 418 0
	ldr	r3, [sp, #12]
	mov	r1, #135
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #135
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L105+40
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L105+40
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 419 0
	ldr	r3, [sp, #12]
	mov	r1, #138
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #138
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #162
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #162
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 420 0
	ldr	r3, [sp, #12]
	mov	r1, #139
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #139
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L105+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L105+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 421 0
	ldr	r3, [sp, #12]
	mov	r1, #140
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #140
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #196
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #196
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 422 0
	ldr	r3, [sp, #12]
	mov	r1, #141
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #141
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L105+48
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L105+48
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 423 0
	ldr	r3, [sp, #12]
	mov	r1, #142
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #142
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #226
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #226
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 424 0
	ldr	r3, [sp, #12]
	mov	r1, #143
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #143
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L105+52
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	b	.L106
.L107:
	.align	2
.L105:
	.word	1732
	.word	3780
	.word	2500
	.word	1476
	.word	3524
	.word	3012
	.word	1988
	.word	4036
	.word	2084
	.word	1060
	.word	3108
	.word	2596
	.word	1572
	.word	3620
.L106:
	ldr	r2, .L108
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 425 0
	ldr	r3, [sp, #12]
	mov	r1, #146
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #146
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #146
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #146
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 426 0
	ldr	r3, [sp, #12]
	mov	r1, #147
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #147
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L108+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L108+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 427 0
	ldr	r3, [sp, #12]
	mov	r1, #148
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #148
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #164
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #164
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 428 0
	ldr	r3, [sp, #12]
	mov	r1, #149
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #149
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L108+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L108+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 429 0
	ldr	r3, [sp, #12]
	mov	r1, #150
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #150
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #210
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #210
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 430 0
	ldr	r3, [sp, #12]
	mov	r1, #151
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #151
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L108+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L108+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 431 0
	ldr	r3, [sp, #12]
	mov	r1, #152
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #152
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #200
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #200
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 432 0
	ldr	r3, [sp, #12]
	mov	r1, #153
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #153
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #201
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #201
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 433 0
	ldr	r3, [sp, #12]
	mov	r1, #154
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #154
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #178
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #178
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 434 0
	ldr	r3, [sp, #12]
	mov	r1, #155
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #155
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L108+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L108+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 435 0
	ldr	r3, [sp, #12]
	mov	r1, #156
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #156
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #228
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #228
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 436 0
	ldr	r3, [sp, #12]
	mov	r1, #157
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #157
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L108+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L108+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 437 0
	ldr	r3, [sp, #12]
	mov	r1, #158
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #158
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #242
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #242
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 438 0
	ldr	r3, [sp, #12]
	mov	r1, #159
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #159
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L108+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L108+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 439 0
	ldr	r3, [sp, #12]
	mov	r1, #162
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #162
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #138
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #138
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 440 0
	ldr	r3, [sp, #12]
	mov	r1, #163
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #163
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L108+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L108+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 441 0
	ldr	r3, [sp, #12]
	mov	r1, #164
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #164
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #148
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #148
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 442 0
	ldr	r3, [sp, #12]
	mov	r1, #165
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #165
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L108+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L108+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 443 0
	ldr	r3, [sp, #12]
	mov	r1, #166
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #166
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #202
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #202
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 444 0
	ldr	r3, [sp, #12]
	mov	r1, #167
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #167
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L108+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L108+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 445 0
	ldr	r3, [sp, #12]
	mov	r1, #170
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #170
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #170
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #170
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 446 0
	ldr	r3, [sp, #12]
	mov	r1, #171
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #171
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L108+40
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L108+40
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 447 0
	ldr	r3, [sp, #12]
	mov	r1, #172
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #172
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #212
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #212
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 448 0
	ldr	r3, [sp, #12]
	mov	r1, #173
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #173
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L108+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L108+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 449 0
	ldr	r3, [sp, #12]
	mov	r1, #174
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #174
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #234
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #234
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 450 0
	ldr	r3, [sp, #12]
	mov	r1, #175
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #175
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L108+48
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L108+48
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 451 0
	ldr	r3, [sp, #12]
	mov	r1, #178
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #178
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	b	.L109
.L110:
	.align	2
.L108:
	.word	3620
	.word	2340
	.word	1316
	.word	3364
	.word	2852
	.word	1828
	.word	3876
	.word	2212
	.word	1188
	.word	3236
	.word	2724
	.word	1700
	.word	3748
.L109:
	mov	r1, #154
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #154
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 452 0
	ldr	r3, [sp, #12]
	mov	r1, #179
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #179
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L111
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L111
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 453 0
	ldr	r3, [sp, #12]
	mov	r1, #180
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #180
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #180
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #180
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 454 0
	ldr	r3, [sp, #12]
	mov	r1, #181
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #181
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L111+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L111+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 455 0
	ldr	r3, [sp, #12]
	mov	r1, #182
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #182
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #218
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #218
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 456 0
	ldr	r3, [sp, #12]
	mov	r1, #183
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #183
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L111+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L111+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 457 0
	ldr	r3, [sp, #12]
	mov	r1, #184
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #184
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #232
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #232
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 458 0
	ldr	r3, [sp, #12]
	mov	r1, #185
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #185
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #233
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #233
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 459 0
	ldr	r3, [sp, #12]
	mov	r1, #186
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #186
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #186
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #186
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 460 0
	ldr	r3, [sp, #12]
	mov	r1, #187
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #187
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L111+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L111+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 461 0
	ldr	r3, [sp, #12]
	mov	r1, #188
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #188
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #244
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #244
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 462 0
	ldr	r3, [sp, #12]
	mov	r1, #189
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #189
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L111+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L111+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 463 0
	ldr	r3, [sp, #12]
	mov	r1, #190
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #190
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #250
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #250
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 464 0
	ldr	r3, [sp, #12]
	mov	r1, #191
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #191
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L111+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L111+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 465 0
	ldr	r3, [sp, #12]
	mov	r1, #194
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #194
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #134
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #134
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 466 0
	ldr	r3, [sp, #12]
	mov	r1, #195
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #195
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L111+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L111+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 467 0
	ldr	r3, [sp, #12]
	mov	r1, #196
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #196
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #140
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #140
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 468 0
	ldr	r3, [sp, #12]
	mov	r1, #197
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #197
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L111+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L111+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 469 0
	ldr	r3, [sp, #12]
	mov	r1, #198
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #198
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #198
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #198
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 470 0
	ldr	r3, [sp, #12]
	mov	r1, #199
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #199
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L111+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L111+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 471 0
	ldr	r3, [sp, #12]
	mov	r1, #202
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #202
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #166
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #166
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 472 0
	ldr	r3, [sp, #12]
	mov	r1, #203
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #203
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L111+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L111+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 473 0
	ldr	r3, [sp, #12]
	mov	r1, #204
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #204
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #204
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #204
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 474 0
	ldr	r3, [sp, #12]
	mov	r1, #205
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #205
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L111+40
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L111+40
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 475 0
	ldr	r3, [sp, #12]
	mov	r1, #206
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #206
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #230
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #230
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 476 0
	ldr	r3, [sp, #12]
	mov	r1, #207
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #207
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L111+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L111+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 477 0
	ldr	r3, [sp, #12]
	mov	r1, #210
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #210
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #150
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #150
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 478 0
	ldr	r3, [sp, #12]
	mov	r1, #211
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #211
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L111+48
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L111+48
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 479 0
	ldr	r3, [sp, #12]
	mov	r1, #212
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	b	.L112
.L113:
	.align	2
.L111:
	.word	2468
	.word	1444
	.word	3492
	.word	2980
	.word	1956
	.word	4004
	.word	2148
	.word	1124
	.word	3172
	.word	2660
	.word	1636
	.word	3684
	.word	2404
.L112:
	ldr	r3, [sp, #12]
	mov	r2, #212
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #172
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #172
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 480 0
	ldr	r3, [sp, #12]
	mov	r1, #213
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #213
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L114
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L114
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 481 0
	ldr	r3, [sp, #12]
	mov	r1, #214
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #214
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #214
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #214
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 482 0
	ldr	r3, [sp, #12]
	mov	r1, #215
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #215
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L114+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L114+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 483 0
	ldr	r3, [sp, #12]
	mov	r1, #218
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #218
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #182
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #182
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 484 0
	ldr	r3, [sp, #12]
	mov	r1, #219
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #219
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L114+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L114+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 485 0
	ldr	r3, [sp, #12]
	mov	r1, #220
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #220
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #236
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #236
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 486 0
	ldr	r3, [sp, #12]
	mov	r1, #221
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #221
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L114+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L114+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 487 0
	ldr	r3, [sp, #12]
	mov	r1, #222
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #222
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #246
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #246
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 488 0
	ldr	r3, [sp, #12]
	mov	r1, #223
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #223
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L114+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L114+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 489 0
	ldr	r3, [sp, #12]
	mov	r1, #226
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #226
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #142
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #142
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 490 0
	ldr	r3, [sp, #12]
	mov	r1, #227
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #227
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L114+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L114+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 491 0
	ldr	r3, [sp, #12]
	mov	r1, #228
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #228
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #156
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #156
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 492 0
	ldr	r3, [sp, #12]
	mov	r1, #229
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #229
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L114+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L114+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 493 0
	ldr	r3, [sp, #12]
	mov	r1, #230
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #230
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #206
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #206
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 494 0
	ldr	r3, [sp, #12]
	mov	r1, #231
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #231
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L114+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L114+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 495 0
	ldr	r3, [sp, #12]
	mov	r1, #234
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #234
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #174
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #174
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 496 0
	ldr	r3, [sp, #12]
	mov	r1, #235
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #235
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L114+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L114+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 497 0
	ldr	r3, [sp, #12]
	mov	r1, #236
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #236
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #220
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #220
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 498 0
	ldr	r3, [sp, #12]
	mov	r1, #237
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #237
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L114+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L114+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 499 0
	ldr	r3, [sp, #12]
	mov	r1, #238
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #238
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #238
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #238
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 500 0
	ldr	r3, [sp, #12]
	mov	r1, #239
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #239
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L114+40
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L114+40
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 501 0
	ldr	r3, [sp, #12]
	mov	r1, #242
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #242
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #158
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #158
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 502 0
	ldr	r3, [sp, #12]
	mov	r1, #243
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #243
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L114+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L114+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 503 0
	ldr	r3, [sp, #12]
	mov	r1, #244
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #244
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #188
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #188
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 504 0
	ldr	r3, [sp, #12]
	mov	r1, #245
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #245
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L114+48
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L114+48
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 505 0
	ldr	r3, [sp, #12]
	mov	r1, #246
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #246
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #222
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #222
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 506 0
	ldr	r3, [sp, #12]
	mov	r1, #247
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #247
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L114+52
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L114+52
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 507 0
	ldr	r3, [sp, #12]
	mov	r1, #250
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	b	.L115
.L116:
	.align	2
.L114:
	.word	1380
	.word	3428
	.word	2916
	.word	1892
	.word	3940
	.word	2276
	.word	1252
	.word	3300
	.word	2788
	.word	1764
	.word	3812
	.word	2532
	.word	1508
	.word	3556
.L115:
	mov	r2, #250
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #190
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #190
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 508 0
	ldr	r3, [sp, #12]
	mov	r1, #251
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #251
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L117
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 509 0
	ldr	r3, [sp, #12]
	mov	r1, #252
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #252
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #252
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #252
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 510 0
	ldr	r3, [sp, #12]
	mov	r1, #253
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #253
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L117+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 511 0
	ldr	r3, [sp, #12]
	mov	r1, #254
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #254
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #254
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #254
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 512 0
	ldr	r3, [sp, #12]
	mov	r1, #255
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #255
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L117+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 513 0
	ldr	r3, [sp, #12]
	mov	r1, #129
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #129
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #129
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #129
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 514 0
	ldr	r3, [sp, #12]
	ldr	r1, .L117+12
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+12
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L117+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 515 0
	ldr	r3, [sp, #12]
	mov	r1, #131
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #131
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #193
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #193
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 516 0
	ldr	r3, [sp, #12]
	ldr	r1, .L117+20
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+20
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L117+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 517 0
	ldr	r3, [sp, #12]
	mov	r1, #133
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #133
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #161
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #161
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 518 0
	ldr	r3, [sp, #12]
	ldr	r1, .L117+28
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+28
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L117+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 519 0
	ldr	r3, [sp, #12]
	mov	r1, #134
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #134
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #194
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #194
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 520 0
	ldr	r3, [sp, #12]
	ldr	r1, .L117+36
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+36
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L117+40
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+40
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 521 0
	ldr	r3, [sp, #12]
	mov	r1, #135
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #135
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #225
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #225
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 522 0
	ldr	r3, [sp, #12]
	ldr	r1, .L117+44
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+44
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L117+48
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+48
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 523 0
	ldr	r3, [sp, #12]
	mov	r1, #137
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #137
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #145
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #145
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 524 0
	ldr	r3, [sp, #12]
	ldr	r1, .L117+52
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+52
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L117+56
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+56
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 525 0
	ldr	r3, [sp, #12]
	mov	r1, #138
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #138
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #162
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #162
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 526 0
	ldr	r3, [sp, #12]
	ldr	r1, .L117+60
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+60
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L117+64
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+64
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 527 0
	ldr	r3, [sp, #12]
	mov	r1, #139
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #139
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #209
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #209
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 528 0
	ldr	r3, [sp, #12]
	ldr	r1, .L117+68
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+68
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L117+72
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+72
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 529 0
	ldr	r3, [sp, #12]
	mov	r1, #141
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #141
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #177
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #177
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 530 0
	ldr	r3, [sp, #12]
	ldr	r1, .L117+76
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+76
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L117+80
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+80
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 531 0
	ldr	r3, [sp, #12]
	mov	r1, #142
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #142
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #226
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #226
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 532 0
	ldr	r3, [sp, #12]
	ldr	r1, .L117+84
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+84
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L117+88
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+88
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 533 0
	ldr	r3, [sp, #12]
	mov	r1, #143
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #143
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #241
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #241
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 534 0
	ldr	r3, [sp, #12]
	ldr	r1, .L117+92
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+92
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L117+96
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+96
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 535 0
	ldr	r3, [sp, #12]
	mov	r1, #145
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #145
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #137
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #137
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 536 0
	ldr	r3, [sp, #12]
	ldr	r1, .L117+100
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L117+100
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	b	.L118
.L119:
	.align	2
.L117:
	.word	3044
	.word	2020
	.word	4068
	.word	1036
	.word	2068
	.word	1052
	.word	3092
	.word	1068
	.word	2580
	.word	1076
	.word	1556
	.word	1084
	.word	3604
	.word	1100
	.word	2324
	.word	1108
	.word	1300
	.word	1116
	.word	3348
	.word	1132
	.word	2836
	.word	1140
	.word	1812
	.word	1148
	.word	3860
	.word	1164
.L118:
	ldr	r1, .L120
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 537 0
	ldr	r3, [sp, #12]
	mov	r1, #147
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #147
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #201
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #201
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 538 0
	ldr	r3, [sp, #12]
	ldr	r1, .L120+4
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+4
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L120+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 539 0
	ldr	r3, [sp, #12]
	mov	r1, #149
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #149
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #169
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #169
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 540 0
	ldr	r3, [sp, #12]
	ldr	r1, .L120+12
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+12
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L120+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 541 0
	ldr	r3, [sp, #12]
	mov	r1, #150
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #150
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #210
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #210
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 542 0
	ldr	r3, [sp, #12]
	ldr	r1, .L120+20
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+20
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L120+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 543 0
	ldr	r3, [sp, #12]
	mov	r1, #151
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #151
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #233
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #233
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 544 0
	ldr	r3, [sp, #12]
	ldr	r1, .L120+28
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+28
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L120+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 545 0
	ldr	r3, [sp, #12]
	mov	r1, #153
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #153
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #153
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #153
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 546 0
	ldr	r3, [sp, #12]
	ldr	r1, .L120+36
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+36
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L120+40
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+40
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 547 0
	ldr	r3, [sp, #12]
	mov	r1, #154
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #154
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #178
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #178
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 548 0
	ldr	r3, [sp, #12]
	ldr	r1, .L120+44
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+44
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L120+48
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+48
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 549 0
	ldr	r3, [sp, #12]
	mov	r1, #155
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #155
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #217
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #217
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 550 0
	ldr	r3, [sp, #12]
	ldr	r1, .L120+52
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+52
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L120+56
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+56
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 551 0
	ldr	r3, [sp, #12]
	mov	r1, #157
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #157
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #185
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #185
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 552 0
	ldr	r3, [sp, #12]
	ldr	r1, .L120+60
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+60
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L120+64
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+64
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 553 0
	ldr	r3, [sp, #12]
	mov	r1, #158
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #158
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #242
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #242
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 554 0
	ldr	r3, [sp, #12]
	ldr	r1, .L120+68
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+68
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L120+72
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+72
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 555 0
	ldr	r3, [sp, #12]
	mov	r1, #159
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #159
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #249
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #249
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 556 0
	ldr	r3, [sp, #12]
	ldr	r1, .L120+76
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+76
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L120+80
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+80
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 557 0
	ldr	r3, [sp, #12]
	mov	r1, #161
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #161
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #133
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #133
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 558 0
	ldr	r3, [sp, #12]
	ldr	r1, .L120+84
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+84
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L120+88
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+88
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 559 0
	ldr	r3, [sp, #12]
	mov	r1, #163
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #163
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #197
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #197
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 560 0
	ldr	r3, [sp, #12]
	ldr	r1, .L120+92
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+92
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L120+96
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+96
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 561 0
	ldr	r3, [sp, #12]
	mov	r1, #165
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #165
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #165
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #165
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 562 0
	ldr	r3, [sp, #12]
	ldr	r1, .L120+100
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+100
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L120+104
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+104
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 563 0
	ldr	r3, [sp, #12]
	mov	r1, #166
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #166
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #202
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #202
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 564 0
	ldr	r3, [sp, #12]
	ldr	r1, .L120+108
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L120+108
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L120+112
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	b	.L121
.L122:
	.align	2
.L120:
	.word	2196
	.word	1180
	.word	3220
	.word	1196
	.word	2708
	.word	1204
	.word	1684
	.word	1212
	.word	3732
	.word	1228
	.word	2452
	.word	1236
	.word	1428
	.word	1244
	.word	3476
	.word	1260
	.word	2964
	.word	1268
	.word	1940
	.word	1276
	.word	3988
	.word	1292
	.word	2132
	.word	1308
	.word	3156
	.word	1324
	.word	2644
	.word	1332
	.word	1620
.L121:
	ldr	r2, .L123
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 565 0
	ldr	r3, [sp, #12]
	mov	r1, #167
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #167
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #229
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #229
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 566 0
	ldr	r3, [sp, #12]
	ldr	r1, .L123+4
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+4
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L123+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 567 0
	ldr	r3, [sp, #12]
	mov	r1, #169
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #169
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #149
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #149
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 568 0
	ldr	r3, [sp, #12]
	ldr	r1, .L123+12
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+12
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L123+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 569 0
	ldr	r3, [sp, #12]
	mov	r1, #171
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #171
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #213
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #213
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 570 0
	ldr	r3, [sp, #12]
	ldr	r1, .L123+20
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+20
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L123+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 571 0
	ldr	r3, [sp, #12]
	mov	r1, #173
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #173
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #181
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #181
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 572 0
	ldr	r3, [sp, #12]
	ldr	r1, .L123+28
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+28
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L123+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 573 0
	ldr	r3, [sp, #12]
	mov	r1, #174
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #174
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #234
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #234
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 574 0
	ldr	r3, [sp, #12]
	ldr	r1, .L123+36
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+36
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L123+40
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+40
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 575 0
	ldr	r3, [sp, #12]
	mov	r1, #175
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #175
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #245
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #245
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 576 0
	ldr	r3, [sp, #12]
	ldr	r1, .L123+44
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+44
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L123+48
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+48
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 577 0
	ldr	r3, [sp, #12]
	mov	r1, #177
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #177
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #141
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #141
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 578 0
	ldr	r3, [sp, #12]
	ldr	r1, .L123+52
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+52
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L123+56
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+56
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 579 0
	ldr	r3, [sp, #12]
	mov	r1, #179
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #179
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #205
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #205
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 580 0
	ldr	r3, [sp, #12]
	ldr	r1, .L123+60
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+60
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L123+64
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+64
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 581 0
	ldr	r3, [sp, #12]
	mov	r1, #181
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #181
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #173
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #173
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 582 0
	ldr	r3, [sp, #12]
	ldr	r1, .L123+68
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+68
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L123+72
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+72
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 583 0
	ldr	r3, [sp, #12]
	mov	r1, #182
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #182
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #218
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #218
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 584 0
	ldr	r3, [sp, #12]
	ldr	r1, .L123+76
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+76
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L123+80
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+80
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 585 0
	ldr	r3, [sp, #12]
	mov	r1, #183
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #183
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #237
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #237
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 586 0
	ldr	r3, [sp, #12]
	ldr	r1, .L123+84
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+84
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L123+88
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+88
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 587 0
	ldr	r3, [sp, #12]
	mov	r1, #185
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #185
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #157
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #157
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 588 0
	ldr	r3, [sp, #12]
	ldr	r1, .L123+92
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+92
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L123+96
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+96
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 589 0
	ldr	r3, [sp, #12]
	mov	r1, #187
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #187
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #221
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #221
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 590 0
	ldr	r3, [sp, #12]
	ldr	r1, .L123+100
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+100
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L123+104
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+104
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 591 0
	ldr	r3, [sp, #12]
	mov	r1, #189
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #189
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #189
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #189
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 592 0
	ldr	r3, [sp, #12]
	ldr	r1, .L123+108
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+108
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L123+112
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L123+112
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 593 0
	ldr	r3, [sp, #12]
	b	.L124
.L125:
	.align	2
.L123:
	.word	1620
	.word	1340
	.word	3668
	.word	1356
	.word	2388
	.word	1372
	.word	3412
	.word	1388
	.word	2900
	.word	1396
	.word	1876
	.word	1404
	.word	3924
	.word	1420
	.word	2260
	.word	1436
	.word	3284
	.word	1452
	.word	2772
	.word	1460
	.word	1748
	.word	1468
	.word	3796
	.word	1484
	.word	2516
	.word	1500
	.word	3540
	.word	1516
	.word	3028
.L124:
	mov	r1, #190
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #190
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #250
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #250
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 594 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L126+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 595 0
	ldr	r3, [sp, #12]
	mov	r1, #191
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #191
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #253
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #253
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 596 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126+8
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+8
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L126+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 597 0
	ldr	r3, [sp, #12]
	mov	r1, #193
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #193
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #131
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #131
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 598 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126+16
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+16
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L126+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 599 0
	ldr	r3, [sp, #12]
	mov	r1, #195
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #195
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #195
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #195
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 600 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126+24
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+24
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L126+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 601 0
	ldr	r3, [sp, #12]
	mov	r1, #197
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #197
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #163
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #163
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 602 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126+32
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+32
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L126+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 603 0
	ldr	r3, [sp, #12]
	mov	r1, #199
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #199
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #227
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #227
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 604 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126+40
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+40
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L126+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 605 0
	ldr	r3, [sp, #12]
	mov	r1, #201
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #201
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #147
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #147
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 606 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126+48
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+48
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L126+52
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+52
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 607 0
	ldr	r3, [sp, #12]
	mov	r1, #203
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #203
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #211
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #211
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 608 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126+56
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+56
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L126+60
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+60
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 609 0
	ldr	r3, [sp, #12]
	mov	r1, #205
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #205
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #179
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #179
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 610 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126+64
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+64
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L126+68
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+68
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 611 0
	ldr	r3, [sp, #12]
	mov	r1, #206
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #206
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #230
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #230
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 612 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126+72
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+72
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L126+76
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+76
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 613 0
	ldr	r3, [sp, #12]
	mov	r1, #207
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #207
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #243
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #243
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 614 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126+80
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+80
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L126+84
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+84
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 615 0
	ldr	r3, [sp, #12]
	mov	r1, #209
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #209
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #139
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #139
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 616 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126+88
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+88
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L126+92
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+92
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 617 0
	ldr	r3, [sp, #12]
	mov	r1, #211
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #211
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #203
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #203
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 618 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126+96
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+96
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L126+100
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+100
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 619 0
	ldr	r3, [sp, #12]
	mov	r1, #213
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #213
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #171
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #171
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 620 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126+104
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+104
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L126+108
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L126+108
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 621 0
	ldr	r3, [sp, #12]
	mov	r1, #215
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #215
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #235
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #235
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 622 0
	ldr	r3, [sp, #12]
	ldr	r1, .L126+112
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	b	.L127
.L128:
	.align	2
.L126:
	.word	1524
	.word	2004
	.word	1532
	.word	4052
	.word	1548
	.word	2100
	.word	1564
	.word	3124
	.word	1580
	.word	2612
	.word	1596
	.word	3636
	.word	1612
	.word	2356
	.word	1628
	.word	3380
	.word	1644
	.word	2868
	.word	1652
	.word	1844
	.word	1660
	.word	3892
	.word	1676
	.word	2228
	.word	1692
	.word	3252
	.word	1708
	.word	2740
	.word	1724
.L127:
	ldr	r2, .L129
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L129+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 623 0
	ldr	r3, [sp, #12]
	mov	r1, #217
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #217
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #155
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #155
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 624 0
	ldr	r3, [sp, #12]
	ldr	r1, .L129+8
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+8
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L129+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 625 0
	ldr	r3, [sp, #12]
	mov	r1, #219
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #219
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #219
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #219
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 626 0
	ldr	r3, [sp, #12]
	ldr	r1, .L129+16
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+16
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L129+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 627 0
	ldr	r3, [sp, #12]
	mov	r1, #221
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #221
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #187
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #187
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 628 0
	ldr	r3, [sp, #12]
	ldr	r1, .L129+24
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+24
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L129+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 629 0
	ldr	r3, [sp, #12]
	mov	r1, #222
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #222
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #246
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #246
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 630 0
	ldr	r3, [sp, #12]
	ldr	r1, .L129+32
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+32
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L129+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 631 0
	ldr	r3, [sp, #12]
	mov	r1, #223
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #223
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #251
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #251
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 632 0
	ldr	r3, [sp, #12]
	ldr	r1, .L129+40
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+40
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L129+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 633 0
	ldr	r3, [sp, #12]
	mov	r1, #225
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #225
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #135
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #135
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 634 0
	ldr	r3, [sp, #12]
	ldr	r1, .L129+48
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+48
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L129+52
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+52
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 635 0
	ldr	r3, [sp, #12]
	mov	r1, #227
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #227
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #199
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #199
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 636 0
	ldr	r3, [sp, #12]
	ldr	r1, .L129+56
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+56
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L129+60
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+60
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 637 0
	ldr	r3, [sp, #12]
	mov	r1, #229
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #229
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #167
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #167
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 638 0
	ldr	r3, [sp, #12]
	ldr	r1, .L129+64
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+64
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L129+68
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+68
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 639 0
	ldr	r3, [sp, #12]
	mov	r1, #231
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #231
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #231
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #231
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 640 0
	ldr	r3, [sp, #12]
	ldr	r1, .L129+72
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+72
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L129+76
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+76
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 641 0
	ldr	r3, [sp, #12]
	mov	r1, #233
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #233
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #151
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #151
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 642 0
	ldr	r3, [sp, #12]
	ldr	r1, .L129+80
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+80
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L129+84
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+84
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 643 0
	ldr	r3, [sp, #12]
	mov	r1, #235
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #235
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #215
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #215
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 644 0
	ldr	r3, [sp, #12]
	ldr	r1, .L129+88
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+88
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L129+92
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+92
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 645 0
	ldr	r3, [sp, #12]
	mov	r1, #237
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #237
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #183
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #183
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 646 0
	ldr	r3, [sp, #12]
	ldr	r1, .L129+96
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+96
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L129+100
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+100
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 647 0
	ldr	r3, [sp, #12]
	mov	r1, #239
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #239
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #247
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #247
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 648 0
	ldr	r3, [sp, #12]
	ldr	r1, .L129+104
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+104
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L129+108
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+108
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 649 0
	ldr	r3, [sp, #12]
	mov	r1, #241
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #241
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #143
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #143
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 650 0
	ldr	r3, [sp, #12]
	ldr	r1, .L129+112
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L129+112
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	b	.L130
.L131:
	.align	2
.L129:
	.word	1724
	.word	3764
	.word	1740
	.word	2484
	.word	1756
	.word	3508
	.word	1772
	.word	2996
	.word	1780
	.word	1972
	.word	1788
	.word	4020
	.word	1804
	.word	2164
	.word	1820
	.word	3188
	.word	1836
	.word	2676
	.word	1852
	.word	3700
	.word	1868
	.word	2420
	.word	1884
	.word	3444
	.word	1900
	.word	2932
	.word	1916
	.word	3956
	.word	1932
.L130:
	ldr	r1, .L132
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 651 0
	ldr	r3, [sp, #12]
	mov	r1, #243
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #243
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #207
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #207
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 652 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+4
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+4
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 653 0
	ldr	r3, [sp, #12]
	mov	r1, #245
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #245
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #175
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #175
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 654 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+12
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+12
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 655 0
	ldr	r3, [sp, #12]
	mov	r1, #247
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #247
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #239
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #239
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 656 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+20
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+20
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 657 0
	ldr	r3, [sp, #12]
	mov	r1, #249
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #249
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #159
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #159
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 658 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+28
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+28
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 659 0
	ldr	r3, [sp, #12]
	mov	r1, #251
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #251
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #223
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #223
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 660 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+36
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+36
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+40
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+40
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 661 0
	ldr	r3, [sp, #12]
	mov	r1, #253
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #253
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #191
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #191
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 662 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+44
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+44
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+48
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+48
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 663 0
	ldr	r3, [sp, #12]
	mov	r1, #255
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #255
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #255
	lsl	r1, r1, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #255
	lsl	r2, r2, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 664 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+52
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+52
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+56
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+56
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 665 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+60
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+60
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+64
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+64
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 666 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+68
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+68
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+72
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+72
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 667 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+76
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+76
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+80
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+80
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 668 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+84
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+84
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+88
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+88
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 669 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+92
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+92
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+96
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+96
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 670 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+100
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+100
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+104
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+104
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 671 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+108
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+108
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+112
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+112
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 672 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+116
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+116
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+120
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+120
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 673 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+124
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+124
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+128
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+128
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 674 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+132
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+132
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+136
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+136
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 675 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+140
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+140
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+144
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+144
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 676 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+148
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+148
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+152
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+152
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 677 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+156
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+156
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+160
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+160
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 678 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+164
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+164
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+168
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+168
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 679 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+172
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+172
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L132+176
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+176
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 680 0
	ldr	r3, [sp, #12]
	ldr	r1, .L132+180
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L132+180
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	b	.L133
.L134:
	.align	2
.L132:
	.word	2292
	.word	1948
	.word	3316
	.word	1964
	.word	2804
	.word	1980
	.word	3828
	.word	1996
	.word	2548
	.word	2012
	.word	3572
	.word	2028
	.word	3060
	.word	2044
	.word	4084
	.word	2072
	.word	3080
	.word	2076
	.word	3084
	.word	2088
	.word	2568
	.word	2092
	.word	2572
	.word	2104
	.word	3592
	.word	2108
	.word	3596
	.word	2120
	.word	2312
	.word	2124
	.word	2316
	.word	2136
	.word	3336
	.word	2140
	.word	3340
	.word	2152
	.word	2824
	.word	2156
	.word	2828
	.word	2168
	.word	3848
	.word	2172
	.word	3852
	.word	2200
	.word	3208
	.word	2204
.L133:
	ldr	r1, .L135
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 681 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+4
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+4
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 682 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+12
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+12
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 683 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+20
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+20
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 684 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+28
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+28
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 685 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+36
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+36
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+40
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+40
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 686 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+44
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+44
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+48
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+48
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 687 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+52
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+52
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+56
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+56
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 688 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+60
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+60
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+64
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+64
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 689 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+68
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+68
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+72
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+72
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 690 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+76
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+76
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+80
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+80
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 691 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+84
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+84
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+88
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+88
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 692 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+92
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+92
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+96
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+96
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 693 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+100
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+100
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+104
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+104
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 694 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+108
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+108
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+112
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+112
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 695 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+116
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+116
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+120
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+120
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 696 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+124
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+124
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+128
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+128
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 697 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+132
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+132
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+136
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+136
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 698 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+140
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+140
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+144
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+144
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 699 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+148
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+148
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+152
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+152
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 700 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+156
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+156
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+160
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+160
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 701 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+164
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+164
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+168
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+168
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 702 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+172
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+172
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+176
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+176
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 703 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+180
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+180
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+184
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+184
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 704 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+188
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+188
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+192
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+192
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 705 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+196
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+196
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+200
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+200
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 706 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+204
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+204
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+208
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+208
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 707 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+212
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+212
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+216
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+216
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 708 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+220
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+220
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+224
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+224
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 709 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+228
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+228
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+232
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+232
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 710 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+236
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+236
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+240
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+240
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 711 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+244
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+244
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L135+248
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L135+248
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 712 0
	ldr	r3, [sp, #12]
	ldr	r1, .L135+252
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	b	.L136
.L137:
	.align	2
.L135:
	.word	3212
	.word	2216
	.word	2696
	.word	2220
	.word	2700
	.word	2232
	.word	3720
	.word	2236
	.word	3724
	.word	2248
	.word	2440
	.word	2252
	.word	2444
	.word	2264
	.word	3464
	.word	2268
	.word	3468
	.word	2280
	.word	2952
	.word	2284
	.word	2956
	.word	2296
	.word	3976
	.word	2300
	.word	3980
	.word	2328
	.word	3144
	.word	2332
	.word	3148
	.word	2344
	.word	2632
	.word	2348
	.word	2636
	.word	2360
	.word	3656
	.word	2364
	.word	3660
	.word	2392
	.word	3400
	.word	2396
	.word	3404
	.word	2408
	.word	2888
	.word	2412
	.word	2892
	.word	2424
	.word	3912
	.word	2428
	.word	3916
	.word	2456
	.word	3272
	.word	2460
	.word	3276
	.word	2472
	.word	2760
	.word	2476
	.word	2764
	.word	2488
	.word	3784
	.word	2492
	.word	3788
	.word	2520
	.word	3528
	.word	2524
.L136:
	ldr	r2, .L138
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 713 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+8
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+8
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 714 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+16
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+16
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 715 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+24
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+24
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 716 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+32
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+32
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 717 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+40
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+40
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 718 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+48
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+48
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+52
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+52
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 719 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+56
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+56
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+60
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+60
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 720 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+64
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+64
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+68
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+68
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 721 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+72
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+72
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+76
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+76
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 722 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+80
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+80
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+84
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+84
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 723 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+88
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+88
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+92
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+92
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 724 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+96
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+96
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+100
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+100
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 725 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+104
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+104
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+108
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+108
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 726 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+112
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+112
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+116
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+116
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 727 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+120
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+120
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+124
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+124
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 728 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+128
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+128
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+132
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+132
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 729 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+136
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+136
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+140
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+140
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 730 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+144
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+144
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+148
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+148
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 731 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+152
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+152
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+156
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+156
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 732 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+160
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+160
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+164
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+164
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 733 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+168
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+168
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+172
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+172
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 734 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+176
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+176
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+180
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+180
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 735 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+184
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+184
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+188
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+188
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 736 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+192
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+192
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+196
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+196
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 737 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+200
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+200
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+204
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+204
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 738 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+208
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+208
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+212
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+212
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 739 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+216
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+216
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+220
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+220
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 740 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+224
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+224
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+228
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+228
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 741 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+232
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+232
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+236
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+236
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 742 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+240
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+240
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+244
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+244
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 743 0
	ldr	r3, [sp, #12]
	ldr	r1, .L138+248
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+248
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L138+252
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L138+252
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 744 0
	ldr	r3, [sp, #12]
	b	.L139
.L140:
	.align	2
.L138:
	.word	2524
	.word	3532
	.word	2536
	.word	3016
	.word	2540
	.word	3020
	.word	2552
	.word	4040
	.word	2556
	.word	4044
	.word	2584
	.word	3112
	.word	2588
	.word	3116
	.word	2616
	.word	3624
	.word	2620
	.word	3628
	.word	2648
	.word	3368
	.word	2652
	.word	3372
	.word	2664
	.word	2856
	.word	2668
	.word	2860
	.word	2680
	.word	3880
	.word	2684
	.word	3884
	.word	2712
	.word	3240
	.word	2716
	.word	3244
	.word	2744
	.word	3752
	.word	2748
	.word	3756
	.word	2776
	.word	3496
	.word	2780
	.word	3500
	.word	2792
	.word	2984
	.word	2796
	.word	2988
	.word	2808
	.word	4008
	.word	2812
	.word	4012
	.word	2840
	.word	3176
	.word	2844
	.word	3180
	.word	2872
	.word	3688
	.word	2876
	.word	3692
	.word	2904
	.word	3432
	.word	2908
	.word	3436
	.word	2936
	.word	3944
.L139:
	ldr	r1, .L141
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 745 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+8
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+8
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 746 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+16
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+16
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 747 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+24
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+24
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 748 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+32
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+32
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 749 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+40
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+40
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 750 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+48
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+48
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+52
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+52
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 751 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+56
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+56
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+60
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+60
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 752 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+64
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+64
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+68
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+68
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 753 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+72
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+72
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+76
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+76
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 754 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+80
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+80
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+84
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+84
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 755 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+88
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+88
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+92
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+92
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 756 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+96
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+96
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+100
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+100
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 757 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+104
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+104
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+108
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+108
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 758 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+112
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+112
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+116
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+116
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 759 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+120
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+120
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+124
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+124
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 760 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+128
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+128
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+132
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+132
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 761 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+136
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+136
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+140
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+140
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 762 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+144
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+144
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+148
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+148
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 763 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+152
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+152
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+156
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+156
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 764 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+160
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+160
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+164
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+164
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 765 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+168
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+168
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+172
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+172
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 766 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+176
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+176
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+180
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+180
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 767 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+184
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+184
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+188
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+188
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 768 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+192
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+192
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+196
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+196
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 769 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+200
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+200
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+204
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+204
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 770 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+208
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+208
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+212
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+212
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 771 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+216
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+216
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+220
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+220
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 772 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+224
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+224
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+228
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+228
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 773 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+232
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+232
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+236
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+236
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 774 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+240
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+240
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+244
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+244
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 775 0
	ldr	r3, [sp, #12]
	ldr	r1, .L141+248
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L141+248
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L141+252
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	b	.L142
.L143:
	.align	2
.L141:
	.word	2940
	.word	3948
	.word	2968
	.word	3304
	.word	2972
	.word	3308
	.word	3000
	.word	3816
	.word	3004
	.word	3820
	.word	3032
	.word	3560
	.word	3036
	.word	3564
	.word	3064
	.word	4072
	.word	3068
	.word	4076
	.word	3128
	.word	3608
	.word	3132
	.word	3612
	.word	3160
	.word	3352
	.word	3164
	.word	3356
	.word	3192
	.word	3864
	.word	3196
	.word	3868
	.word	3256
	.word	3736
	.word	3260
	.word	3740
	.word	3288
	.word	3480
	.word	3292
	.word	3484
	.word	3320
	.word	3992
	.word	3324
	.word	3996
	.word	3384
	.word	3672
	.word	3388
	.word	3676
	.word	3448
	.word	3928
	.word	3452
	.word	3932
	.word	3512
	.word	3800
	.word	3516
	.word	3804
	.word	3576
	.word	4056
	.word	3580
	.word	4060
	.word	3704
	.word	3896
	.word	3708
	.word	3900
	.word	3832
	.word	4024
.L142:
	ldr	r2, .L144
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 776 0
	ldr	r3, [sp, #12]
	ldr	r1, .L144+4
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L144+4
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L144+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L144+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 777 0
	bl	.L94	@ far jump
.L145:
	.align	2
.L144:
	.word	4024
	.word	3836
	.word	4028
.L88:
	.loc 1 779 0
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r2, [sp, #12]
	mov	r1, #128
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #128
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 780 0
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r2, [sp, #12]
	ldr	r1, .L146
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L146
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 781 0
	ldr	r3, [sp, #12]
	add	r3, r3, #16
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #16
	ldr	r2, [sp, #12]
	mov	r1, #128
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #128
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 782 0
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	ldr	r2, [sp, #12]
	mov	r1, #129
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #129
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 783 0
	ldr	r3, [sp, #12]
	add	r3, r3, #24
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #24
	ldr	r2, [sp, #12]
	mov	r1, #192
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #192
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 784 0
	ldr	r3, [sp, #12]
	add	r3, r3, #28
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #28
	ldr	r2, [sp, #12]
	ldr	r1, .L146+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L146+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 785 0
	ldr	r3, [sp, #12]
	add	r3, r3, #32
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #32
	ldr	r2, [sp, #12]
	add	r2, r2, #1
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 786 0
	ldr	r3, [sp, #12]
	add	r3, r3, #36
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #36
	ldr	r2, [sp, #12]
	add	r2, r2, #5
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #5
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 787 0
	ldr	r3, [sp, #12]
	add	r3, r3, #40
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #40
	ldr	r2, [sp, #12]
	mov	r1, #160
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #160
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 788 0
	ldr	r3, [sp, #12]
	add	r3, r3, #44
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #44
	ldr	r2, [sp, #12]
	ldr	r1, .L146+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L146+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 789 0
	ldr	r3, [sp, #12]
	add	r3, r3, #48
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #48
	ldr	r2, [sp, #12]
	mov	r1, #192
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #192
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 790 0
	ldr	r3, [sp, #12]
	add	r3, r3, #52
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #52
	ldr	r2, [sp, #12]
	mov	r1, #193
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #193
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 791 0
	ldr	r3, [sp, #12]
	add	r3, r3, #56
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #56
	ldr	r2, [sp, #12]
	mov	r1, #224
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #224
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 792 0
	ldr	r3, [sp, #12]
	add	r3, r3, #60
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #60
	ldr	r2, [sp, #12]
	ldr	r1, .L146+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L146+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 793 0
	ldr	r3, [sp, #12]
	add	r3, r3, #64
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #64
	ldr	r2, [sp, #12]
	add	r2, r2, #128
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #128
	str	r4, [r3]
	.loc 1 794 0
	ldr	r3, [sp, #12]
	add	r3, r3, #68
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #68
	ldr	r2, [sp, #12]
	add	r2, r2, #132
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #132
	str	r4, [r3]
	.loc 1 795 0
	ldr	r3, [sp, #12]
	add	r3, r3, #72
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #72
	ldr	r2, [sp, #12]
	mov	r1, #144
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #144
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 796 0
	ldr	r3, [sp, #12]
	add	r3, r3, #76
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #76
	ldr	r2, [sp, #12]
	ldr	r1, .L146+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L146+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 797 0
	ldr	r3, [sp, #12]
	add	r3, r3, #80
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #80
	ldr	r2, [sp, #12]
	mov	r1, #160
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #160
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 798 0
	ldr	r3, [sp, #12]
	add	r3, r3, #84
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #84
	ldr	r2, [sp, #12]
	mov	r1, #161
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #161
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 799 0
	ldr	r3, [sp, #12]
	add	r3, r3, #88
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #88
	ldr	r2, [sp, #12]
	mov	r1, #208
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #208
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 800 0
	ldr	r3, [sp, #12]
	add	r3, r3, #92
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #92
	ldr	r2, [sp, #12]
	ldr	r1, .L146+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L146+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 801 0
	ldr	r3, [sp, #12]
	add	r3, r3, #96
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #96
	ldr	r2, [sp, #12]
	add	r2, r2, #129
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #129
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 802 0
	ldr	r3, [sp, #12]
	add	r3, r3, #100
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #100
	ldr	r2, [sp, #12]
	add	r2, r2, #133
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #133
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 803 0
	ldr	r3, [sp, #12]
	add	r3, r3, #104
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #104
	ldr	r2, [sp, #12]
	mov	r1, #176
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #176
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 804 0
	ldr	r3, [sp, #12]
	add	r3, r3, #108
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #108
	ldr	r2, [sp, #12]
	ldr	r1, .L146+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L146+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 805 0
	ldr	r3, [sp, #12]
	add	r3, r3, #112
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #112
	ldr	r2, [sp, #12]
	mov	r1, #224
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #224
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 806 0
	ldr	r3, [sp, #12]
	add	r3, r3, #116
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #116
	ldr	r2, [sp, #12]
	mov	r1, #225
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #225
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 807 0
	ldr	r3, [sp, #12]
	add	r3, r3, #120
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #120
	ldr	r2, [sp, #12]
	mov	r1, #240
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #240
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 808 0
	ldr	r3, [sp, #12]
	add	r3, r3, #124
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #124
	ldr	r2, [sp, #12]
	ldr	r1, .L146+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L146+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 809 0
	ldr	r3, [sp, #12]
	add	r3, r3, #136
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #136
	ldr	r2, [sp, #12]
	mov	r1, #136
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #136
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 810 0
	ldr	r3, [sp, #12]
	add	r3, r3, #140
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #140
	ldr	r2, [sp, #12]
	ldr	r1, .L146+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L146+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 811 0
	ldr	r3, [sp, #12]
	add	r3, r3, #144
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #144
	ldr	r2, [sp, #12]
	mov	r1, #144
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #144
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 812 0
	ldr	r3, [sp, #12]
	add	r3, r3, #148
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #148
	ldr	r2, [sp, #12]
	mov	r1, #145
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #145
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 813 0
	ldr	r3, [sp, #12]
	add	r3, r3, #152
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #152
	ldr	r2, [sp, #12]
	mov	r1, #200
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #200
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 814 0
	ldr	r3, [sp, #12]
	add	r3, r3, #156
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #156
	b	.L147
.L148:
	.align	2
.L146:
	.word	1028
	.word	1540
	.word	1284
	.word	1796
	.word	1156
	.word	1668
	.word	1412
	.word	1924
	.word	1092
.L147:
	ldr	r2, [sp, #12]
	ldr	r1, .L149
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L149
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 815 0
	ldr	r3, [sp, #12]
	add	r3, r3, #160
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #160
	ldr	r2, [sp, #12]
	add	r2, r2, #65
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #65
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 816 0
	ldr	r3, [sp, #12]
	add	r3, r3, #164
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #164
	ldr	r2, [sp, #12]
	add	r2, r2, #69
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #69
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 817 0
	ldr	r3, [sp, #12]
	add	r3, r3, #168
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #168
	ldr	r2, [sp, #12]
	mov	r1, #168
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #168
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 818 0
	ldr	r3, [sp, #12]
	add	r3, r3, #172
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #172
	ldr	r2, [sp, #12]
	ldr	r1, .L149+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L149+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 819 0
	ldr	r3, [sp, #12]
	add	r3, r3, #176
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #176
	ldr	r2, [sp, #12]
	mov	r1, #208
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #208
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 820 0
	ldr	r3, [sp, #12]
	add	r3, r3, #180
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #180
	ldr	r2, [sp, #12]
	mov	r1, #209
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #209
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 821 0
	ldr	r3, [sp, #12]
	add	r3, r3, #184
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #184
	ldr	r2, [sp, #12]
	mov	r1, #232
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #232
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 822 0
	ldr	r3, [sp, #12]
	add	r3, r3, #188
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #188
	ldr	r2, [sp, #12]
	ldr	r1, .L149+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L149+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 823 0
	ldr	r3, [sp, #12]
	add	r3, r3, #200
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #200
	ldr	r2, [sp, #12]
	mov	r1, #152
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #152
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 824 0
	ldr	r3, [sp, #12]
	add	r3, r3, #204
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #204
	ldr	r2, [sp, #12]
	ldr	r1, .L149+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L149+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 825 0
	ldr	r3, [sp, #12]
	add	r3, r3, #208
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #208
	ldr	r2, [sp, #12]
	mov	r1, #176
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #176
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 826 0
	ldr	r3, [sp, #12]
	add	r3, r3, #212
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #212
	ldr	r2, [sp, #12]
	mov	r1, #177
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #177
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 827 0
	ldr	r3, [sp, #12]
	add	r3, r3, #216
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #216
	ldr	r2, [sp, #12]
	mov	r1, #216
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #216
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 828 0
	ldr	r3, [sp, #12]
	add	r3, r3, #220
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #220
	ldr	r2, [sp, #12]
	ldr	r1, .L149+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L149+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 829 0
	ldr	r3, [sp, #12]
	add	r3, r3, #224
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #224
	ldr	r2, [sp, #12]
	add	r2, r2, #193
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #193
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 830 0
	ldr	r3, [sp, #12]
	add	r3, r3, #228
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #228
	ldr	r2, [sp, #12]
	add	r2, r2, #197
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #197
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 831 0
	ldr	r3, [sp, #12]
	add	r3, r3, #232
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #232
	ldr	r2, [sp, #12]
	mov	r1, #184
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #184
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 832 0
	ldr	r3, [sp, #12]
	add	r3, r3, #236
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #236
	ldr	r2, [sp, #12]
	ldr	r1, .L149+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L149+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 833 0
	ldr	r3, [sp, #12]
	add	r3, r3, #240
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #240
	ldr	r2, [sp, #12]
	mov	r1, #240
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #240
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 834 0
	ldr	r3, [sp, #12]
	add	r3, r3, #244
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #244
	ldr	r2, [sp, #12]
	mov	r1, #241
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #241
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 835 0
	ldr	r3, [sp, #12]
	add	r3, r3, #248
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #248
	ldr	r2, [sp, #12]
	mov	r1, #248
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #248
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 836 0
	ldr	r3, [sp, #12]
	add	r3, r3, #252
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #252
	ldr	r2, [sp, #12]
	ldr	r1, .L149+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L149+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 837 0
	ldr	r3, [sp, #12]
	add	r3, r3, #9
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #9
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #132
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #132
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 838 0
	ldr	r3, [sp, #12]
	add	r3, r3, #13
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #13
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L149+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L149+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 839 0
	ldr	r3, [sp, #12]
	add	r3, r3, #17
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #17
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #136
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #136
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 840 0
	ldr	r3, [sp, #12]
	add	r3, r3, #21
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #21
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #137
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #137
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 841 0
	ldr	r3, [sp, #12]
	add	r3, r3, #25
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #25
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #196
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #196
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 842 0
	ldr	r3, [sp, #12]
	add	r3, r3, #29
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #29
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L149+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L149+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 843 0
	ldr	r3, [sp, #12]
	add	r3, r3, #41
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #41
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #164
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #164
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 844 0
	ldr	r3, [sp, #12]
	add	r3, r3, #45
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #45
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L149+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L149+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 845 0
	ldr	r3, [sp, #12]
	add	r3, r3, #49
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #49
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #200
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #200
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 846 0
	ldr	r3, [sp, #12]
	add	r3, r3, #53
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #53
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #201
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L150
.L151:
	.align	2
.L149:
	.word	1604
	.word	1348
	.word	1860
	.word	1220
	.word	1732
	.word	1476
	.word	1988
	.word	1060
	.word	1572
	.word	1316
.L150:
	ldr	r3, [sp, #12]
	mov	r2, #201
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 847 0
	ldr	r3, [sp, #12]
	add	r3, r3, #57
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #57
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #228
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #228
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 848 0
	ldr	r3, [sp, #12]
	add	r3, r3, #61
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #61
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L152
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L152
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 849 0
	ldr	r3, [sp, #12]
	add	r3, r3, #73
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #73
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #148
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #148
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 850 0
	ldr	r3, [sp, #12]
	add	r3, r3, #77
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #77
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L152+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L152+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 851 0
	ldr	r3, [sp, #12]
	add	r3, r3, #81
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #81
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #168
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #168
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 852 0
	ldr	r3, [sp, #12]
	add	r3, r3, #85
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #85
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #169
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #169
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 853 0
	ldr	r3, [sp, #12]
	add	r3, r3, #89
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #89
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #212
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #212
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 854 0
	ldr	r3, [sp, #12]
	add	r3, r3, #93
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #93
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L152+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L152+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 855 0
	ldr	r3, [sp, #12]
	add	r3, r3, #97
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #97
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #161
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #161
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 856 0
	ldr	r3, [sp, #12]
	add	r3, r3, #101
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #101
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #165
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #165
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 857 0
	ldr	r3, [sp, #12]
	add	r3, r3, #105
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #105
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #180
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #180
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 858 0
	ldr	r3, [sp, #12]
	add	r3, r3, #109
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #109
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L152+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L152+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 859 0
	ldr	r3, [sp, #12]
	add	r3, r3, #113
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #113
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #232
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #232
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 860 0
	ldr	r3, [sp, #12]
	add	r3, r3, #117
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #117
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #233
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #233
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 861 0
	ldr	r3, [sp, #12]
	add	r3, r3, #121
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #121
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #244
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #244
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 862 0
	ldr	r3, [sp, #12]
	add	r3, r3, #125
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #125
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L152+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L152+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 863 0
	ldr	r3, [sp, #12]
	add	r3, r3, #137
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #137
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #140
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #140
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 864 0
	ldr	r3, [sp, #12]
	add	r3, r3, #141
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #141
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L152+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L152+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 865 0
	ldr	r3, [sp, #12]
	add	r3, r3, #145
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #145
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #152
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #152
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 866 0
	ldr	r3, [sp, #12]
	add	r3, r3, #149
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #149
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #153
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #153
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 867 0
	ldr	r3, [sp, #12]
	add	r3, r3, #153
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #153
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #204
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #204
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 868 0
	ldr	r3, [sp, #12]
	add	r3, r3, #157
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #157
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L152+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L152+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 869 0
	ldr	r3, [sp, #12]
	add	r3, r3, #169
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #169
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #172
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #172
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 870 0
	ldr	r3, [sp, #12]
	add	r3, r3, #173
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #173
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L152+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L152+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 871 0
	ldr	r3, [sp, #12]
	add	r3, r3, #177
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #177
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #216
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #216
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 872 0
	ldr	r3, [sp, #12]
	add	r3, r3, #181
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #181
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #217
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #217
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 873 0
	ldr	r3, [sp, #12]
	add	r3, r3, #185
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #185
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #236
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #236
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 874 0
	ldr	r3, [sp, #12]
	add	r3, r3, #189
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #189
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L152+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L152+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 875 0
	ldr	r3, [sp, #12]
	add	r3, r3, #201
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #201
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #156
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #156
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 876 0
	ldr	r3, [sp, #12]
	add	r3, r3, #205
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #205
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L152+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L152+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 877 0
	ldr	r3, [sp, #12]
	add	r3, r3, #209
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #209
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #184
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #184
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 878 0
	ldr	r3, [sp, #12]
	b	.L153
.L154:
	.align	2
.L152:
	.word	1828
	.word	1188
	.word	1700
	.word	1444
	.word	1956
	.word	1124
	.word	1636
	.word	1380
	.word	1892
	.word	1252
.L153:
	add	r3, r3, #213
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #213
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #185
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #185
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 879 0
	ldr	r3, [sp, #12]
	add	r3, r3, #217
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #217
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #220
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #220
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 880 0
	ldr	r3, [sp, #12]
	add	r3, r3, #221
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #221
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L155
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L155
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 881 0
	ldr	r3, [sp, #12]
	add	r3, r3, #233
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #233
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #188
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #188
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 882 0
	ldr	r3, [sp, #12]
	add	r3, r3, #237
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #237
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L155+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L155+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 883 0
	ldr	r3, [sp, #12]
	add	r3, r3, #241
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #241
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #248
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #248
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 884 0
	ldr	r3, [sp, #12]
	add	r3, r3, #245
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #245
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #249
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #249
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 885 0
	ldr	r3, [sp, #12]
	add	r3, r3, #249
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #249
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #252
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #252
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 886 0
	ldr	r3, [sp, #12]
	add	r3, r3, #253
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #253
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	ldr	r1, .L155+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L155+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 887 0
	ldr	r3, [sp, #12]
	mov	r1, #130
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #130
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #130
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #130
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 888 0
	ldr	r3, [sp, #12]
	mov	r1, #131
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #131
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L155+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L155+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 889 0
	ldr	r3, [sp, #12]
	mov	r1, #134
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #134
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #194
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #194
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 890 0
	ldr	r3, [sp, #12]
	mov	r1, #135
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #135
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L155+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L155+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 891 0
	ldr	r3, [sp, #12]
	mov	r1, #138
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #138
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #162
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #162
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 892 0
	ldr	r3, [sp, #12]
	mov	r1, #139
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #139
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L155+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L155+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 893 0
	ldr	r3, [sp, #12]
	mov	r1, #140
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #140
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #196
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #196
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 894 0
	ldr	r3, [sp, #12]
	mov	r1, #141
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #141
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #197
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #197
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 895 0
	ldr	r3, [sp, #12]
	mov	r1, #142
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #142
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #226
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #226
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 896 0
	ldr	r3, [sp, #12]
	mov	r1, #143
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #143
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L155+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L155+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 897 0
	ldr	r3, [sp, #12]
	mov	r1, #146
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #146
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #146
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #146
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 898 0
	ldr	r3, [sp, #12]
	mov	r1, #147
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #147
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L155+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L155+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 899 0
	ldr	r3, [sp, #12]
	mov	r1, #148
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #148
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #164
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #164
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 900 0
	ldr	r3, [sp, #12]
	mov	r1, #149
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #149
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #165
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #165
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 901 0
	ldr	r3, [sp, #12]
	mov	r1, #150
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #150
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #210
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #210
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 902 0
	ldr	r3, [sp, #12]
	mov	r1, #151
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #151
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L155+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L155+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 903 0
	ldr	r3, [sp, #12]
	mov	r1, #154
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #154
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #178
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #178
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 904 0
	ldr	r3, [sp, #12]
	mov	r1, #155
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #155
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L155+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L155+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 905 0
	ldr	r3, [sp, #12]
	mov	r1, #156
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #156
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #228
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #228
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 906 0
	ldr	r3, [sp, #12]
	mov	r1, #157
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #157
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #229
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #229
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 907 0
	ldr	r3, [sp, #12]
	mov	r1, #158
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #158
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	b	.L156
.L157:
	.align	2
.L155:
	.word	1764
	.word	1508
	.word	2020
	.word	1044
	.word	1556
	.word	1300
	.word	1812
	.word	1172
	.word	1684
	.word	1428
.L156:
	mov	r1, #242
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #242
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 908 0
	ldr	r3, [sp, #12]
	mov	r1, #159
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #159
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L158
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L158
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 909 0
	ldr	r3, [sp, #12]
	mov	r1, #162
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #162
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #138
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #138
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 910 0
	ldr	r3, [sp, #12]
	mov	r1, #163
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #163
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L158+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L158+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 911 0
	ldr	r3, [sp, #12]
	mov	r1, #166
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #166
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #202
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #202
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 912 0
	ldr	r3, [sp, #12]
	mov	r1, #167
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #167
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L158+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L158+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 913 0
	ldr	r3, [sp, #12]
	mov	r1, #170
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #170
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #170
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #170
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 914 0
	ldr	r3, [sp, #12]
	mov	r1, #171
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #171
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L158+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L158+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 915 0
	ldr	r3, [sp, #12]
	mov	r1, #172
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #172
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #212
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #212
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 916 0
	ldr	r3, [sp, #12]
	mov	r1, #173
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #173
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #213
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #213
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 917 0
	ldr	r3, [sp, #12]
	mov	r1, #174
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #174
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #234
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #234
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 918 0
	ldr	r3, [sp, #12]
	mov	r1, #175
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #175
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L158+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L158+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 919 0
	ldr	r3, [sp, #12]
	mov	r1, #178
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #178
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #154
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #154
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 920 0
	ldr	r3, [sp, #12]
	mov	r1, #179
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #179
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L158+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L158+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 921 0
	ldr	r3, [sp, #12]
	mov	r1, #182
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #182
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #218
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #218
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 922 0
	ldr	r3, [sp, #12]
	mov	r1, #183
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #183
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L158+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L158+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 923 0
	ldr	r3, [sp, #12]
	mov	r1, #186
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #186
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #186
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #186
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 924 0
	ldr	r3, [sp, #12]
	mov	r1, #187
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #187
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L158+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L158+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 925 0
	ldr	r3, [sp, #12]
	mov	r1, #188
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #188
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #244
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #244
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 926 0
	ldr	r3, [sp, #12]
	mov	r1, #189
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #189
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #245
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #245
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 927 0
	ldr	r3, [sp, #12]
	mov	r1, #190
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #190
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #250
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #250
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 928 0
	ldr	r3, [sp, #12]
	mov	r1, #191
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #191
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L158+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L158+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 929 0
	ldr	r3, [sp, #12]
	mov	r1, #194
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #194
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #134
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #134
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 930 0
	ldr	r3, [sp, #12]
	mov	r1, #195
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #195
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L158+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L158+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 931 0
	ldr	r3, [sp, #12]
	mov	r1, #198
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #198
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #198
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #198
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 932 0
	ldr	r3, [sp, #12]
	mov	r1, #199
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #199
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L158+40
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L158+40
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 933 0
	ldr	r3, [sp, #12]
	mov	r1, #202
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #202
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #166
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #166
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 934 0
	ldr	r3, [sp, #12]
	mov	r1, #203
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #203
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L158+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L158+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 935 0
	ldr	r3, [sp, #12]
	mov	r1, #206
	lsl	r1, r1, #2
	b	.L159
.L160:
	.align	2
.L158:
	.word	1940
	.word	1108
	.word	1620
	.word	1364
	.word	1876
	.word	1236
	.word	1748
	.word	1492
	.word	2004
	.word	1076
	.word	1588
	.word	1332
.L159:
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #206
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #230
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #230
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 936 0
	ldr	r3, [sp, #12]
	mov	r1, #207
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #207
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L161
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L161
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 937 0
	ldr	r3, [sp, #12]
	mov	r1, #210
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #210
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #150
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #150
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 938 0
	ldr	r3, [sp, #12]
	mov	r1, #211
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #211
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L161+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L161+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 939 0
	ldr	r3, [sp, #12]
	mov	r1, #214
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #214
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #214
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #214
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 940 0
	ldr	r3, [sp, #12]
	mov	r1, #215
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #215
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L161+8
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L161+8
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 941 0
	ldr	r3, [sp, #12]
	mov	r1, #218
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #218
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #182
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #182
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 942 0
	ldr	r3, [sp, #12]
	mov	r1, #219
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #219
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L161+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L161+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 943 0
	ldr	r3, [sp, #12]
	mov	r1, #220
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #220
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #236
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #236
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 944 0
	ldr	r3, [sp, #12]
	mov	r1, #221
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #221
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #237
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #237
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 945 0
	ldr	r3, [sp, #12]
	mov	r1, #222
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #222
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #246
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #246
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 946 0
	ldr	r3, [sp, #12]
	mov	r1, #223
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #223
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L161+16
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L161+16
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 947 0
	ldr	r3, [sp, #12]
	mov	r1, #226
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #226
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #142
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #142
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 948 0
	ldr	r3, [sp, #12]
	mov	r1, #227
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #227
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L161+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L161+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 949 0
	ldr	r3, [sp, #12]
	mov	r1, #230
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #230
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #206
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #206
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 950 0
	ldr	r3, [sp, #12]
	mov	r1, #231
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #231
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L161+24
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L161+24
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 951 0
	ldr	r3, [sp, #12]
	mov	r1, #234
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #234
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #174
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #174
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 952 0
	ldr	r3, [sp, #12]
	mov	r1, #235
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #235
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L161+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L161+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 953 0
	ldr	r3, [sp, #12]
	mov	r1, #238
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #238
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #238
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #238
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 954 0
	ldr	r3, [sp, #12]
	mov	r1, #239
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #239
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L161+32
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L161+32
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 955 0
	ldr	r3, [sp, #12]
	mov	r1, #242
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #242
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #158
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #158
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 956 0
	ldr	r3, [sp, #12]
	mov	r1, #243
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #243
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L161+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L161+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 957 0
	ldr	r3, [sp, #12]
	mov	r1, #246
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #246
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #222
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #222
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 958 0
	ldr	r3, [sp, #12]
	mov	r1, #247
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #247
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L161+40
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L161+40
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 959 0
	ldr	r3, [sp, #12]
	mov	r1, #250
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #250
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #190
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #190
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 960 0
	ldr	r3, [sp, #12]
	mov	r1, #251
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #251
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L161+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L161+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 961 0
	ldr	r3, [sp, #12]
	mov	r1, #254
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #254
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #254
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #254
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 962 0
	ldr	r3, [sp, #12]
	mov	r1, #255
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #255
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L161+48
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L161+48
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 963 0
	ldr	r3, [sp, #12]
	mov	r1, #131
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	b	.L162
.L163:
	.align	2
.L161:
	.word	1844
	.word	1204
	.word	1716
	.word	1460
	.word	1972
	.word	1140
	.word	1652
	.word	1396
	.word	1908
	.word	1268
	.word	1780
	.word	1524
	.word	2036
.L162:
	ldr	r3, [sp, #12]
	mov	r2, #131
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #193
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #193
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 964 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L164+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 965 0
	ldr	r3, [sp, #12]
	mov	r1, #133
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #133
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #161
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #161
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 966 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164+8
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+8
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L164+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 967 0
	ldr	r3, [sp, #12]
	mov	r1, #135
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #135
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #225
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #225
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 968 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164+16
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+16
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L164+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 969 0
	ldr	r3, [sp, #12]
	mov	r1, #137
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #137
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #145
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #145
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 970 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164+24
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+24
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L164+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 971 0
	ldr	r3, [sp, #12]
	mov	r1, #139
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #139
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #209
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #209
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 972 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164+32
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+32
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L164+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 973 0
	ldr	r3, [sp, #12]
	mov	r1, #141
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #141
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #177
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #177
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 974 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164+40
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+40
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L164+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 975 0
	ldr	r3, [sp, #12]
	mov	r1, #143
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #143
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #241
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #241
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 976 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164+48
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+48
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L164+52
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+52
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 977 0
	ldr	r3, [sp, #12]
	mov	r1, #147
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #147
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #201
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #201
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 978 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164+56
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+56
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L164+60
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+60
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 979 0
	ldr	r3, [sp, #12]
	mov	r1, #149
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #149
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #169
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #169
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 980 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164+64
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+64
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L164+68
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+68
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 981 0
	ldr	r3, [sp, #12]
	mov	r1, #151
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #151
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #233
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #233
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 982 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164+72
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+72
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L164+76
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+76
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 983 0
	ldr	r3, [sp, #12]
	mov	r1, #155
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #155
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #217
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #217
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 984 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164+80
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+80
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L164+84
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+84
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 985 0
	ldr	r3, [sp, #12]
	mov	r1, #157
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #157
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #185
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #185
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 986 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164+88
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+88
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L164+92
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+92
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 987 0
	ldr	r3, [sp, #12]
	mov	r1, #159
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #159
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #249
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #249
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 988 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164+96
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+96
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L164+100
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+100
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 989 0
	ldr	r3, [sp, #12]
	mov	r1, #163
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #163
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #197
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #197
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 990 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164+104
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+104
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L164+108
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L164+108
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 991 0
	ldr	r3, [sp, #12]
	mov	r1, #167
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #167
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #229
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #229
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 992 0
	ldr	r3, [sp, #12]
	ldr	r1, .L164+112
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	b	.L165
.L166:
	.align	2
.L164:
	.word	1052
	.word	1548
	.word	1068
	.word	1292
	.word	1084
	.word	1804
	.word	1100
	.word	1164
	.word	1116
	.word	1676
	.word	1132
	.word	1420
	.word	1148
	.word	1932
	.word	1180
	.word	1612
	.word	1196
	.word	1356
	.word	1212
	.word	1868
	.word	1244
	.word	1740
	.word	1260
	.word	1484
	.word	1276
	.word	1996
	.word	1308
	.word	1580
	.word	1340
.L165:
	ldr	r2, .L167
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L167+4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 993 0
	ldr	r3, [sp, #12]
	mov	r1, #171
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #171
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #213
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #213
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 994 0
	ldr	r3, [sp, #12]
	ldr	r1, .L167+8
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+8
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L167+12
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+12
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 995 0
	ldr	r3, [sp, #12]
	mov	r1, #173
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #173
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #181
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #181
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 996 0
	ldr	r3, [sp, #12]
	ldr	r1, .L167+16
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+16
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L167+20
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+20
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 997 0
	ldr	r3, [sp, #12]
	mov	r1, #175
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #175
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #245
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #245
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 998 0
	ldr	r3, [sp, #12]
	ldr	r1, .L167+24
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+24
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L167+28
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+28
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 999 0
	ldr	r3, [sp, #12]
	mov	r1, #179
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #179
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #205
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #205
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1000 0
	ldr	r3, [sp, #12]
	ldr	r1, .L167+32
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+32
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L167+36
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+36
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1001 0
	ldr	r3, [sp, #12]
	mov	r1, #183
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #183
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #237
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #237
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1002 0
	ldr	r3, [sp, #12]
	ldr	r1, .L167+40
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+40
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L167+44
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+44
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1003 0
	ldr	r3, [sp, #12]
	mov	r1, #187
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #187
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #221
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #221
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1004 0
	ldr	r3, [sp, #12]
	ldr	r1, .L167+48
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+48
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L167+52
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+52
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1005 0
	ldr	r3, [sp, #12]
	mov	r1, #191
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #191
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #253
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #253
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1006 0
	ldr	r3, [sp, #12]
	ldr	r1, .L167+56
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+56
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L167+60
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+60
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1007 0
	ldr	r3, [sp, #12]
	mov	r1, #199
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #199
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #227
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #227
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1008 0
	ldr	r3, [sp, #12]
	ldr	r1, .L167+64
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+64
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L167+68
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+68
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1009 0
	ldr	r3, [sp, #12]
	mov	r1, #203
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #203
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #211
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #211
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1010 0
	ldr	r3, [sp, #12]
	ldr	r1, .L167+72
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+72
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L167+76
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+76
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1011 0
	ldr	r3, [sp, #12]
	mov	r1, #207
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #207
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #243
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #243
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1012 0
	ldr	r3, [sp, #12]
	ldr	r1, .L167+80
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+80
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L167+84
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+84
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1013 0
	ldr	r3, [sp, #12]
	mov	r1, #215
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #215
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #235
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #235
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1014 0
	ldr	r3, [sp, #12]
	ldr	r1, .L167+88
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+88
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L167+92
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+92
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1015 0
	ldr	r3, [sp, #12]
	mov	r1, #223
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #223
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #251
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #251
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1016 0
	ldr	r3, [sp, #12]
	ldr	r1, .L167+96
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+96
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L167+100
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+100
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1017 0
	ldr	r3, [sp, #12]
	mov	r1, #239
	lsl	r1, r1, #3
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #239
	lsl	r2, r2, #3
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #247
	lsl	r1, r1, #3
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #247
	lsl	r2, r2, #3
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1018 0
	ldr	r3, [sp, #12]
	ldr	r1, .L167+104
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+104
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, .L167+108
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r2, .L167+108
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1019 0
	bl	.L94	@ far jump
.L168:
	.align	2
.L167:
	.word	1340
	.word	1836
	.word	1372
	.word	1708
	.word	1388
	.word	1452
	.word	1404
	.word	1964
	.word	1436
	.word	1644
	.word	1468
	.word	1900
	.word	1500
	.word	1772
	.word	1532
	.word	2028
	.word	1596
	.word	1820
	.word	1628
	.word	1692
	.word	1660
	.word	1948
	.word	1724
	.word	1884
	.word	1788
	.word	2012
	.word	1916
	.word	1980
.L87:
	.loc 1 1021 0
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r2, [sp, #12]
	mov	r1, #128
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #128
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1022 0
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r2, [sp, #12]
	mov	r1, #129
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #129
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1023 0
	ldr	r3, [sp, #12]
	add	r3, r3, #16
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #16
	ldr	r2, [sp, #12]
	add	r2, r2, #1
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1024 0
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	ldr	r2, [sp, #12]
	add	r2, r2, #5
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #5
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1025 0
	ldr	r3, [sp, #12]
	add	r3, r3, #24
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #24
	ldr	r2, [sp, #12]
	mov	r1, #192
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #192
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1026 0
	ldr	r3, [sp, #12]
	add	r3, r3, #28
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #28
	ldr	r2, [sp, #12]
	mov	r1, #193
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #193
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1027 0
	ldr	r3, [sp, #12]
	add	r3, r3, #32
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #32
	ldr	r2, [sp, #12]
	add	r2, r2, #128
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #128
	str	r4, [r3]
	.loc 1 1028 0
	ldr	r3, [sp, #12]
	add	r3, r3, #36
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #36
	ldr	r2, [sp, #12]
	add	r2, r2, #132
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #132
	str	r4, [r3]
	.loc 1 1029 0
	ldr	r3, [sp, #12]
	add	r3, r3, #40
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #40
	ldr	r2, [sp, #12]
	mov	r1, #160
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #160
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1030 0
	ldr	r3, [sp, #12]
	add	r3, r3, #44
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #44
	ldr	r2, [sp, #12]
	mov	r1, #161
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #161
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1031 0
	ldr	r3, [sp, #12]
	add	r3, r3, #48
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #48
	ldr	r2, [sp, #12]
	add	r2, r2, #129
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #129
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1032 0
	ldr	r3, [sp, #12]
	add	r3, r3, #52
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #52
	ldr	r2, [sp, #12]
	add	r2, r2, #133
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #133
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1033 0
	ldr	r3, [sp, #12]
	add	r3, r3, #56
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #56
	ldr	r2, [sp, #12]
	mov	r1, #224
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #224
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1034 0
	ldr	r3, [sp, #12]
	add	r3, r3, #60
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #60
	ldr	r2, [sp, #12]
	mov	r1, #225
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #225
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1035 0
	ldr	r3, [sp, #12]
	add	r3, r3, #72
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #72
	ldr	r2, [sp, #12]
	mov	r1, #144
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #144
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1036 0
	ldr	r3, [sp, #12]
	add	r3, r3, #76
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #76
	ldr	r2, [sp, #12]
	mov	r1, #145
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #145
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1037 0
	ldr	r3, [sp, #12]
	add	r3, r3, #80
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #80
	ldr	r2, [sp, #12]
	add	r2, r2, #65
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #65
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1038 0
	ldr	r3, [sp, #12]
	add	r3, r3, #84
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #84
	ldr	r2, [sp, #12]
	add	r2, r2, #69
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #69
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1039 0
	ldr	r3, [sp, #12]
	add	r3, r3, #88
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #88
	ldr	r2, [sp, #12]
	mov	r1, #208
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #208
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1040 0
	ldr	r3, [sp, #12]
	add	r3, r3, #92
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #92
	ldr	r2, [sp, #12]
	mov	r1, #209
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #209
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1041 0
	ldr	r3, [sp, #12]
	add	r3, r3, #96
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #96
	ldr	r2, [sp, #12]
	add	r2, r2, #192
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #192
	str	r4, [r3]
	.loc 1 1042 0
	ldr	r3, [sp, #12]
	add	r3, r3, #100
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #100
	ldr	r2, [sp, #12]
	add	r2, r2, #196
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #196
	str	r4, [r3]
	.loc 1 1043 0
	ldr	r3, [sp, #12]
	add	r3, r3, #104
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #104
	ldr	r2, [sp, #12]
	mov	r1, #176
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #176
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1044 0
	ldr	r3, [sp, #12]
	add	r3, r3, #108
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #108
	ldr	r2, [sp, #12]
	mov	r1, #177
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #177
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1045 0
	ldr	r3, [sp, #12]
	add	r3, r3, #112
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #112
	ldr	r2, [sp, #12]
	add	r2, r2, #193
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #193
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1046 0
	ldr	r3, [sp, #12]
	add	r3, r3, #116
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #116
	ldr	r2, [sp, #12]
	add	r2, r2, #197
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #197
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1047 0
	ldr	r3, [sp, #12]
	add	r3, r3, #120
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #120
	ldr	r2, [sp, #12]
	mov	r1, #240
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #240
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1048 0
	ldr	r3, [sp, #12]
	add	r3, r3, #124
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #124
	ldr	r2, [sp, #12]
	mov	r1, #241
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #241
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1049 0
	ldr	r3, [sp, #12]
	add	r3, r3, #136
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #136
	ldr	r2, [sp, #12]
	mov	r1, #136
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #136
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1050 0
	ldr	r3, [sp, #12]
	add	r3, r3, #140
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #140
	ldr	r2, [sp, #12]
	mov	r1, #137
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #137
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1051 0
	ldr	r3, [sp, #12]
	add	r3, r3, #144
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #144
	ldr	r2, [sp, #12]
	add	r2, r2, #33
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #33
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1052 0
	ldr	r3, [sp, #12]
	add	r3, r3, #148
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #148
	ldr	r2, [sp, #12]
	add	r2, r2, #37
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #37
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1053 0
	ldr	r3, [sp, #12]
	add	r3, r3, #152
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #152
	ldr	r2, [sp, #12]
	mov	r1, #200
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #200
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1054 0
	ldr	r3, [sp, #12]
	add	r3, r3, #156
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #156
	ldr	r2, [sp, #12]
	mov	r1, #201
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #201
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1055 0
	ldr	r3, [sp, #12]
	add	r3, r3, #168
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #168
	ldr	r2, [sp, #12]
	mov	r1, #168
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #168
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1056 0
	ldr	r3, [sp, #12]
	add	r3, r3, #172
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #172
	ldr	r2, [sp, #12]
	mov	r1, #169
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #169
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1057 0
	ldr	r3, [sp, #12]
	add	r3, r3, #176
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #176
	ldr	r2, [sp, #12]
	add	r2, r2, #161
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #161
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1058 0
	ldr	r3, [sp, #12]
	add	r3, r3, #180
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #180
	ldr	r2, [sp, #12]
	add	r2, r2, #165
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #165
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1059 0
	ldr	r3, [sp, #12]
	add	r3, r3, #184
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #184
	ldr	r2, [sp, #12]
	mov	r1, #232
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #232
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1060 0
	ldr	r3, [sp, #12]
	add	r3, r3, #188
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #188
	ldr	r2, [sp, #12]
	mov	r1, #233
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #233
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1061 0
	ldr	r3, [sp, #12]
	add	r3, r3, #200
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #200
	ldr	r2, [sp, #12]
	mov	r1, #152
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #152
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1062 0
	ldr	r3, [sp, #12]
	add	r3, r3, #204
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #204
	ldr	r2, [sp, #12]
	mov	r1, #153
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #153
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1063 0
	ldr	r3, [sp, #12]
	add	r3, r3, #208
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #208
	ldr	r2, [sp, #12]
	add	r2, r2, #97
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #97
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1064 0
	ldr	r3, [sp, #12]
	add	r3, r3, #212
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #212
	ldr	r2, [sp, #12]
	add	r2, r2, #101
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #101
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1065 0
	ldr	r3, [sp, #12]
	add	r3, r3, #216
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #216
	ldr	r2, [sp, #12]
	mov	r1, #216
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #216
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1066 0
	ldr	r3, [sp, #12]
	add	r3, r3, #220
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #220
	ldr	r2, [sp, #12]
	mov	r1, #217
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #217
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1067 0
	ldr	r3, [sp, #12]
	add	r3, r3, #232
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #232
	ldr	r2, [sp, #12]
	mov	r1, #184
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #184
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1068 0
	ldr	r3, [sp, #12]
	add	r3, r3, #236
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #236
	ldr	r2, [sp, #12]
	mov	r1, #185
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #185
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1069 0
	ldr	r3, [sp, #12]
	add	r3, r3, #240
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #240
	ldr	r2, [sp, #12]
	add	r2, r2, #225
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #225
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1070 0
	ldr	r3, [sp, #12]
	add	r3, r3, #244
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #244
	ldr	r2, [sp, #12]
	add	r2, r2, #229
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #229
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1071 0
	ldr	r3, [sp, #12]
	add	r3, r3, #248
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #248
	ldr	r2, [sp, #12]
	mov	r1, #248
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #248
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1072 0
	ldr	r3, [sp, #12]
	add	r3, r3, #252
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #252
	ldr	r2, [sp, #12]
	mov	r1, #249
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #249
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1073 0
	ldr	r3, [sp, #12]
	add	r3, r3, #9
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #9
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #132
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #132
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1074 0
	ldr	r3, [sp, #12]
	add	r3, r3, #13
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #13
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #133
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #133
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1075 0
	ldr	r3, [sp, #12]
	add	r3, r3, #25
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #25
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #196
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #196
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1076 0
	ldr	r3, [sp, #12]
	add	r3, r3, #29
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #29
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #197
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #197
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1077 0
	ldr	r3, [sp, #12]
	add	r3, r3, #41
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #41
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #164
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #164
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1078 0
	ldr	r3, [sp, #12]
	add	r3, r3, #45
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #45
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #165
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #165
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1079 0
	ldr	r3, [sp, #12]
	add	r3, r3, #49
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #49
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #145
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #145
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1080 0
	ldr	r3, [sp, #12]
	add	r3, r3, #53
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #53
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #149
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #149
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1081 0
	ldr	r3, [sp, #12]
	add	r3, r3, #57
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #57
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #228
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #228
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1082 0
	ldr	r3, [sp, #12]
	add	r3, r3, #61
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #61
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #229
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #229
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1083 0
	ldr	r3, [sp, #12]
	add	r3, r3, #73
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #73
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #148
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #148
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1084 0
	ldr	r3, [sp, #12]
	add	r3, r3, #77
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #77
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #149
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #149
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1085 0
	ldr	r3, [sp, #12]
	add	r3, r3, #89
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #89
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #212
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #212
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1086 0
	ldr	r3, [sp, #12]
	add	r3, r3, #93
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #93
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #213
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #213
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1087 0
	ldr	r3, [sp, #12]
	add	r3, r3, #105
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #105
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #180
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #180
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1088 0
	ldr	r3, [sp, #12]
	add	r3, r3, #109
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #109
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #181
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #181
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1089 0
	ldr	r3, [sp, #12]
	add	r3, r3, #113
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #113
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #209
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #209
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1090 0
	ldr	r3, [sp, #12]
	add	r3, r3, #117
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #117
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #213
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #213
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1091 0
	ldr	r3, [sp, #12]
	add	r3, r3, #121
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #121
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #244
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #244
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1092 0
	ldr	r3, [sp, #12]
	add	r3, r3, #125
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #125
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #245
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #245
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1093 0
	ldr	r3, [sp, #12]
	add	r3, r3, #137
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #137
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #140
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #140
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1094 0
	ldr	r3, [sp, #12]
	add	r3, r3, #141
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #141
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #141
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #141
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1095 0
	ldr	r3, [sp, #12]
	add	r3, r3, #153
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #153
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #204
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #204
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1096 0
	ldr	r3, [sp, #12]
	add	r3, r3, #157
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #157
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #205
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #205
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1097 0
	ldr	r3, [sp, #12]
	add	r3, r3, #169
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #169
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #172
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #172
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1098 0
	ldr	r3, [sp, #12]
	add	r3, r3, #173
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #173
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #173
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #173
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1099 0
	ldr	r3, [sp, #12]
	add	r3, r3, #185
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #185
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #236
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #236
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1100 0
	ldr	r3, [sp, #12]
	add	r3, r3, #189
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #189
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #237
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #237
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1101 0
	ldr	r3, [sp, #12]
	add	r3, r3, #201
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #201
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #156
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #156
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1102 0
	ldr	r3, [sp, #12]
	add	r3, r3, #205
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #205
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #157
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #157
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1103 0
	ldr	r3, [sp, #12]
	add	r3, r3, #217
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #217
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #220
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #220
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1104 0
	ldr	r3, [sp, #12]
	add	r3, r3, #221
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #221
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #221
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #221
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1105 0
	ldr	r3, [sp, #12]
	add	r3, r3, #233
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #233
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #188
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #188
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1106 0
	ldr	r3, [sp, #12]
	add	r3, r3, #237
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #237
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #189
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #189
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1107 0
	ldr	r3, [sp, #12]
	add	r3, r3, #249
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #249
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #252
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #252
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1108 0
	ldr	r3, [sp, #12]
	add	r3, r3, #253
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #253
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	mov	r1, #253
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #253
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1109 0
	ldr	r3, [sp, #12]
	mov	r1, #134
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #134
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #194
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #194
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1110 0
	ldr	r3, [sp, #12]
	mov	r1, #135
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #135
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #195
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #195
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1111 0
	ldr	r3, [sp, #12]
	mov	r1, #138
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #138
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #162
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #162
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1112 0
	ldr	r3, [sp, #12]
	mov	r1, #139
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #139
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #163
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #163
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1113 0
	ldr	r3, [sp, #12]
	mov	r1, #142
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #142
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #226
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #226
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1114 0
	ldr	r3, [sp, #12]
	mov	r1, #143
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #143
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #227
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #227
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1115 0
	ldr	r3, [sp, #12]
	mov	r1, #150
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #150
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #210
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #210
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1116 0
	ldr	r3, [sp, #12]
	mov	r1, #151
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #151
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #211
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #211
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1117 0
	ldr	r3, [sp, #12]
	mov	r1, #154
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #154
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #178
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #178
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1118 0
	ldr	r3, [sp, #12]
	mov	r1, #155
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #155
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #179
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #179
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1119 0
	ldr	r3, [sp, #12]
	mov	r1, #158
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #158
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #242
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #242
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1120 0
	ldr	r3, [sp, #12]
	mov	r1, #159
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #159
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #243
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #243
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1121 0
	ldr	r3, [sp, #12]
	mov	r1, #166
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #166
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #202
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #202
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1122 0
	ldr	r3, [sp, #12]
	mov	r1, #167
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #167
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #203
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #203
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1123 0
	ldr	r3, [sp, #12]
	mov	r1, #174
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #174
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #234
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #234
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1124 0
	ldr	r3, [sp, #12]
	mov	r1, #175
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #175
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #235
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #235
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1125 0
	ldr	r3, [sp, #12]
	mov	r1, #182
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #182
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #218
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #218
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1126 0
	ldr	r3, [sp, #12]
	mov	r1, #183
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #183
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #219
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #219
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1127 0
	ldr	r3, [sp, #12]
	mov	r1, #190
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #190
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #250
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #250
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1128 0
	ldr	r3, [sp, #12]
	mov	r1, #191
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #191
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #251
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #251
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1129 0
	ldr	r3, [sp, #12]
	mov	r1, #206
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #206
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #230
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #230
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1130 0
	ldr	r3, [sp, #12]
	mov	r1, #207
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #207
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #231
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #231
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1131 0
	ldr	r3, [sp, #12]
	mov	r1, #222
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #222
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #246
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #246
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1132 0
	ldr	r3, [sp, #12]
	mov	r1, #223
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #223
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	r1, #247
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	mov	r2, #247
	lsl	r2, r2, #2
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 1133 0
	bl	.L94	@ far jump
.L86:
	.loc 1 1135 0
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r2, [sp, #12]
	add	r2, r2, #1
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1136 0
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r2, [sp, #12]
	add	r2, r2, #5
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #5
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1137 0
	ldr	r3, [sp, #12]
	add	r3, r3, #16
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #16
	ldr	r2, [sp, #12]
	add	r2, r2, #128
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #128
	str	r4, [r3]
	.loc 1 1138 0
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	ldr	r2, [sp, #12]
	add	r2, r2, #132
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #132
	str	r4, [r3]
	.loc 1 1139 0
	ldr	r3, [sp, #12]
	add	r3, r3, #24
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #24
	ldr	r2, [sp, #12]
	add	r2, r2, #129
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #129
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1140 0
	ldr	r3, [sp, #12]
	add	r3, r3, #28
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #28
	ldr	r2, [sp, #12]
	add	r2, r2, #133
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #133
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1141 0
	ldr	r3, [sp, #12]
	add	r3, r3, #32
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #32
	ldr	r2, [sp, #12]
	add	r2, r2, #64
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #64
	str	r4, [r3]
	.loc 1 1142 0
	ldr	r3, [sp, #12]
	add	r3, r3, #36
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #36
	ldr	r2, [sp, #12]
	add	r2, r2, #68
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #68
	str	r4, [r3]
	.loc 1 1143 0
	ldr	r3, [sp, #12]
	add	r3, r3, #40
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #40
	ldr	r2, [sp, #12]
	add	r2, r2, #65
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #65
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1144 0
	ldr	r3, [sp, #12]
	add	r3, r3, #44
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #44
	ldr	r2, [sp, #12]
	add	r2, r2, #69
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #69
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1145 0
	ldr	r3, [sp, #12]
	add	r3, r3, #48
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #48
	ldr	r2, [sp, #12]
	add	r2, r2, #192
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #192
	str	r4, [r3]
	.loc 1 1146 0
	ldr	r3, [sp, #12]
	add	r3, r3, #52
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #52
	ldr	r2, [sp, #12]
	add	r2, r2, #196
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #196
	str	r4, [r3]
	.loc 1 1147 0
	ldr	r3, [sp, #12]
	add	r3, r3, #56
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #56
	ldr	r2, [sp, #12]
	add	r2, r2, #193
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #193
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1148 0
	ldr	r3, [sp, #12]
	add	r3, r3, #60
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #60
	ldr	r2, [sp, #12]
	add	r2, r2, #197
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #197
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1149 0
	ldr	r3, [sp, #12]
	add	r3, r3, #72
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #72
	ldr	r2, [sp, #12]
	add	r2, r2, #33
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #33
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1150 0
	ldr	r3, [sp, #12]
	add	r3, r3, #76
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #76
	ldr	r2, [sp, #12]
	add	r2, r2, #37
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #37
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1151 0
	ldr	r3, [sp, #12]
	add	r3, r3, #80
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #80
	ldr	r2, [sp, #12]
	add	r2, r2, #160
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #160
	str	r4, [r3]
	.loc 1 1152 0
	ldr	r3, [sp, #12]
	add	r3, r3, #84
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #84
	ldr	r2, [sp, #12]
	add	r2, r2, #164
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #164
	str	r4, [r3]
	.loc 1 1153 0
	ldr	r3, [sp, #12]
	add	r3, r3, #88
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #88
	ldr	r2, [sp, #12]
	add	r2, r2, #161
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #161
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1154 0
	ldr	r3, [sp, #12]
	add	r3, r3, #92
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #92
	ldr	r2, [sp, #12]
	add	r2, r2, #165
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #165
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1155 0
	ldr	r3, [sp, #12]
	add	r3, r3, #104
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #104
	ldr	r2, [sp, #12]
	add	r2, r2, #97
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #97
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1156 0
	ldr	r3, [sp, #12]
	add	r3, r3, #108
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #108
	ldr	r2, [sp, #12]
	add	r2, r2, #101
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #101
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1157 0
	ldr	r3, [sp, #12]
	add	r3, r3, #112
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #112
	ldr	r2, [sp, #12]
	add	r2, r2, #224
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #224
	str	r4, [r3]
	.loc 1 1158 0
	ldr	r3, [sp, #12]
	add	r3, r3, #116
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #116
	ldr	r2, [sp, #12]
	add	r2, r2, #228
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #228
	str	r4, [r3]
	.loc 1 1159 0
	ldr	r3, [sp, #12]
	add	r3, r3, #120
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #120
	ldr	r2, [sp, #12]
	add	r2, r2, #225
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #225
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1160 0
	ldr	r3, [sp, #12]
	add	r3, r3, #124
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #124
	ldr	r2, [sp, #12]
	add	r2, r2, #229
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #229
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1161 0
	ldr	r3, [sp, #12]
	add	r3, r3, #136
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #136
	ldr	r2, [sp, #12]
	add	r2, r2, #17
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #17
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1162 0
	ldr	r3, [sp, #12]
	add	r3, r3, #140
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #140
	ldr	r2, [sp, #12]
	add	r2, r2, #21
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #21
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1163 0
	ldr	r3, [sp, #12]
	add	r3, r3, #152
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #152
	ldr	r2, [sp, #12]
	add	r2, r2, #145
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #145
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1164 0
	ldr	r3, [sp, #12]
	add	r3, r3, #156
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #156
	ldr	r2, [sp, #12]
	add	r2, r2, #149
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #149
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1165 0
	ldr	r3, [sp, #12]
	add	r3, r3, #168
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #168
	ldr	r2, [sp, #12]
	add	r2, r2, #81
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #81
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1166 0
	ldr	r3, [sp, #12]
	add	r3, r3, #172
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #172
	ldr	r2, [sp, #12]
	add	r2, r2, #85
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #85
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1167 0
	ldr	r3, [sp, #12]
	add	r3, r3, #176
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #176
	ldr	r2, [sp, #12]
	add	r2, r2, #208
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #208
	str	r4, [r3]
	.loc 1 1168 0
	ldr	r3, [sp, #12]
	add	r3, r3, #180
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #180
	ldr	r2, [sp, #12]
	add	r2, r2, #212
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #212
	str	r4, [r3]
	.loc 1 1169 0
	ldr	r3, [sp, #12]
	add	r3, r3, #184
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #184
	ldr	r2, [sp, #12]
	add	r2, r2, #209
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #209
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1170 0
	ldr	r3, [sp, #12]
	add	r3, r3, #188
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #188
	ldr	r2, [sp, #12]
	add	r2, r2, #213
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #213
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1171 0
	ldr	r3, [sp, #12]
	add	r3, r3, #200
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #200
	ldr	r2, [sp, #12]
	add	r2, r2, #49
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #49
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1172 0
	ldr	r3, [sp, #12]
	add	r3, r3, #204
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #204
	ldr	r2, [sp, #12]
	add	r2, r2, #53
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #53
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1173 0
	ldr	r3, [sp, #12]
	add	r3, r3, #216
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #216
	ldr	r2, [sp, #12]
	add	r2, r2, #177
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #177
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1174 0
	ldr	r3, [sp, #12]
	add	r3, r3, #220
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #220
	ldr	r2, [sp, #12]
	add	r2, r2, #181
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #181
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1175 0
	ldr	r3, [sp, #12]
	add	r3, r3, #232
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #232
	ldr	r2, [sp, #12]
	add	r2, r2, #113
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #113
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1176 0
	ldr	r3, [sp, #12]
	add	r3, r3, #236
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #236
	ldr	r2, [sp, #12]
	add	r2, r2, #117
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #117
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1177 0
	ldr	r3, [sp, #12]
	add	r3, r3, #248
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #248
	ldr	r2, [sp, #12]
	add	r2, r2, #241
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #241
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1178 0
	ldr	r3, [sp, #12]
	add	r3, r3, #252
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #252
	ldr	r2, [sp, #12]
	add	r2, r2, #245
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #245
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1179 0
	ldr	r3, [sp, #12]
	add	r3, r3, #25
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #25
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #137
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #137
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1180 0
	ldr	r3, [sp, #12]
	add	r3, r3, #29
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #29
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #141
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #141
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1181 0
	ldr	r3, [sp, #12]
	add	r3, r3, #41
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #41
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #73
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #73
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1182 0
	ldr	r3, [sp, #12]
	add	r3, r3, #45
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #45
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #77
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #77
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1183 0
	ldr	r3, [sp, #12]
	add	r3, r3, #57
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #57
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #201
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #201
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1184 0
	ldr	r3, [sp, #12]
	add	r3, r3, #61
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #61
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #205
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #205
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1185 0
	ldr	r3, [sp, #12]
	add	r3, r3, #89
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #89
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #169
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #169
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1186 0
	ldr	r3, [sp, #12]
	add	r3, r3, #93
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #93
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #173
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #173
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1187 0
	ldr	r3, [sp, #12]
	add	r3, r3, #121
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #121
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #233
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #233
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1188 0
	ldr	r3, [sp, #12]
	add	r3, r3, #125
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #125
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #237
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #237
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1189 0
	ldr	r3, [sp, #12]
	add	r3, r3, #185
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #185
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #217
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #217
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1190 0
	ldr	r3, [sp, #12]
	add	r3, r3, #189
	add	r3, r3, #255
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #189
	add	r3, r3, #255
	ldr	r2, [sp, #12]
	add	r2, r2, #221
	add	r2, r2, #255
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #221
	add	r3, r3, #255
	str	r4, [r3]
	.loc 1 1191 0
	b	.L94
.L85:
	.loc 1 1193 0
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r2, [sp, #12]
	add	r2, r2, #128
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #128
	str	r4, [r3]
	.loc 1 1194 0
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r2, [sp, #12]
	add	r2, r2, #132
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #132
	str	r4, [r3]
	.loc 1 1195 0
	ldr	r3, [sp, #12]
	add	r3, r3, #16
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #16
	ldr	r2, [sp, #12]
	add	r2, r2, #64
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #64
	str	r4, [r3]
	.loc 1 1196 0
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	ldr	r2, [sp, #12]
	add	r2, r2, #68
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #68
	str	r4, [r3]
	.loc 1 1197 0
	ldr	r3, [sp, #12]
	add	r3, r3, #24
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #24
	ldr	r2, [sp, #12]
	add	r2, r2, #192
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #192
	str	r4, [r3]
	.loc 1 1198 0
	ldr	r3, [sp, #12]
	add	r3, r3, #28
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #28
	ldr	r2, [sp, #12]
	add	r2, r2, #196
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #196
	str	r4, [r3]
	.loc 1 1199 0
	ldr	r3, [sp, #12]
	add	r3, r3, #40
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #40
	ldr	r2, [sp, #12]
	add	r2, r2, #160
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #160
	str	r4, [r3]
	.loc 1 1200 0
	ldr	r3, [sp, #12]
	add	r3, r3, #44
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #44
	ldr	r2, [sp, #12]
	add	r2, r2, #164
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #164
	str	r4, [r3]
	.loc 1 1201 0
	ldr	r3, [sp, #12]
	add	r3, r3, #48
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #48
	ldr	r2, [sp, #12]
	add	r2, r2, #96
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #96
	str	r4, [r3]
	.loc 1 1202 0
	ldr	r3, [sp, #12]
	add	r3, r3, #52
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #52
	ldr	r2, [sp, #12]
	add	r2, r2, #100
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #100
	str	r4, [r3]
	.loc 1 1203 0
	ldr	r3, [sp, #12]
	add	r3, r3, #56
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #56
	ldr	r2, [sp, #12]
	add	r2, r2, #224
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #224
	str	r4, [r3]
	.loc 1 1204 0
	ldr	r3, [sp, #12]
	add	r3, r3, #60
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #60
	ldr	r2, [sp, #12]
	add	r2, r2, #228
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #228
	str	r4, [r3]
	.loc 1 1205 0
	ldr	r3, [sp, #12]
	add	r3, r3, #72
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #72
	ldr	r2, [sp, #12]
	add	r2, r2, #144
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #144
	str	r4, [r3]
	.loc 1 1206 0
	ldr	r3, [sp, #12]
	add	r3, r3, #76
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #76
	ldr	r2, [sp, #12]
	add	r2, r2, #148
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #148
	str	r4, [r3]
	.loc 1 1207 0
	ldr	r3, [sp, #12]
	add	r3, r3, #88
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #88
	ldr	r2, [sp, #12]
	add	r2, r2, #208
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #208
	str	r4, [r3]
	.loc 1 1208 0
	ldr	r3, [sp, #12]
	add	r3, r3, #92
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #92
	ldr	r2, [sp, #12]
	add	r2, r2, #212
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #212
	str	r4, [r3]
	.loc 1 1209 0
	ldr	r3, [sp, #12]
	add	r3, r3, #104
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #104
	ldr	r2, [sp, #12]
	add	r2, r2, #176
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #176
	str	r4, [r3]
	.loc 1 1210 0
	ldr	r3, [sp, #12]
	add	r3, r3, #108
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #108
	ldr	r2, [sp, #12]
	add	r2, r2, #180
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #180
	str	r4, [r3]
	.loc 1 1211 0
	ldr	r3, [sp, #12]
	add	r3, r3, #120
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #120
	ldr	r2, [sp, #12]
	add	r2, r2, #240
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #240
	str	r4, [r3]
	.loc 1 1212 0
	ldr	r3, [sp, #12]
	add	r3, r3, #124
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #124
	ldr	r2, [sp, #12]
	add	r2, r2, #244
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #244
	str	r4, [r3]
	.loc 1 1213 0
	ldr	r3, [sp, #12]
	add	r3, r3, #152
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #152
	ldr	r2, [sp, #12]
	add	r2, r2, #200
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #200
	str	r4, [r3]
	.loc 1 1214 0
	ldr	r3, [sp, #12]
	add	r3, r3, #156
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #156
	ldr	r2, [sp, #12]
	add	r2, r2, #204
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #204
	str	r4, [r3]
	.loc 1 1215 0
	ldr	r3, [sp, #12]
	add	r3, r3, #184
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #184
	ldr	r2, [sp, #12]
	add	r2, r2, #232
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #232
	str	r4, [r3]
	.loc 1 1216 0
	ldr	r3, [sp, #12]
	add	r3, r3, #188
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #188
	ldr	r2, [sp, #12]
	add	r2, r2, #236
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #236
	str	r4, [r3]
	.loc 1 1217 0
	b	.L94
.L84:
	.loc 1 1219 0
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r2, [sp, #12]
	add	r2, r2, #64
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #64
	str	r4, [r3]
	.loc 1 1220 0
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r2, [sp, #12]
	add	r2, r2, #68
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #68
	str	r4, [r3]
	.loc 1 1221 0
	ldr	r3, [sp, #12]
	add	r3, r3, #16
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #16
	ldr	r2, [sp, #12]
	add	r2, r2, #32
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #32
	str	r4, [r3]
	.loc 1 1222 0
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	ldr	r2, [sp, #12]
	add	r2, r2, #36
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #36
	str	r4, [r3]
	.loc 1 1223 0
	ldr	r3, [sp, #12]
	add	r3, r3, #24
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #24
	ldr	r2, [sp, #12]
	add	r2, r2, #96
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #96
	str	r4, [r3]
	.loc 1 1224 0
	ldr	r3, [sp, #12]
	add	r3, r3, #28
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #28
	ldr	r2, [sp, #12]
	add	r2, r2, #100
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #100
	str	r4, [r3]
	.loc 1 1225 0
	ldr	r3, [sp, #12]
	add	r3, r3, #40
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #40
	ldr	r2, [sp, #12]
	add	r2, r2, #80
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #80
	str	r4, [r3]
	.loc 1 1226 0
	ldr	r3, [sp, #12]
	add	r3, r3, #44
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #44
	ldr	r2, [sp, #12]
	add	r2, r2, #84
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #84
	str	r4, [r3]
	.loc 1 1227 0
	ldr	r3, [sp, #12]
	add	r3, r3, #56
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #56
	ldr	r2, [sp, #12]
	add	r2, r2, #112
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #112
	str	r4, [r3]
	.loc 1 1228 0
	ldr	r3, [sp, #12]
	add	r3, r3, #60
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #60
	ldr	r2, [sp, #12]
	add	r2, r2, #116
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #116
	str	r4, [r3]
	.loc 1 1229 0
	ldr	r3, [sp, #12]
	add	r3, r3, #88
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #88
	ldr	r2, [sp, #12]
	add	r2, r2, #104
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #104
	str	r4, [r3]
	.loc 1 1230 0
	ldr	r3, [sp, #12]
	add	r3, r3, #92
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #92
	ldr	r2, [sp, #12]
	add	r2, r2, #108
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #108
	str	r4, [r3]
	.loc 1 1231 0
	b	.L94
.L83:
	.loc 1 1233 0
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r2, [sp, #12]
	add	r2, r2, #32
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #32
	str	r4, [r3]
	.loc 1 1234 0
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r2, [sp, #12]
	add	r2, r2, #36
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #36
	str	r4, [r3]
	.loc 1 1235 0
	ldr	r3, [sp, #12]
	add	r3, r3, #24
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #24
	ldr	r2, [sp, #12]
	add	r2, r2, #48
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #48
	str	r4, [r3]
	.loc 1 1236 0
	ldr	r3, [sp, #12]
	add	r3, r3, #28
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #28
	ldr	r2, [sp, #12]
	add	r2, r2, #52
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #52
	str	r4, [r3]
	.loc 1 1237 0
	b	.L94
.L82:
	.loc 1 1239 0
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #8
	ldr	r2, [sp, #12]
	add	r2, r2, #16
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #16
	str	r4, [r3]
	.loc 1 1240 0
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #12
	ldr	r2, [sp, #12]
	add	r2, r2, #20
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	str	r4, [r3]
	.loc 1 1241 0
	b	.L94
.L80:
	.loc 1 1245 0
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	mov	r0, r2
	mov	r1, r3
	bl	bitreverse_krukar
	b	.L94
.L95:
	.loc 1 1243 0
	mov	r8, r8
.L94:
	.loc 1 1247 0
	add	sp, sp, #16
	@ sp needed for prologue
	pop	{r4, pc}
.LFE23:
	.fnend
