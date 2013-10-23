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
	.save	{r4, r5, r6, r7, lr}
	push	{r4, r5, r6, r7, lr}
.LCFI9:
	mov	r7, r9
	mov	r6, r8
	.save	{r8, r9}
	push	{r6, r7}
.LCFI10:
.LVL57:
	.loc 1 177 0
	add	r3, r2, #1
	asr	r3, r3, #1
	mov	r6, #1
	.loc 1 176 0
	asr	r5, r0, #1
.LVL58:
	.loc 1 177 0
	lsl	r6, r6, r3
	sub	r0, r0, #1
.LVL59:
	sub	r6, r0, r6
.LVL60:
	.loc 1 168 0
	mov	r9, r1
	.loc 1 181 0
	cmp	r6, #0
	ble	.L72
.LVL61:
	mov	r4, r1
	add	r4, r4, #8
	.loc 1 168 0
	add	r6, r6, #1
.LVL62:
	.loc 1 181 0
	mov	r0, #1
.LVL63:
	.loc 1 179 0
	mov	r2, #0
.LVL64:
.L67:
	mov	r3, r5
	.loc 1 183 0
	cmp	r5, r2
	bgt	.L71
.LVL65:
.L73:
	.loc 1 184 0
	sub	r2, r2, r3
	.loc 1 183 0
	asr	r3, r3, #1
	cmp	r2, r3
	bge	.L73
.L71:
	.loc 1 186 0
	add	r2, r2, r3
	.loc 1 188 0
	cmp	r2, r0
	ble	.L69
	.loc 1 189 0
	ldr	r1, [r4, #4]
.LVL66:
	.loc 1 190 0
	lsl	r3, r2, #3
.LVL67:
	add	r3, r3, r9
	.loc 1 189 0
	mov	ip, r1
	.loc 1 190 0
	ldr	r1, [r3]
	.loc 1 189 0
	ldr	r7, [r4]
	.loc 1 190 0
	str	r1, [r4]
	ldr	r1, [r3, #4]
	str	r1, [r4, #4]
	.loc 1 191 0
	mov	r1, ip
	str	r1, [r3, #4]
	str	r7, [r3]
.LVL68:
.L69:
	.loc 1 181 0
	add	r0, r0, #1
	add	r4, r4, #8
	cmp	r0, r6
	bne	.L67
.LVL69:
.L72:
	.loc 1 194 0
	@ sp needed for prologue
.LVL70:
.LVL71:
.LVL72:
	pop	{r2, r3}
	mov	r8, r2
	mov	r9, r3
	pop	{r4, r5, r6, r7, pc}
.LFE19:
	.fnend
