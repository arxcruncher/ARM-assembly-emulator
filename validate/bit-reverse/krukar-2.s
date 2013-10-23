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
	.save	{r3, r4, r5, r6, r7, lr}
	push	{r3, r4, r5, r6, r7, lr}
.LCFI16:
.LVL1727:
	.loc 1 256 0
	mov	r3, #128
	lsl	r3, r3, #2
	cmp	r0, r3
	ble	.L169
	.loc 1 261 0
	asr	r6, r0, #1
.LVL1728:
	.loc 1 263 0
	mov	r4, #0
.LVL1729:
.L166:
	.loc 1 267 0
	mov	r2, r6
.LVL1730:
	mov	r3, #1
.LVL1731:
	.loc 1 265 0
	mov	r5, #0
.LVL1732:
	b	.L164
.LVL1733:
.L170:
	.loc 1 267 0
	asr	r2, r2, #1
.LVL1734:
.L164:
	.loc 1 268 0
	tst	r3, r4
	beq	.L162
	.loc 1 269 0
	orr	r5, r5, r2
.L162:
	.loc 1 267 0
	lsl	r3, r3, #1
	cmp	r0, r3
	bgt	.L170
	.loc 1 271 0
	cmp	r5, r4
	ble	.L165
	.loc 1 272 0
	lsl	r3, r4, #3
.LVL1735:
	.loc 1 273 0
	lsl	r5, r5, #3
.LVL1736:
	.loc 1 272 0
	add	r3, r1, r3
.LVL1737:
	.loc 1 273 0
	add	r5, r1, r5
.LVL1738:
	.loc 1 275 0
	ldr	r2, [r3]
.LVL1739:
	.loc 1 276 0
	ldr	r7, [r5]
	str	r7, [r3]
	.loc 1 277 0
	str	r2, [r5]
	.loc 1 282 0
	ldr	r2, [r3, #4]
.LVL1740:
	.loc 1 283 0
	ldr	r7, [r5, #4]
	str	r7, [r3, #4]
	.loc 1 284 0
	str	r2, [r5, #4]
.LVL1741:
.L165:
	.loc 1 263 0
	add	r4, r4, #1
	cmp	r4, r0
	bne	.L166
.L167:
	.loc 1 287 0
	@ sp needed for prologue
.LVL1742:
.LVL1743:
.LVL1744:
	pop	{r3, r4, r5, r6, r7, pc}
.LVL1745:
.L169:
	.loc 1 257 0
	bl	bitreverse_krukar_512
.LVL1746:
	.loc 1 258 0
	b	.L167
.LFE22:
	.fnend
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
.LCFI15:
.LVL95:
	.loc 1 295 0
	cmp	r0, #32
	bne	.LCB716
	bl	.L107	@far jump
.LCB716:
	cmp	r0, #32
	ble	.L116
	cmp	r0, #128
	bne	.LCB720
	bl	.L109	@far jump
.LCB720:
	cmp	r0, #128
	bgt	.L114
	cmp	r0, #64
	bne	.LCB724
	bl	.L117	@far jump
.LCB724:
.L102:
	.loc 1 1245 0
	bl	bitreverse_krukar
.LVL96:
.L115:
	.loc 1 1247 0
	@ sp needed for prologue
	pop	{r4, pc}
.LVL97:
.L116:
	.loc 1 295 0
	cmp	r0, #4
	bne	.LCB743
	bl	.L104	@far jump
.LCB743:
	cmp	r0, #4
	bgt	.LCB745
	bl	.L118	@far jump
.LCB745:
	cmp	r0, #8
	bne	.LCB747
	bl	.L105	@far jump
.LCB747:
	cmp	r0, #16
	bne	.L102
	.loc 1 1219 0
	ldr	r3, [r1, #8]
.LVL98:
	ldr	r2, [r1, #64]
	str	r3, [r1, #64]
	str	r2, [r1, #8]
	.loc 1 1220 0
	ldr	r3, [r1, #12]
.LVL99:
	ldr	r2, [r1, #68]
	str	r3, [r1, #68]
	str	r2, [r1, #12]
	.loc 1 1221 0
	ldr	r3, [r1, #16]
.LVL100:
	ldr	r2, [r1, #32]
	str	r3, [r1, #32]
	str	r2, [r1, #16]
	.loc 1 1222 0
	ldr	r3, [r1, #20]
.LVL101:
	ldr	r2, [r1, #36]
	str	r3, [r1, #36]
	str	r2, [r1, #20]
	.loc 1 1223 0
	ldr	r3, [r1, #24]
.LVL102:
	ldr	r2, [r1, #96]
	str	r3, [r1, #96]
	str	r2, [r1, #24]
	.loc 1 1224 0
	ldr	r3, [r1, #28]
.LVL103:
	ldr	r2, [r1, #100]
	str	r3, [r1, #100]
	str	r2, [r1, #28]
	.loc 1 1225 0
	ldr	r3, [r1, #40]
.LVL104:
	ldr	r2, [r1, #80]
	str	r3, [r1, #80]
	str	r2, [r1, #40]
	.loc 1 1226 0
	ldr	r3, [r1, #44]
.LVL105:
	ldr	r2, [r1, #84]
	str	r3, [r1, #84]
	str	r2, [r1, #44]
	.loc 1 1227 0
	ldr	r3, [r1, #56]
.LVL106:
	ldr	r2, [r1, #112]
	str	r2, [r1, #56]
	.loc 1 1228 0
	ldr	r2, [r1, #116]
	.loc 1 1227 0
	str	r3, [r1, #112]
	.loc 1 1228 0
	ldr	r3, [r1, #60]
.LVL107:
	str	r2, [r1, #60]
	.loc 1 1229 0
	ldr	r2, [r1, #104]
	.loc 1 1228 0
	str	r3, [r1, #116]
	.loc 1 1229 0
	ldr	r3, [r1, #88]
.LVL108:
	str	r2, [r1, #88]
	.loc 1 1230 0
	ldr	r2, [r1, #108]
	.loc 1 1229 0
	str	r3, [r1, #104]
	.loc 1 1230 0
	ldr	r3, [r1, #92]
.LVL109:
	str	r2, [r1, #92]
	str	r3, [r1, #108]
	.loc 1 1231 0
	b	.L115
.LVL110:
.L114:
	.loc 1 295 0
	mov	r3, #128
	lsl	r3, r3, #1
	cmp	r0, r3
	bne	.LCB818
	bl	.L110	@far jump
.LCB818:
	mov	r3, #128
	lsl	r3, r3, #2
	cmp	r0, r3
	bne	.L102
	.loc 1 297 0
	mov	r0, #128
.LVL111:
	lsl	r0, r0, #4
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #8]
.LVL112:
	.loc 1 298 0
	ldr	r4, .L119
	.loc 1 297 0
	str	r0, [r1, #8]
	str	r2, [r3]
	.loc 1 298 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #12]
.LVL113:
	.loc 1 300 0
	ldr	r4, .L119+4
	.loc 1 298 0
	str	r0, [r1, #12]
	.loc 1 299 0
	mov	r0, #128
	lsl	r0, r0, #3
	.loc 1 298 0
	str	r2, [r3]
	.loc 1 299 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #16]
.LVL114:
	str	r0, [r1, #16]
	str	r2, [r3]
	.loc 1 300 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #20]
.LVL115:
	.loc 1 302 0
	ldr	r4, .L119+8
	.loc 1 300 0
	str	r0, [r1, #20]
	.loc 1 301 0
	mov	r0, #192
	lsl	r0, r0, #4
	.loc 1 300 0
	str	r2, [r3]
	.loc 1 301 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #24]
.LVL116:
	str	r0, [r1, #24]
	str	r2, [r3]
	.loc 1 302 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #28]
.LVL117:
	.loc 1 304 0
	mov	r4, #129
	.loc 1 302 0
	str	r0, [r1, #28]
	.loc 1 303 0
	mov	r0, #128
	lsl	r0, r0, #2
	.loc 1 302 0
	str	r2, [r3]
	.loc 1 303 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #32]
.LVL118:
	.loc 1 304 0
	lsl	r4, r4, #2
	.loc 1 303 0
	str	r0, [r1, #32]
	str	r2, [r3]
	.loc 1 304 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #36]
.LVL119:
	.loc 1 306 0
	ldr	r4, .L119+12
	.loc 1 304 0
	str	r0, [r1, #36]
	.loc 1 305 0
	mov	r0, #160
	lsl	r0, r0, #4
	.loc 1 304 0
	str	r2, [r3]
	.loc 1 305 0
	add	r3, r1, r0
	ldr	r2, [r1, #40]
.LVL120:
	ldr	r0, [r3]
	str	r0, [r1, #40]
	str	r2, [r3]
	.loc 1 306 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #44]
.LVL121:
	.loc 1 308 0
	ldr	r4, .L119+16
	.loc 1 306 0
	str	r0, [r1, #44]
	.loc 1 307 0
	mov	r0, #192
	lsl	r0, r0, #3
	.loc 1 306 0
	str	r2, [r3]
	.loc 1 307 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #48]
.LVL122:
	str	r0, [r1, #48]
	str	r2, [r3]
	.loc 1 308 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #52]
.LVL123:
	.loc 1 310 0
	ldr	r4, .L119+20
	.loc 1 308 0
	str	r0, [r1, #52]
	.loc 1 309 0
	mov	r0, #224
	lsl	r0, r0, #4
	.loc 1 308 0
	str	r2, [r3]
	.loc 1 309 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #56]
.LVL124:
	str	r0, [r1, #56]
	str	r2, [r3]
	.loc 1 310 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #60]
.LVL125:
	.loc 1 314 0
	ldr	r4, .L119+24
	.loc 1 310 0
	str	r0, [r1, #60]
	str	r2, [r3]
	.loc 1 311 0
	add	r3, r1, #1
	add	r3, r3, #255
	ldr	r0, [r3]
	ldr	r2, [r1, #64]
.LVL126:
	str	r0, [r1, #64]
	str	r2, [r3]
	.loc 1 312 0
	add	r3, r1, #5
	add	r3, r3, #255
	ldr	r0, [r3]
	ldr	r2, [r1, #68]
.LVL127:
	str	r0, [r1, #68]
	.loc 1 313 0
	mov	r0, #144
	lsl	r0, r0, #4
	.loc 1 312 0
	str	r2, [r3]
	.loc 1 313 0
	add	r3, r1, r0
	ldr	r2, [r1, #72]
.LVL128:
	ldr	r0, [r3]
	str	r0, [r1, #72]
	str	r2, [r3]
	.loc 1 314 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #76]
.LVL129:
	.loc 1 316 0
	ldr	r4, .L119+28
	.loc 1 314 0
	str	r0, [r1, #76]
	.loc 1 315 0
	mov	r0, #160
	lsl	r0, r0, #3
	.loc 1 314 0
	str	r2, [r3]
	.loc 1 315 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #80]
.LVL130:
	str	r0, [r1, #80]
	str	r2, [r3]
	.loc 1 316 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #84]
.LVL131:
	.loc 1 318 0
	ldr	r4, .L119+32
	.loc 1 316 0
	str	r0, [r1, #84]
	.loc 1 317 0
	mov	r0, #208
	lsl	r0, r0, #4
	.loc 1 316 0
	str	r2, [r3]
	.loc 1 317 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #88]
.LVL132:
	str	r0, [r1, #88]
	str	r2, [r3]
	.loc 1 318 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #92]
.LVL133:
	.loc 1 320 0
	mov	r4, #193
	.loc 1 318 0
	str	r0, [r1, #92]
	.loc 1 319 0
	mov	r0, #192
	lsl	r0, r0, #2
	.loc 1 318 0
	str	r2, [r3]
	.loc 1 319 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #96]
.LVL134:
	.loc 1 320 0
	lsl	r4, r4, #2
	.loc 1 319 0
	str	r0, [r1, #96]
	str	r2, [r3]
	.loc 1 320 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #100]
.LVL135:
	.loc 1 322 0
	ldr	r4, .L119+36
	.loc 1 320 0
	str	r0, [r1, #100]
	.loc 1 321 0
	mov	r0, #176
	lsl	r0, r0, #4
	.loc 1 320 0
	str	r2, [r3]
	.loc 1 321 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #104]
.LVL136:
	str	r0, [r1, #104]
	str	r2, [r3]
	.loc 1 322 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #108]
.LVL137:
	.loc 1 324 0
	ldr	r4, .L119+40
	.loc 1 322 0
	str	r0, [r1, #108]
	.loc 1 323 0
	mov	r0, #224
	lsl	r0, r0, #3
	.loc 1 322 0
	str	r2, [r3]
	.loc 1 323 0
	add	r3, r1, r0
	ldr	r2, [r1, #112]
.LVL138:
	ldr	r0, [r3]
	str	r0, [r1, #112]
	str	r2, [r3]
	.loc 1 324 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #116]
.LVL139:
	.loc 1 326 0
	ldr	r4, .L119+44
	.loc 1 324 0
	str	r0, [r1, #116]
	.loc 1 325 0
	mov	r0, #240
	lsl	r0, r0, #4
	.loc 1 324 0
	str	r2, [r3]
	.loc 1 325 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #120]
.LVL140:
	str	r0, [r1, #120]
	str	r2, [r3]
	.loc 1 326 0
	add	r3, r1, r4
	ldr	r2, [r1, #124]
.LVL141:
	ldr	r0, [r3]
	.loc 1 327 0
	mov	r4, #136
	lsl	r4, r4, #4
	.loc 1 326 0
	str	r0, [r1, #124]
	str	r2, [r3]
	.loc 1 327 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r2, r1
.LVL142:
	add	r2, r2, #136
	ldr	r0, [r2]
.LVL143:
	str	r4, [r2]
	.loc 1 328 0
	ldr	r4, .L119+48
	.loc 1 327 0
	str	r0, [r3]
	.loc 1 328 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL144:
	str	r4, [r2]
	.loc 1 329 0
	mov	r4, #144
	lsl	r4, r4, #3
	.loc 1 328 0
	str	r0, [r3]
	.loc 1 329 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL145:
	str	r4, [r2]
	.loc 1 330 0
	ldr	r4, .L119+52
	.loc 1 329 0
	str	r0, [r3]
	.loc 1 330 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL146:
	str	r4, [r2]
	.loc 1 331 0
	mov	r4, #200
	lsl	r4, r4, #4
	.loc 1 330 0
	str	r0, [r3]
	.loc 1 331 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL147:
	str	r4, [r2]
	.loc 1 332 0
	ldr	r4, .L119+56
	.loc 1 331 0
	str	r0, [r3]
	.loc 1 332 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL148:
	str	r4, [r2]
	.loc 1 333 0
	mov	r4, #160
	lsl	r4, r4, #2
	.loc 1 332 0
	str	r0, [r3]
	.loc 1 333 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL149:
	str	r4, [r2]
	.loc 1 334 0
	mov	r4, #161
	lsl	r4, r4, #2
	.loc 1 333 0
	str	r0, [r3]
	.loc 1 334 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL150:
	str	r4, [r2]
	.loc 1 335 0
	mov	r4, #168
	lsl	r4, r4, #4
	.loc 1 334 0
	str	r0, [r3]
	.loc 1 335 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL151:
	str	r4, [r2]
	.loc 1 336 0
	ldr	r4, .L119+60
	.loc 1 335 0
	str	r0, [r3]
	.loc 1 336 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL152:
	str	r4, [r2]
	.loc 1 337 0
	mov	r4, #208
	lsl	r4, r4, #3
	.loc 1 336 0
	str	r0, [r3]
	.loc 1 337 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL153:
	str	r4, [r2]
	.loc 1 338 0
	ldr	r4, .L119+64
	.loc 1 337 0
	str	r0, [r3]
	.loc 1 338 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL154:
	str	r4, [r2]
	.loc 1 339 0
	mov	r4, #232
	lsl	r4, r4, #4
	.loc 1 338 0
	str	r0, [r3]
	.loc 1 339 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL155:
	str	r4, [r2]
	.loc 1 340 0
	ldr	r4, .L119+68
	.loc 1 339 0
	str	r0, [r3]
	.loc 1 340 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL156:
	str	r4, [r2]
	.loc 1 341 0
	mov	r4, #192
	lsl	r4, r4, #1
	.loc 1 340 0
	str	r0, [r3]
	.loc 1 341 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL157:
	str	r4, [r2]
	.loc 1 342 0
	mov	r4, #194
	lsl	r4, r4, #1
	.loc 1 341 0
	str	r0, [r3]
	.loc 1 342 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL158:
	str	r4, [r2]
	.loc 1 343 0
	mov	r4, #152
	lsl	r4, r4, #4
	.loc 1 342 0
	str	r0, [r3]
	.loc 1 343 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL159:
	str	r4, [r2]
	.loc 1 344 0
	ldr	r4, .L119+72
	.loc 1 343 0
	str	r0, [r3]
	.loc 1 344 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL160:
	str	r4, [r2]
	.loc 1 345 0
	mov	r4, #176
	lsl	r4, r4, #3
	.loc 1 344 0
	str	r0, [r3]
	.loc 1 345 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL161:
	str	r4, [r2]
	.loc 1 346 0
	ldr	r4, .L119+76
	.loc 1 345 0
	str	r0, [r3]
	.loc 1 346 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL162:
	str	r4, [r2]
	.loc 1 347 0
	mov	r4, #216
	lsl	r4, r4, #4
	.loc 1 346 0
	str	r0, [r3]
	.loc 1 347 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL163:
	str	r4, [r2]
	.loc 1 348 0
	ldr	r4, .L119+80
	.loc 1 347 0
	str	r0, [r3]
	.loc 1 348 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL164:
	str	r4, [r2]
	.loc 1 349 0
	mov	r4, #224
	lsl	r4, r4, #2
	.loc 1 348 0
	str	r0, [r3]
	.loc 1 349 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL165:
	str	r4, [r2]
	.loc 1 350 0
	mov	r4, #225
	lsl	r4, r4, #2
	.loc 1 349 0
	str	r0, [r3]
	.loc 1 350 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL166:
	str	r4, [r2]
	.loc 1 351 0
	mov	r4, #184
	lsl	r4, r4, #4
	.loc 1 350 0
	str	r0, [r3]
	.loc 1 351 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL167:
	str	r4, [r2]
	.loc 1 352 0
	ldr	r4, .L119+84
	.loc 1 351 0
	str	r0, [r3]
	.loc 1 352 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL168:
	str	r4, [r2]
	.loc 1 353 0
	mov	r4, #240
	lsl	r4, r4, #3
	.loc 1 352 0
	str	r0, [r3]
	.loc 1 353 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL169:
	str	r4, [r2]
	.loc 1 354 0
	ldr	r4, .L119+88
	.loc 1 353 0
	str	r0, [r3]
	.loc 1 354 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL170:
	str	r4, [r2]
	.loc 1 355 0
	mov	r4, #248
	lsl	r4, r4, #4
	.loc 1 354 0
	str	r0, [r3]
	.loc 1 355 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL171:
	str	r4, [r2]
	.loc 1 356 0
	ldr	r4, .L119+92
	.loc 1 355 0
	str	r0, [r3]
	.loc 1 356 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL172:
	str	r4, [r2]
	.loc 1 357 0
	mov	r4, #132
	lsl	r4, r4, #4
	.loc 1 356 0
	str	r0, [r3]
	.loc 1 357 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #132
.LVL173:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL174:
	str	r4, [r2]
	.loc 1 358 0
	ldr	r4, .L119+96
	.loc 1 357 0
	str	r0, [r3]
	.loc 1 358 0
	mov	r0, #134
.LVL175:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL176:
	str	r4, [r2]
	.loc 1 359 0
	mov	r4, #136
	lsl	r4, r4, #3
	.loc 1 358 0
	str	r0, [r3]
	.loc 1 359 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #136
.LVL177:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL178:
	str	r4, [r2]
	.loc 1 360 0
	ldr	r4, .L119+100
	.loc 1 359 0
	str	r0, [r3]
	.loc 1 360 0
	mov	r0, #138
.LVL179:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL180:
	str	r4, [r2]
	.loc 1 361 0
	mov	r4, #196
	lsl	r4, r4, #4
	.loc 1 360 0
	str	r0, [r3]
	.loc 1 361 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #140
.LVL181:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL182:
	str	r4, [r2]
	.loc 1 362 0
	ldr	r4, .L119+104
	.loc 1 361 0
	str	r0, [r3]
	.loc 1 362 0
	mov	r0, #142
.LVL183:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL184:
	str	r4, [r2]
	.loc 1 363 0
	mov	r4, #144
	lsl	r4, r4, #2
	.loc 1 362 0
	str	r0, [r3]
	.loc 1 363 0
	add	r3, r1, r4
	mov	r0, #144
.LVL185:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL186:
	str	r4, [r2]
	.loc 1 364 0
	mov	r4, #145
	lsl	r4, r4, #2
	.loc 1 363 0
	str	r0, [r3]
	.loc 1 364 0
	add	r3, r1, r4
	mov	r0, #146
.LVL187:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL188:
	str	r4, [r2]
	.loc 1 365 0
	mov	r4, #164
	lsl	r4, r4, #4
	.loc 1 364 0
	str	r0, [r3]
	.loc 1 365 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #148
.LVL189:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL190:
	str	r4, [r2]
	.loc 1 366 0
	ldr	r4, .L119+108
	.loc 1 365 0
	str	r0, [r3]
	.loc 1 366 0
	mov	r0, #150
	b	.L120
.L121:
	.align	2
.L119:
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
	.word	2628
.L120:
.LVL191:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL192:
	str	r4, [r2]
	.loc 1 367 0
	mov	r4, #200
	lsl	r4, r4, #3
	.loc 1 366 0
	str	r0, [r3]
	.loc 1 367 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #152
.LVL193:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL194:
	str	r4, [r2]
	.loc 1 368 0
	ldr	r4, .L122
	.loc 1 367 0
	str	r0, [r3]
	.loc 1 368 0
	mov	r0, #154
.LVL195:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL196:
	str	r4, [r2]
	.loc 1 369 0
	mov	r4, #228
	lsl	r4, r4, #4
	.loc 1 368 0
	str	r0, [r3]
	.loc 1 369 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #156
.LVL197:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL198:
	str	r4, [r2]
	.loc 1 370 0
	ldr	r4, .L122+4
	.loc 1 369 0
	str	r0, [r3]
	.loc 1 370 0
	mov	r0, #158
.LVL199:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL200:
	str	r4, [r2]
	.loc 1 371 0
	mov	r4, #148
	lsl	r4, r4, #4
	.loc 1 370 0
	str	r0, [r3]
	.loc 1 371 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #164
.LVL201:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL202:
	str	r4, [r2]
	.loc 1 372 0
	ldr	r4, .L122+8
	.loc 1 371 0
	str	r0, [r3]
	.loc 1 372 0
	mov	r0, #166
.LVL203:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL204:
	str	r4, [r2]
	.loc 1 373 0
	mov	r4, #168
	lsl	r4, r4, #3
	.loc 1 372 0
	str	r0, [r3]
	.loc 1 373 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #168
.LVL205:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL206:
	str	r4, [r2]
	.loc 1 374 0
	ldr	r4, .L122+12
	.loc 1 373 0
	str	r0, [r3]
	.loc 1 374 0
	mov	r0, #170
.LVL207:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL208:
	str	r4, [r2]
	.loc 1 375 0
	mov	r4, #212
	lsl	r4, r4, #4
	.loc 1 374 0
	str	r0, [r3]
	.loc 1 375 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #172
.LVL209:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL210:
	str	r4, [r2]
	.loc 1 376 0
	ldr	r4, .L122+16
	.loc 1 375 0
	str	r0, [r3]
	.loc 1 376 0
	mov	r0, #174
.LVL211:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL212:
	str	r4, [r2]
	.loc 1 377 0
	mov	r4, #208
	lsl	r4, r4, #2
	.loc 1 376 0
	str	r0, [r3]
	.loc 1 377 0
	add	r3, r1, r4
	mov	r0, #176
.LVL213:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL214:
	str	r4, [r2]
	.loc 1 378 0
	mov	r4, #209
	lsl	r4, r4, #2
	.loc 1 377 0
	str	r0, [r3]
	.loc 1 378 0
	add	r3, r1, r4
	mov	r0, #178
.LVL215:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL216:
	str	r4, [r2]
	.loc 1 379 0
	mov	r4, #180
	lsl	r4, r4, #4
	.loc 1 378 0
	str	r0, [r3]
	.loc 1 379 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #180
.LVL217:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL218:
	str	r4, [r2]
	.loc 1 380 0
	ldr	r4, .L122+20
	.loc 1 379 0
	str	r0, [r3]
	.loc 1 380 0
	mov	r0, #182
.LVL219:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL220:
	str	r4, [r2]
	.loc 1 381 0
	mov	r4, #232
	lsl	r4, r4, #3
	.loc 1 380 0
	str	r0, [r3]
	.loc 1 381 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #184
.LVL221:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL222:
	str	r4, [r2]
	.loc 1 382 0
	ldr	r4, .L122+24
	.loc 1 381 0
	str	r0, [r3]
	.loc 1 382 0
	mov	r0, #186
.LVL223:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL224:
	str	r4, [r2]
	.loc 1 383 0
	mov	r4, #244
	lsl	r4, r4, #4
	.loc 1 382 0
	str	r0, [r3]
	.loc 1 383 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #188
.LVL225:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL226:
	str	r4, [r2]
	.loc 1 384 0
	ldr	r4, .L122+28
	.loc 1 383 0
	str	r0, [r3]
	.loc 1 384 0
	mov	r0, #190
.LVL227:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL228:
	str	r4, [r2]
	.loc 1 385 0
	mov	r4, #140
	lsl	r4, r4, #4
	.loc 1 384 0
	str	r0, [r3]
	.loc 1 385 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #196
.LVL229:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL230:
	str	r4, [r2]
	.loc 1 386 0
	ldr	r4, .L122+32
	.loc 1 385 0
	str	r0, [r3]
	.loc 1 386 0
	mov	r0, #198
.LVL231:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL232:
	str	r4, [r2]
	.loc 1 387 0
	mov	r4, #152
	lsl	r4, r4, #3
	.loc 1 386 0
	str	r0, [r3]
	.loc 1 387 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #200
.LVL233:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL234:
	str	r4, [r2]
	.loc 1 388 0
	ldr	r4, .L122+36
	.loc 1 387 0
	str	r0, [r3]
	.loc 1 388 0
	mov	r0, #202
.LVL235:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL236:
	str	r4, [r2]
	.loc 1 389 0
	mov	r4, #204
	lsl	r4, r4, #4
	.loc 1 388 0
	str	r0, [r3]
	.loc 1 389 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #204
.LVL237:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL238:
	str	r4, [r2]
	.loc 1 390 0
	ldr	r4, .L122+40
	.loc 1 389 0
	str	r0, [r3]
	.loc 1 390 0
	mov	r0, #206
.LVL239:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL240:
	str	r4, [r2]
	.loc 1 391 0
	mov	r4, #176
	lsl	r4, r4, #2
	.loc 1 390 0
	str	r0, [r3]
	.loc 1 391 0
	add	r3, r1, r4
	mov	r0, #208
.LVL241:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL242:
	str	r4, [r2]
	.loc 1 392 0
	mov	r4, #177
	lsl	r4, r4, #2
	.loc 1 391 0
	str	r0, [r3]
	.loc 1 392 0
	add	r3, r1, r4
	mov	r0, #210
.LVL243:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL244:
	str	r4, [r2]
	.loc 1 393 0
	mov	r4, #172
	lsl	r4, r4, #4
	.loc 1 392 0
	str	r0, [r3]
	.loc 1 393 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #212
.LVL245:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL246:
	str	r4, [r2]
	.loc 1 394 0
	ldr	r4, .L122+44
	.loc 1 393 0
	str	r0, [r3]
	.loc 1 394 0
	mov	r0, #214
.LVL247:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL248:
	str	r4, [r2]
	.loc 1 395 0
	mov	r4, #216
	lsl	r4, r4, #3
	.loc 1 394 0
	str	r0, [r3]
	.loc 1 395 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #216
.LVL249:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL250:
	str	r4, [r2]
	.loc 1 396 0
	ldr	r4, .L122+48
	.loc 1 395 0
	str	r0, [r3]
	.loc 1 396 0
	mov	r0, #218
.LVL251:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL252:
	str	r4, [r2]
	.loc 1 397 0
	mov	r4, #236
	lsl	r4, r4, #4
	.loc 1 396 0
	str	r0, [r3]
	.loc 1 397 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #220
.LVL253:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL254:
	str	r4, [r2]
	.loc 1 398 0
	ldr	r4, .L122+52
	.loc 1 397 0
	str	r0, [r3]
	.loc 1 398 0
	mov	r0, #222
.LVL255:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL256:
	str	r4, [r2]
	.loc 1 399 0
	mov	r4, #156
	lsl	r4, r4, #4
	.loc 1 398 0
	str	r0, [r3]
	.loc 1 399 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #228
.LVL257:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL258:
	str	r4, [r2]
	.loc 1 400 0
	ldr	r4, .L122+56
	.loc 1 399 0
	str	r0, [r3]
	.loc 1 400 0
	mov	r0, #230
.LVL259:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL260:
	str	r4, [r2]
	.loc 1 401 0
	mov	r4, #184
	lsl	r4, r4, #3
	.loc 1 400 0
	str	r0, [r3]
	.loc 1 401 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #232
.LVL261:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL262:
	str	r4, [r2]
	.loc 1 402 0
	ldr	r4, .L122+60
	.loc 1 401 0
	str	r0, [r3]
	.loc 1 402 0
	mov	r0, #234
.LVL263:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL264:
	str	r4, [r2]
	.loc 1 403 0
	mov	r4, #220
	lsl	r4, r4, #4
	.loc 1 402 0
	str	r0, [r3]
	.loc 1 403 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #236
.LVL265:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL266:
	str	r4, [r2]
	.loc 1 404 0
	ldr	r4, .L122+64
	.loc 1 403 0
	str	r0, [r3]
	.loc 1 404 0
	mov	r0, #238
.LVL267:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL268:
	str	r4, [r2]
	.loc 1 405 0
	mov	r4, #240
	lsl	r4, r4, #2
	.loc 1 404 0
	str	r0, [r3]
	.loc 1 405 0
	add	r3, r1, r4
	mov	r0, #240
.LVL269:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL270:
	str	r4, [r2]
	.loc 1 406 0
	mov	r4, #241
	lsl	r4, r4, #2
	.loc 1 405 0
	str	r0, [r3]
	.loc 1 406 0
	add	r3, r1, r4
	mov	r0, #242
.LVL271:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL272:
	str	r4, [r2]
	.loc 1 407 0
	mov	r4, #188
	lsl	r4, r4, #4
	.loc 1 406 0
	str	r0, [r3]
	.loc 1 407 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #244
.LVL273:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL274:
	str	r4, [r2]
	.loc 1 408 0
	ldr	r4, .L122+68
	.loc 1 407 0
	str	r0, [r3]
	.loc 1 408 0
	mov	r0, #246
.LVL275:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL276:
	str	r4, [r2]
	.loc 1 409 0
	mov	r4, #248
	lsl	r4, r4, #3
	.loc 1 408 0
	str	r0, [r3]
	.loc 1 409 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #248
.LVL277:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL278:
	str	r4, [r2]
	.loc 1 410 0
	ldr	r4, .L122+72
	.loc 1 409 0
	str	r0, [r3]
	.loc 1 410 0
	mov	r0, #250
.LVL279:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL280:
	str	r4, [r2]
	.loc 1 411 0
	mov	r4, #252
	lsl	r4, r4, #4
	.loc 1 410 0
	str	r0, [r3]
	.loc 1 411 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #252
.LVL281:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL282:
	str	r4, [r2]
	.loc 1 412 0
	ldr	r4, .L122+76
	.loc 1 411 0
	str	r0, [r3]
	.loc 1 412 0
	mov	r0, #254
.LVL283:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL284:
	str	r4, [r2]
	.loc 1 413 0
	mov	r4, #130
	lsl	r4, r4, #4
	.loc 1 412 0
	str	r0, [r3]
	.loc 1 413 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #130
.LVL285:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL286:
	str	r4, [r2]
	.loc 1 414 0
	ldr	r4, .L122+80
	.loc 1 413 0
	str	r0, [r3]
	.loc 1 414 0
	mov	r0, #131
.LVL287:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL288:
	str	r4, [r2]
	.loc 1 415 0
	mov	r4, #132
	lsl	r4, r4, #3
	.loc 1 414 0
	str	r0, [r3]
	.loc 1 415 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #132
.LVL289:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL290:
	str	r4, [r2]
	.loc 1 416 0
	ldr	r4, .L122+84
	.loc 1 415 0
	str	r0, [r3]
	.loc 1 416 0
	mov	r0, #133
.LVL291:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL292:
	str	r4, [r2]
	.loc 1 417 0
	mov	r4, #194
	lsl	r4, r4, #4
	.loc 1 416 0
	str	r0, [r3]
	.loc 1 417 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #134
.LVL293:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL294:
	str	r4, [r2]
	.loc 1 418 0
	ldr	r4, .L122+88
	.loc 1 417 0
	str	r0, [r3]
	.loc 1 418 0
	mov	r0, #135
.LVL295:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL296:
	str	r4, [r2]
	.loc 1 419 0
	mov	r4, #162
	lsl	r4, r4, #4
	.loc 1 418 0
	str	r0, [r3]
	.loc 1 419 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #138
.LVL297:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL298:
	str	r4, [r2]
	.loc 1 420 0
	ldr	r4, .L122+92
	.loc 1 419 0
	str	r0, [r3]
	.loc 1 420 0
	mov	r0, #139
.LVL299:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL300:
	str	r4, [r2]
	.loc 1 421 0
	mov	r4, #196
	lsl	r4, r4, #3
	.loc 1 420 0
	str	r0, [r3]
	b	.L123
.L124:
	.align	2
.L122:
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
.L123:
	.loc 1 421 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #140
.LVL301:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL302:
	str	r4, [r2]
	.loc 1 422 0
	ldr	r4, .L125
	.loc 1 421 0
	str	r0, [r3]
	.loc 1 422 0
	mov	r0, #141
.LVL303:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL304:
	str	r4, [r2]
	.loc 1 423 0
	mov	r4, #226
	lsl	r4, r4, #4
	.loc 1 422 0
	str	r0, [r3]
	.loc 1 423 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #142
.LVL305:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL306:
	str	r4, [r2]
	.loc 1 424 0
	ldr	r4, .L125+4
	.loc 1 423 0
	str	r0, [r3]
	.loc 1 424 0
	mov	r0, #143
.LVL307:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL308:
	str	r4, [r2]
	.loc 1 425 0
	mov	r4, #146
	lsl	r4, r4, #4
	.loc 1 424 0
	str	r0, [r3]
	.loc 1 425 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #146
.LVL309:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL310:
	str	r4, [r2]
	.loc 1 426 0
	ldr	r4, .L125+8
	.loc 1 425 0
	str	r0, [r3]
	.loc 1 426 0
	mov	r0, #147
.LVL311:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL312:
	str	r4, [r2]
	.loc 1 427 0
	mov	r4, #164
	lsl	r4, r4, #3
	.loc 1 426 0
	str	r0, [r3]
	.loc 1 427 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #148
.LVL313:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL314:
	str	r4, [r2]
	.loc 1 428 0
	ldr	r4, .L125+12
	.loc 1 427 0
	str	r0, [r3]
	.loc 1 428 0
	mov	r0, #149
.LVL315:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL316:
	str	r4, [r2]
	.loc 1 429 0
	mov	r4, #210
	lsl	r4, r4, #4
	.loc 1 428 0
	str	r0, [r3]
	.loc 1 429 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #150
.LVL317:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL318:
	str	r4, [r2]
	.loc 1 430 0
	ldr	r4, .L125+16
	.loc 1 429 0
	str	r0, [r3]
	.loc 1 430 0
	mov	r0, #151
.LVL319:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL320:
	str	r4, [r2]
	.loc 1 431 0
	mov	r4, #200
	lsl	r4, r4, #2
	.loc 1 430 0
	str	r0, [r3]
	.loc 1 431 0
	add	r3, r1, r4
	mov	r0, #152
.LVL321:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL322:
	str	r4, [r2]
	.loc 1 432 0
	mov	r4, #201
	lsl	r4, r4, #2
	.loc 1 431 0
	str	r0, [r3]
	.loc 1 432 0
	add	r3, r1, r4
	mov	r0, #153
.LVL323:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL324:
	str	r4, [r2]
	.loc 1 433 0
	mov	r4, #178
	lsl	r4, r4, #4
	.loc 1 432 0
	str	r0, [r3]
	.loc 1 433 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #154
.LVL325:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL326:
	str	r4, [r2]
	.loc 1 434 0
	ldr	r4, .L125+20
	.loc 1 433 0
	str	r0, [r3]
	.loc 1 434 0
	mov	r0, #155
.LVL327:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL328:
	str	r4, [r2]
	.loc 1 435 0
	mov	r4, #228
	lsl	r4, r4, #3
	.loc 1 434 0
	str	r0, [r3]
	.loc 1 435 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #156
.LVL329:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL330:
	str	r4, [r2]
	.loc 1 436 0
	ldr	r4, .L125+24
	.loc 1 435 0
	str	r0, [r3]
	.loc 1 436 0
	mov	r0, #157
.LVL331:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL332:
	str	r4, [r2]
	.loc 1 437 0
	mov	r4, #242
	lsl	r4, r4, #4
	.loc 1 436 0
	str	r0, [r3]
	.loc 1 437 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #158
.LVL333:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL334:
	str	r4, [r2]
	.loc 1 438 0
	ldr	r4, .L125+28
	.loc 1 437 0
	str	r0, [r3]
	.loc 1 438 0
	mov	r0, #159
.LVL335:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL336:
	str	r4, [r2]
	.loc 1 439 0
	mov	r4, #138
	lsl	r4, r4, #4
	.loc 1 438 0
	str	r0, [r3]
	.loc 1 439 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #162
.LVL337:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL338:
	str	r4, [r2]
	.loc 1 440 0
	ldr	r4, .L125+32
	.loc 1 439 0
	str	r0, [r3]
	.loc 1 440 0
	mov	r0, #163
.LVL339:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL340:
	str	r4, [r2]
	.loc 1 441 0
	mov	r4, #148
	lsl	r4, r4, #3
	.loc 1 440 0
	str	r0, [r3]
	.loc 1 441 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #164
.LVL341:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL342:
	str	r4, [r2]
	.loc 1 442 0
	ldr	r4, .L125+36
	.loc 1 441 0
	str	r0, [r3]
	.loc 1 442 0
	mov	r0, #165
.LVL343:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL344:
	str	r4, [r2]
	.loc 1 443 0
	mov	r4, #202
	lsl	r4, r4, #4
	.loc 1 442 0
	str	r0, [r3]
	.loc 1 443 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #166
.LVL345:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL346:
	str	r4, [r2]
	.loc 1 444 0
	ldr	r4, .L125+40
	.loc 1 443 0
	str	r0, [r3]
	.loc 1 444 0
	mov	r0, #167
.LVL347:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL348:
	str	r4, [r2]
	.loc 1 445 0
	mov	r4, #170
	lsl	r4, r4, #4
	.loc 1 444 0
	str	r0, [r3]
	.loc 1 445 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #170
.LVL349:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL350:
	str	r4, [r2]
	.loc 1 446 0
	ldr	r4, .L125+44
	.loc 1 445 0
	str	r0, [r3]
	.loc 1 446 0
	mov	r0, #171
.LVL351:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL352:
	str	r4, [r2]
	.loc 1 447 0
	mov	r4, #212
	lsl	r4, r4, #3
	.loc 1 446 0
	str	r0, [r3]
	.loc 1 447 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #172
.LVL353:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL354:
	str	r4, [r2]
	.loc 1 448 0
	ldr	r4, .L125+48
	.loc 1 447 0
	str	r0, [r3]
	.loc 1 448 0
	mov	r0, #173
.LVL355:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL356:
	str	r4, [r2]
	.loc 1 449 0
	mov	r4, #234
	lsl	r4, r4, #4
	.loc 1 448 0
	str	r0, [r3]
	.loc 1 449 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #174
.LVL357:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL358:
	str	r4, [r2]
	.loc 1 450 0
	ldr	r4, .L125+52
	.loc 1 449 0
	str	r0, [r3]
	.loc 1 450 0
	mov	r0, #175
.LVL359:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL360:
	str	r4, [r2]
	.loc 1 451 0
	mov	r4, #154
	lsl	r4, r4, #4
	.loc 1 450 0
	str	r0, [r3]
	.loc 1 451 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #178
.LVL361:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL362:
	str	r4, [r2]
	.loc 1 452 0
	ldr	r4, .L125+56
	.loc 1 451 0
	str	r0, [r3]
	.loc 1 452 0
	mov	r0, #179
.LVL363:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL364:
	str	r4, [r2]
	.loc 1 453 0
	mov	r4, #180
	lsl	r4, r4, #3
	.loc 1 452 0
	str	r0, [r3]
	.loc 1 453 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #180
.LVL365:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL366:
	str	r4, [r2]
	.loc 1 454 0
	ldr	r4, .L125+60
	.loc 1 453 0
	str	r0, [r3]
	.loc 1 454 0
	mov	r0, #181
.LVL367:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL368:
	str	r4, [r2]
	.loc 1 455 0
	mov	r4, #218
	lsl	r4, r4, #4
	.loc 1 454 0
	str	r0, [r3]
	.loc 1 455 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #182
.LVL369:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL370:
	str	r4, [r2]
	.loc 1 456 0
	ldr	r4, .L125+64
	.loc 1 455 0
	str	r0, [r3]
	.loc 1 456 0
	mov	r0, #183
.LVL371:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL372:
	str	r4, [r2]
	.loc 1 457 0
	mov	r4, #232
	lsl	r4, r4, #2
	.loc 1 456 0
	str	r0, [r3]
	.loc 1 457 0
	add	r3, r1, r4
	mov	r0, #184
.LVL373:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL374:
	str	r4, [r2]
	.loc 1 458 0
	mov	r4, #233
	lsl	r4, r4, #2
	.loc 1 457 0
	str	r0, [r3]
	.loc 1 458 0
	add	r3, r1, r4
	mov	r0, #185
.LVL375:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL376:
	str	r4, [r2]
	.loc 1 459 0
	mov	r4, #186
	lsl	r4, r4, #4
	.loc 1 458 0
	str	r0, [r3]
	.loc 1 459 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #186
.LVL377:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL378:
	str	r4, [r2]
	.loc 1 460 0
	ldr	r4, .L125+68
	.loc 1 459 0
	str	r0, [r3]
	.loc 1 460 0
	mov	r0, #187
.LVL379:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL380:
	str	r4, [r2]
	.loc 1 461 0
	mov	r4, #244
	lsl	r4, r4, #3
	.loc 1 460 0
	str	r0, [r3]
	.loc 1 461 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #188
.LVL381:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL382:
	str	r4, [r2]
	.loc 1 462 0
	ldr	r4, .L125+72
	.loc 1 461 0
	str	r0, [r3]
	.loc 1 462 0
	mov	r0, #189
.LVL383:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL384:
	str	r4, [r2]
	.loc 1 463 0
	mov	r4, #250
	lsl	r4, r4, #4
	.loc 1 462 0
	str	r0, [r3]
	.loc 1 463 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #190
.LVL385:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL386:
	str	r4, [r2]
	.loc 1 464 0
	ldr	r4, .L125+76
	.loc 1 463 0
	str	r0, [r3]
	.loc 1 464 0
	mov	r0, #191
.LVL387:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL388:
	str	r4, [r2]
	.loc 1 465 0
	mov	r4, #134
	lsl	r4, r4, #4
	.loc 1 464 0
	str	r0, [r3]
	.loc 1 465 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #194
.LVL389:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL390:
	str	r4, [r2]
	.loc 1 466 0
	ldr	r4, .L125+80
	.loc 1 465 0
	str	r0, [r3]
	.loc 1 466 0
	mov	r0, #195
.LVL391:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL392:
	str	r4, [r2]
	.loc 1 467 0
	mov	r4, #140
	lsl	r4, r4, #3
	.loc 1 466 0
	str	r0, [r3]
	.loc 1 467 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #196
.LVL393:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL394:
	str	r4, [r2]
	.loc 1 468 0
	ldr	r4, .L125+84
	.loc 1 467 0
	str	r0, [r3]
	.loc 1 468 0
	mov	r0, #197
.LVL395:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL396:
	str	r4, [r2]
	.loc 1 469 0
	mov	r4, #198
	lsl	r4, r4, #4
	.loc 1 468 0
	str	r0, [r3]
	.loc 1 469 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #198
.LVL397:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL398:
	str	r4, [r2]
	.loc 1 470 0
	ldr	r4, .L125+88
	.loc 1 469 0
	str	r0, [r3]
	.loc 1 470 0
	mov	r0, #199
.LVL399:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL400:
	str	r4, [r2]
	.loc 1 471 0
	mov	r4, #166
	lsl	r4, r4, #4
	.loc 1 470 0
	str	r0, [r3]
	.loc 1 471 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #202
.LVL401:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL402:
	str	r4, [r2]
	.loc 1 472 0
	ldr	r4, .L125+92
	.loc 1 471 0
	str	r0, [r3]
	.loc 1 472 0
	mov	r0, #203
.LVL403:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL404:
	str	r4, [r2]
	.loc 1 473 0
	mov	r4, #204
	lsl	r4, r4, #3
	.loc 1 472 0
	str	r0, [r3]
	.loc 1 473 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #204
.LVL405:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL406:
	str	r4, [r2]
	.loc 1 474 0
	ldr	r4, .L125+96
	.loc 1 473 0
	str	r0, [r3]
	.loc 1 474 0
	mov	r0, #205
.LVL407:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL408:
	str	r4, [r2]
	.loc 1 475 0
	mov	r4, #230
	lsl	r4, r4, #4
	.loc 1 474 0
	str	r0, [r3]
	.loc 1 475 0
	add	r3, r1, r4
	b	.L126
.L127:
	.align	2
.L125:
	.word	1572
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
.L126:
	ldr	r4, [r3]
	mov	r0, #206
.LVL409:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL410:
	str	r4, [r2]
	.loc 1 476 0
	ldr	r4, .L128
	.loc 1 475 0
	str	r0, [r3]
	.loc 1 476 0
	mov	r0, #207
.LVL411:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL412:
	str	r4, [r2]
	.loc 1 477 0
	mov	r4, #150
	lsl	r4, r4, #4
	.loc 1 476 0
	str	r0, [r3]
	.loc 1 477 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #210
.LVL413:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL414:
	str	r4, [r2]
	.loc 1 478 0
	ldr	r4, .L128+4
	.loc 1 477 0
	str	r0, [r3]
	.loc 1 478 0
	mov	r0, #211
.LVL415:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL416:
	str	r4, [r2]
	.loc 1 479 0
	mov	r4, #172
	lsl	r4, r4, #3
	.loc 1 478 0
	str	r0, [r3]
	.loc 1 479 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #212
.LVL417:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL418:
	str	r4, [r2]
	.loc 1 480 0
	ldr	r4, .L128+8
	.loc 1 479 0
	str	r0, [r3]
	.loc 1 480 0
	mov	r0, #213
.LVL419:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL420:
	str	r4, [r2]
	.loc 1 481 0
	mov	r4, #214
	lsl	r4, r4, #4
	.loc 1 480 0
	str	r0, [r3]
	.loc 1 481 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #214
.LVL421:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL422:
	str	r4, [r2]
	.loc 1 482 0
	ldr	r4, .L128+12
	.loc 1 481 0
	str	r0, [r3]
	.loc 1 482 0
	mov	r0, #215
.LVL423:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL424:
	str	r4, [r2]
	.loc 1 483 0
	mov	r4, #182
	lsl	r4, r4, #4
	.loc 1 482 0
	str	r0, [r3]
	.loc 1 483 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #218
.LVL425:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL426:
	str	r4, [r2]
	.loc 1 484 0
	ldr	r4, .L128+16
	.loc 1 483 0
	str	r0, [r3]
	.loc 1 484 0
	mov	r0, #219
.LVL427:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL428:
	str	r4, [r2]
	.loc 1 485 0
	mov	r4, #236
	lsl	r4, r4, #3
	.loc 1 484 0
	str	r0, [r3]
	.loc 1 485 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #220
.LVL429:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL430:
	str	r4, [r2]
	.loc 1 486 0
	ldr	r4, .L128+20
	.loc 1 485 0
	str	r0, [r3]
	.loc 1 486 0
	mov	r0, #221
.LVL431:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL432:
	str	r4, [r2]
	.loc 1 487 0
	mov	r4, #246
	lsl	r4, r4, #4
	.loc 1 486 0
	str	r0, [r3]
	.loc 1 487 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #222
.LVL433:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL434:
	str	r4, [r2]
	.loc 1 488 0
	ldr	r4, .L128+24
	.loc 1 487 0
	str	r0, [r3]
	.loc 1 488 0
	mov	r0, #223
.LVL435:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL436:
	str	r4, [r2]
	.loc 1 489 0
	mov	r4, #142
	lsl	r4, r4, #4
	.loc 1 488 0
	str	r0, [r3]
	.loc 1 489 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #226
.LVL437:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL438:
	str	r4, [r2]
	.loc 1 490 0
	ldr	r4, .L128+28
	.loc 1 489 0
	str	r0, [r3]
	.loc 1 490 0
	mov	r0, #227
.LVL439:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL440:
	str	r4, [r2]
	.loc 1 491 0
	mov	r4, #156
	lsl	r4, r4, #3
	.loc 1 490 0
	str	r0, [r3]
	.loc 1 491 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #228
.LVL441:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL442:
	str	r4, [r2]
	.loc 1 492 0
	ldr	r4, .L128+32
	.loc 1 491 0
	str	r0, [r3]
	.loc 1 492 0
	mov	r0, #229
.LVL443:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL444:
	str	r4, [r2]
	.loc 1 493 0
	mov	r4, #206
	lsl	r4, r4, #4
	.loc 1 492 0
	str	r0, [r3]
	.loc 1 493 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #230
.LVL445:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL446:
	str	r4, [r2]
	.loc 1 494 0
	ldr	r4, .L128+36
	.loc 1 493 0
	str	r0, [r3]
	.loc 1 494 0
	mov	r0, #231
.LVL447:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL448:
	str	r4, [r2]
	.loc 1 495 0
	mov	r4, #174
	lsl	r4, r4, #4
	.loc 1 494 0
	str	r0, [r3]
	.loc 1 495 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #234
.LVL449:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL450:
	str	r4, [r2]
	.loc 1 496 0
	ldr	r4, .L128+40
	.loc 1 495 0
	str	r0, [r3]
	.loc 1 496 0
	mov	r0, #235
.LVL451:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL452:
	str	r4, [r2]
	.loc 1 497 0
	mov	r4, #220
	lsl	r4, r4, #3
	.loc 1 496 0
	str	r0, [r3]
	.loc 1 497 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #236
.LVL453:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL454:
	str	r4, [r2]
	.loc 1 498 0
	ldr	r4, .L128+44
	.loc 1 497 0
	str	r0, [r3]
	.loc 1 498 0
	mov	r0, #237
.LVL455:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL456:
	str	r4, [r2]
	.loc 1 499 0
	mov	r4, #238
	lsl	r4, r4, #4
	.loc 1 498 0
	str	r0, [r3]
	.loc 1 499 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #238
.LVL457:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL458:
	str	r4, [r2]
	.loc 1 500 0
	ldr	r4, .L128+48
	.loc 1 499 0
	str	r0, [r3]
	.loc 1 500 0
	mov	r0, #239
.LVL459:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL460:
	str	r4, [r2]
	.loc 1 501 0
	mov	r4, #158
	lsl	r4, r4, #4
	.loc 1 500 0
	str	r0, [r3]
	.loc 1 501 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #242
.LVL461:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL462:
	str	r4, [r2]
	.loc 1 502 0
	ldr	r4, .L128+52
	.loc 1 501 0
	str	r0, [r3]
	.loc 1 502 0
	mov	r0, #243
.LVL463:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL464:
	str	r4, [r2]
	.loc 1 503 0
	mov	r4, #188
	lsl	r4, r4, #3
	.loc 1 502 0
	str	r0, [r3]
	.loc 1 503 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #244
.LVL465:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL466:
	str	r4, [r2]
	.loc 1 504 0
	ldr	r4, .L128+56
	.loc 1 503 0
	str	r0, [r3]
	.loc 1 504 0
	mov	r0, #245
.LVL467:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL468:
	str	r4, [r2]
	.loc 1 505 0
	mov	r4, #222
	lsl	r4, r4, #4
	.loc 1 504 0
	str	r0, [r3]
	.loc 1 505 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #246
.LVL469:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL470:
	str	r4, [r2]
	.loc 1 506 0
	ldr	r4, .L128+60
	.loc 1 505 0
	str	r0, [r3]
	.loc 1 506 0
	mov	r0, #247
.LVL471:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL472:
	str	r4, [r2]
	.loc 1 507 0
	mov	r4, #190
	lsl	r4, r4, #4
	.loc 1 506 0
	str	r0, [r3]
	.loc 1 507 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #250
.LVL473:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL474:
	str	r4, [r2]
	.loc 1 508 0
	ldr	r4, .L128+64
	.loc 1 507 0
	str	r0, [r3]
	.loc 1 508 0
	mov	r0, #251
.LVL475:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL476:
	str	r4, [r2]
	.loc 1 509 0
	mov	r4, #252
	lsl	r4, r4, #3
	.loc 1 508 0
	str	r0, [r3]
	.loc 1 509 0
	add	r3, r1, r4
	mov	r0, #252
.LVL477:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL478:
	str	r4, [r2]
	.loc 1 510 0
	ldr	r4, .L128+68
	.loc 1 509 0
	str	r0, [r3]
	.loc 1 510 0
	mov	r0, #253
.LVL479:
	add	r3, r1, r4
	lsl	r0, r0, #2
	ldr	r4, [r3]
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL480:
	str	r4, [r2]
	.loc 1 511 0
	mov	r4, #254
	.loc 1 510 0
	str	r0, [r3]
	.loc 1 511 0
	lsl	r4, r4, #4
	mov	r0, #254
.LVL481:
	add	r3, r1, r4
	lsl	r0, r0, #2
	ldr	r4, [r3]
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL482:
	str	r4, [r2]
	.loc 1 512 0
	ldr	r4, .L128+72
	.loc 1 511 0
	str	r0, [r3]
	.loc 1 512 0
	mov	r0, #255
.LVL483:
	lsl	r0, r0, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL484:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 513 0
	mov	r4, #129
	mov	r0, #129
.LVL485:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL486:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 514 0
	ldr	r4, .L128+76
	ldr	r0, .L128+80
.LVL487:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL488:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 515 0
	mov	r4, #193
	mov	r0, #131
.LVL489:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL490:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 516 0
	ldr	r4, .L128+84
	ldr	r0, .L128+88
.LVL491:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL492:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 517 0
	mov	r4, #161
	mov	r0, #133
.LVL493:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL494:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 518 0
	ldr	r4, .L128+92
	ldr	r0, .L128+96
.LVL495:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL496:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 519 0
	mov	r4, #194
	mov	r0, #134
.LVL497:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL498:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 520 0
	ldr	r4, .L128+100
	ldr	r0, .L128+104
.LVL499:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL500:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 521 0
	mov	r4, #225
	mov	r0, #135
.LVL501:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL502:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 522 0
	ldr	r4, .L128+108
	ldr	r0, .L128+112
.LVL503:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL504:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 523 0
	mov	r4, #145
	mov	r0, #137
.LVL505:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL506:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 524 0
	ldr	r4, .L128+116
	ldr	r0, .L128+120
.LVL507:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL508:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 525 0
	mov	r4, #162
	mov	r0, #138
.LVL509:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL510:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 526 0
	ldr	r4, .L128+124
	ldr	r0, .L128+128
.LVL511:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL512:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 527 0
	mov	r4, #209
	mov	r0, #139
.LVL513:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL514:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 528 0
	ldr	r4, .L128+132
	ldr	r0, .L128+136
.LVL515:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL516:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 529 0
	mov	r4, #177
	mov	r0, #141
.LVL517:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL518:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 530 0
	ldr	r4, .L128+140
	b	.L129
.L130:
	.align	2
.L128:
	.word	3684
	.word	2404
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
	.word	3044
	.word	2020
	.word	4068
	.word	2068
	.word	1036
	.word	3092
	.word	1052
	.word	2580
	.word	1068
	.word	1556
	.word	1076
	.word	3604
	.word	1084
	.word	2324
	.word	1100
	.word	1300
	.word	1108
	.word	3348
	.word	1116
	.word	2836
.L129:
	ldr	r0, .L131
.LVL519:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL520:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 531 0
	mov	r4, #226
	mov	r0, #142
.LVL521:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL522:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 532 0
	ldr	r4, .L131+4
	ldr	r0, .L131+8
.LVL523:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL524:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 533 0
	mov	r4, #241
	mov	r0, #143
.LVL525:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL526:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 534 0
	ldr	r4, .L131+12
	ldr	r0, .L131+16
.LVL527:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL528:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 535 0
	mov	r4, #137
	mov	r0, #145
.LVL529:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL530:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 536 0
	ldr	r4, .L131+20
	ldr	r0, .L131+24
.LVL531:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL532:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 537 0
	mov	r4, #201
	mov	r0, #147
.LVL533:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL534:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 538 0
	ldr	r4, .L131+28
	ldr	r0, .L131+32
.LVL535:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL536:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 539 0
	mov	r4, #169
	mov	r0, #149
.LVL537:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL538:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 540 0
	ldr	r4, .L131+36
	ldr	r0, .L131+40
.LVL539:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL540:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 541 0
	mov	r4, #210
	mov	r0, #150
.LVL541:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL542:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 542 0
	ldr	r4, .L131+44
	ldr	r0, .L131+48
.LVL543:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL544:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 543 0
	mov	r4, #233
	mov	r0, #151
.LVL545:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL546:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 544 0
	ldr	r4, .L131+52
	ldr	r0, .L131+56
.LVL547:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL548:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 545 0
	mov	r4, #153
	mov	r0, #153
.LVL549:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL550:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 546 0
	ldr	r4, .L131+60
	ldr	r0, .L131+64
.LVL551:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL552:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 547 0
	mov	r4, #178
	mov	r0, #154
.LVL553:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL554:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 548 0
	ldr	r4, .L131+68
	ldr	r0, .L131+72
.LVL555:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL556:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 549 0
	mov	r4, #217
	mov	r0, #155
.LVL557:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL558:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 550 0
	ldr	r4, .L131+76
	ldr	r0, .L131+80
.LVL559:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL560:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 551 0
	mov	r4, #185
	mov	r0, #157
.LVL561:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL562:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 552 0
	ldr	r4, .L131+84
	ldr	r0, .L131+88
.LVL563:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL564:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 553 0
	mov	r4, #242
	mov	r0, #158
.LVL565:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL566:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 554 0
	ldr	r4, .L131+92
	ldr	r0, .L131+96
.LVL567:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL568:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 555 0
	mov	r4, #249
	mov	r0, #159
.LVL569:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL570:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 556 0
	ldr	r4, .L131+100
	ldr	r0, .L131+104
.LVL571:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL572:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 557 0
	mov	r4, #133
	mov	r0, #161
.LVL573:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL574:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 558 0
	ldr	r4, .L131+108
	ldr	r0, .L131+112
.LVL575:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL576:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 559 0
	mov	r4, #197
	mov	r0, #163
.LVL577:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL578:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 560 0
	ldr	r4, .L131+116
	ldr	r0, .L131+120
.LVL579:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL580:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 561 0
	mov	r4, #165
	mov	r0, #165
.LVL581:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL582:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 562 0
	ldr	r4, .L131+124
	ldr	r0, .L131+128
.LVL583:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL584:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 563 0
	mov	r4, #202
	mov	r0, #166
.LVL585:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL586:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 564 0
	ldr	r4, .L131+132
	ldr	r0, .L131+136
.LVL587:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL588:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 565 0
	mov	r4, #229
	mov	r0, #167
.LVL589:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL590:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 566 0
	ldr	r4, .L131+140
	ldr	r0, .L131+144
.LVL591:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL592:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 567 0
	mov	r4, #149
	mov	r0, #169
.LVL593:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL594:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 568 0
	ldr	r4, .L131+148
	ldr	r0, .L131+152
.LVL595:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL596:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 569 0
	mov	r4, #213
	mov	r0, #171
.LVL597:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL598:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 570 0
	ldr	r4, .L131+156
	ldr	r0, .L131+160
.LVL599:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL600:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 571 0
	mov	r4, #181
	mov	r0, #173
.LVL601:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL602:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 572 0
	ldr	r4, .L131+164
	ldr	r0, .L131+168
.LVL603:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL604:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 573 0
	mov	r4, #234
	mov	r0, #174
.LVL605:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL606:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 574 0
	ldr	r4, .L131+172
	ldr	r0, .L131+176
.LVL607:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL608:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 575 0
	mov	r4, #245
	mov	r0, #175
.LVL609:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL610:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 576 0
	ldr	r4, .L131+180
	ldr	r0, .L131+184
.LVL611:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL612:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 577 0
	mov	r4, #141
	mov	r0, #177
.LVL613:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL614:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 578 0
	ldr	r4, .L131+188
	ldr	r0, .L131+192
.LVL615:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL616:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 579 0
	mov	r4, #205
	mov	r0, #179
.LVL617:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL618:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 580 0
	ldr	r4, .L131+196
	ldr	r0, .L131+200
.LVL619:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL620:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 581 0
	mov	r4, #173
	mov	r0, #181
.LVL621:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL622:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 582 0
	ldr	r4, .L131+204
	ldr	r0, .L131+208
.LVL623:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL624:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 583 0
	mov	r4, #218
	mov	r0, #182
.LVL625:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL626:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 584 0
	ldr	r4, .L131+212
	ldr	r0, .L131+216
.LVL627:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL628:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 585 0
	mov	r4, #237
	mov	r0, #183
.LVL629:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL630:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 586 0
	ldr	r4, .L131+220
	ldr	r0, .L131+224
.LVL631:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL632:
	ldr	r4, [r3]
	b	.L132
.L133:
	.align	2
.L131:
	.word	1132
	.word	1812
	.word	1140
	.word	3860
	.word	1148
	.word	2196
	.word	1164
	.word	3220
	.word	1180
	.word	2708
	.word	1196
	.word	1684
	.word	1204
	.word	3732
	.word	1212
	.word	2452
	.word	1228
	.word	1428
	.word	1236
	.word	3476
	.word	1244
	.word	2964
	.word	1260
	.word	1940
	.word	1268
	.word	3988
	.word	1276
	.word	2132
	.word	1292
	.word	3156
	.word	1308
	.word	2644
	.word	1324
	.word	1620
	.word	1332
	.word	3668
	.word	1340
	.word	2388
	.word	1356
	.word	3412
	.word	1372
	.word	2900
	.word	1388
	.word	1876
	.word	1396
	.word	3924
	.word	1404
	.word	2260
	.word	1420
	.word	3284
	.word	1436
	.word	2772
	.word	1452
	.word	1748
	.word	1460
	.word	3796
	.word	1468
.L132:
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 587 0
	mov	r4, #157
	mov	r0, #185
.LVL633:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL634:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 588 0
	ldr	r4, .L134
	ldr	r0, .L134+4
.LVL635:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL636:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 589 0
	mov	r4, #221
	mov	r0, #187
.LVL637:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL638:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 590 0
	ldr	r4, .L134+8
	ldr	r0, .L134+12
.LVL639:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL640:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 591 0
	mov	r4, #189
	mov	r0, #189
.LVL641:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL642:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 592 0
	ldr	r4, .L134+16
	ldr	r0, .L134+20
.LVL643:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL644:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 593 0
	mov	r4, #250
	mov	r0, #190
.LVL645:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL646:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 594 0
	ldr	r4, .L134+24
	ldr	r0, .L134+28
.LVL647:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL648:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 595 0
	mov	r4, #253
	mov	r0, #191
.LVL649:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL650:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 596 0
	ldr	r4, .L134+32
	ldr	r0, .L134+36
.LVL651:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL652:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 597 0
	mov	r4, #131
	mov	r0, #193
.LVL653:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL654:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 598 0
	ldr	r4, .L134+40
	ldr	r0, .L134+44
.LVL655:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL656:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 599 0
	mov	r4, #195
	mov	r0, #195
.LVL657:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL658:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 600 0
	ldr	r4, .L134+48
	ldr	r0, .L134+52
.LVL659:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL660:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 601 0
	mov	r4, #163
	mov	r0, #197
.LVL661:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL662:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 602 0
	ldr	r4, .L134+56
	ldr	r0, .L134+60
.LVL663:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL664:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 603 0
	mov	r4, #227
	mov	r0, #199
.LVL665:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL666:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 604 0
	ldr	r4, .L134+64
	ldr	r0, .L134+68
.LVL667:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL668:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 605 0
	mov	r4, #147
	mov	r0, #201
.LVL669:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL670:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 606 0
	ldr	r4, .L134+72
	ldr	r0, .L134+76
.LVL671:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL672:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 607 0
	mov	r4, #211
	mov	r0, #203
.LVL673:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL674:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 608 0
	ldr	r4, .L134+80
	ldr	r0, .L134+84
.LVL675:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL676:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 609 0
	mov	r4, #179
	mov	r0, #205
.LVL677:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL678:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 610 0
	ldr	r4, .L134+88
	ldr	r0, .L134+92
.LVL679:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL680:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 611 0
	mov	r4, #230
	mov	r0, #206
.LVL681:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL682:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 612 0
	ldr	r4, .L134+96
	ldr	r0, .L134+100
.LVL683:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL684:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 613 0
	mov	r4, #243
	mov	r0, #207
.LVL685:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL686:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 614 0
	ldr	r4, .L134+104
	ldr	r0, .L134+108
.LVL687:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL688:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 615 0
	mov	r4, #139
	mov	r0, #209
.LVL689:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL690:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 616 0
	ldr	r4, .L134+112
	ldr	r0, .L134+116
.LVL691:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL692:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 617 0
	mov	r4, #203
	mov	r0, #211
.LVL693:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL694:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 618 0
	ldr	r4, .L134+120
	ldr	r0, .L134+124
.LVL695:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL696:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 619 0
	mov	r4, #171
	mov	r0, #213
.LVL697:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL698:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 620 0
	ldr	r4, .L134+128
	ldr	r0, .L134+132
.LVL699:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL700:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 621 0
	mov	r4, #235
	mov	r0, #215
.LVL701:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL702:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 622 0
	ldr	r4, .L134+136
	ldr	r0, .L134+140
.LVL703:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL704:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 623 0
	mov	r4, #155
	mov	r0, #217
.LVL705:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL706:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 624 0
	ldr	r4, .L134+144
	ldr	r0, .L134+148
.LVL707:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL708:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 625 0
	mov	r4, #219
	mov	r0, #219
.LVL709:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL710:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 626 0
	ldr	r4, .L134+152
	ldr	r0, .L134+156
.LVL711:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL712:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 627 0
	mov	r4, #187
	mov	r0, #221
.LVL713:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL714:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 628 0
	ldr	r4, .L134+160
	ldr	r0, .L134+164
.LVL715:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL716:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 629 0
	mov	r4, #246
	mov	r0, #222
.LVL717:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL718:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 630 0
	ldr	r4, .L134+168
	ldr	r0, .L134+172
.LVL719:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL720:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 631 0
	mov	r4, #251
	mov	r0, #223
.LVL721:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL722:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 632 0
	ldr	r4, .L134+176
	ldr	r0, .L134+180
.LVL723:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL724:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 633 0
	mov	r4, #135
	mov	r0, #225
.LVL725:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL726:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 634 0
	ldr	r4, .L134+184
	ldr	r0, .L134+188
.LVL727:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL728:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 635 0
	mov	r4, #199
	mov	r0, #227
.LVL729:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL730:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 636 0
	ldr	r4, .L134+192
	ldr	r0, .L134+196
.LVL731:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL732:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 637 0
	mov	r4, #167
	mov	r0, #229
.LVL733:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL734:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 638 0
	ldr	r4, .L134+200
	ldr	r0, .L134+204
.LVL735:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL736:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 639 0
	mov	r4, #231
	mov	r0, #231
.LVL737:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL738:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 640 0
	ldr	r4, .L134+208
	ldr	r0, .L134+212
.LVL739:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL740:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 641 0
	mov	r4, #151
	mov	r0, #233
.LVL741:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL742:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 642 0
	ldr	r4, .L134+216
	ldr	r0, .L134+220
.LVL743:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL744:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 643 0
	mov	r4, #215
	mov	r0, #235
.LVL745:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL746:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 644 0
	ldr	r4, .L134+224
	ldr	r0, .L134+228
.LVL747:
	add	r3, r1, r4
	add	r2, r1, r0
	b	.L135
.L136:
	.align	2
.L134:
	.word	2516
	.word	1484
	.word	3540
	.word	1500
	.word	3028
	.word	1516
	.word	2004
	.word	1524
	.word	4052
	.word	1532
	.word	2100
	.word	1548
	.word	3124
	.word	1564
	.word	2612
	.word	1580
	.word	3636
	.word	1596
	.word	2356
	.word	1612
	.word	3380
	.word	1628
	.word	2868
	.word	1644
	.word	1844
	.word	1652
	.word	3892
	.word	1660
	.word	2228
	.word	1676
	.word	3252
	.word	1692
	.word	2740
	.word	1708
	.word	3764
	.word	1724
	.word	2484
	.word	1740
	.word	3508
	.word	1756
	.word	2996
	.word	1772
	.word	1972
	.word	1780
	.word	4020
	.word	1788
	.word	2164
	.word	1804
	.word	3188
	.word	1820
	.word	2676
	.word	1836
	.word	3700
	.word	1852
	.word	2420
	.word	1868
	.word	3444
	.word	1884
.L135:
	ldr	r0, [r2]
.LVL748:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 645 0
	mov	r4, #183
	mov	r0, #237
.LVL749:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL750:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 646 0
	ldr	r4, .L137
	ldr	r0, .L137+4
.LVL751:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL752:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 647 0
	mov	r4, #247
	mov	r0, #239
.LVL753:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL754:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 648 0
	ldr	r4, .L137+8
	ldr	r0, .L137+12
.LVL755:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL756:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 649 0
	mov	r4, #143
	mov	r0, #241
.LVL757:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL758:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 650 0
	ldr	r4, .L137+16
	ldr	r0, .L137+20
.LVL759:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL760:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 651 0
	mov	r4, #207
	mov	r0, #243
.LVL761:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL762:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 652 0
	ldr	r4, .L137+24
	ldr	r0, .L137+28
.LVL763:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL764:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 653 0
	mov	r4, #175
	mov	r0, #245
.LVL765:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL766:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 654 0
	ldr	r4, .L137+32
	ldr	r0, .L137+36
.LVL767:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL768:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 655 0
	mov	r4, #239
	mov	r0, #247
.LVL769:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL770:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 656 0
	ldr	r4, .L137+40
	ldr	r0, .L137+44
.LVL771:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL772:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 657 0
	mov	r4, #159
	mov	r0, #249
.LVL773:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL774:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 658 0
	ldr	r4, .L137+48
	ldr	r0, .L137+52
.LVL775:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL776:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 659 0
	mov	r4, #223
	mov	r0, #251
.LVL777:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL778:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 660 0
	ldr	r4, .L137+56
	ldr	r0, .L137+60
.LVL779:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL780:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 661 0
	mov	r4, #191
	mov	r0, #253
.LVL781:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL782:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 662 0
	ldr	r4, .L137+64
	ldr	r0, .L137+68
.LVL783:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL784:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 663 0
	mov	r4, #255
	mov	r0, #255
.LVL785:
	lsl	r0, r0, #3
	lsl	r4, r4, #4
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL786:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 664 0
	ldr	r4, .L137+72
	ldr	r0, .L137+76
.LVL787:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL788:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 665 0
	ldr	r4, .L137+80
	ldr	r0, .L137+84
.LVL789:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL790:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 666 0
	ldr	r4, .L137+88
	ldr	r0, .L137+92
.LVL791:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL792:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 667 0
	ldr	r4, .L137+96
	ldr	r0, .L137+100
.LVL793:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL794:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 668 0
	ldr	r4, .L137+104
	ldr	r0, .L137+108
.LVL795:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL796:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 669 0
	ldr	r4, .L137+112
	ldr	r0, .L137+116
.LVL797:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL798:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 670 0
	ldr	r4, .L137+120
	ldr	r0, .L137+124
.LVL799:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL800:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 671 0
	ldr	r4, .L137+128
	ldr	r0, .L137+132
.LVL801:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL802:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 672 0
	ldr	r4, .L137+136
	ldr	r0, .L137+140
.LVL803:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL804:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 673 0
	ldr	r4, .L137+144
	ldr	r0, .L137+148
.LVL805:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL806:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 674 0
	ldr	r4, .L137+152
	ldr	r0, .L137+156
.LVL807:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL808:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 675 0
	ldr	r4, .L137+160
	ldr	r0, .L137+164
.LVL809:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL810:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 676 0
	ldr	r4, .L137+168
	ldr	r0, .L137+172
.LVL811:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL812:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 677 0
	ldr	r4, .L137+176
	ldr	r0, .L137+180
.LVL813:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL814:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 678 0
	ldr	r4, .L137+184
	ldr	r0, .L137+188
.LVL815:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL816:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 679 0
	ldr	r4, .L137+192
	ldr	r0, .L137+196
.LVL817:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL818:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 680 0
	ldr	r4, .L137+200
	ldr	r0, .L137+204
.LVL819:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL820:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 681 0
	ldr	r4, .L137+208
	ldr	r0, .L137+212
.LVL821:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL822:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 682 0
	ldr	r4, .L137+216
	ldr	r0, .L137+220
.LVL823:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL824:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 683 0
	ldr	r4, .L137+224
	ldr	r0, .L137+228
.LVL825:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL826:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 684 0
	ldr	r4, .L137+232
	ldr	r0, .L137+236
.LVL827:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL828:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 685 0
	ldr	r4, .L137+240
	ldr	r0, .L137+244
.LVL829:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL830:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 686 0
	ldr	r4, .L137+248
	ldr	r0, .L137+252
.LVL831:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL832:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 687 0
	ldr	r4, .L137+256
	ldr	r0, .L137+260
.LVL833:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL834:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 688 0
	ldr	r4, .L137+264
	ldr	r0, .L137+268
.LVL835:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL836:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 689 0
	ldr	r4, .L137+272
	ldr	r0, .L137+276
.LVL837:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL838:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 690 0
	ldr	r4, .L137+280
	ldr	r0, .L137+284
.LVL839:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL840:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 691 0
	ldr	r4, .L137+288
	ldr	r0, .L137+292
.LVL841:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL842:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 692 0
	ldr	r4, .L137+296
	ldr	r0, .L137+300
.LVL843:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL844:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 693 0
	ldr	r4, .L137+304
	ldr	r0, .L137+308
.LVL845:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL846:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 694 0
	ldr	r4, .L137+312
	ldr	r0, .L137+316
.LVL847:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL848:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 695 0
	ldr	r4, .L137+320
	ldr	r0, .L137+324
.LVL849:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL850:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 696 0
	ldr	r4, .L137+328
	ldr	r0, .L137+332
.LVL851:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL852:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 697 0
	ldr	r4, .L137+336
	ldr	r0, .L137+340
.LVL853:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL854:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 698 0
	ldr	r4, .L137+344
	ldr	r0, .L137+348
.LVL855:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL856:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 699 0
	ldr	r4, .L137+352
	ldr	r0, .L137+356
.LVL857:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL858:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 700 0
	ldr	r4, .L137+360
	ldr	r0, .L137+364
.LVL859:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL860:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 701 0
	ldr	r4, .L137+368
	ldr	r0, .L137+372
.LVL861:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL862:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 702 0
	ldr	r4, .L137+376
	ldr	r0, .L137+380
.LVL863:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL864:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 703 0
	ldr	r4, .L137+384
	ldr	r0, .L137+388
.LVL865:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL866:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 704 0
	ldr	r4, .L137+392
	ldr	r0, .L137+396
.LVL867:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL868:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 705 0
	ldr	r4, .L137+400
	ldr	r0, .L137+404
.LVL869:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL870:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 706 0
	ldr	r4, .L137+408
	ldr	r0, .L137+412
.LVL871:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL872:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	b	.L138
.L139:
	.align	2
.L137:
	.word	2932
	.word	1900
	.word	3956
	.word	1916
	.word	2292
	.word	1932
	.word	3316
	.word	1948
	.word	2804
	.word	1964
	.word	3828
	.word	1980
	.word	2548
	.word	1996
	.word	3572
	.word	2012
	.word	3060
	.word	2028
	.word	4084
	.word	2044
	.word	3080
	.word	2072
	.word	3084
	.word	2076
	.word	2568
	.word	2088
	.word	2572
	.word	2092
	.word	3592
	.word	2104
	.word	3596
	.word	2108
	.word	2312
	.word	2120
	.word	2316
	.word	2124
	.word	3336
	.word	2136
	.word	3340
	.word	2140
	.word	2824
	.word	2152
	.word	2828
	.word	2156
	.word	3848
	.word	2168
	.word	3852
	.word	2172
	.word	3208
	.word	2200
	.word	3212
	.word	2204
	.word	2696
	.word	2216
	.word	2700
	.word	2220
	.word	3720
	.word	2232
	.word	3724
	.word	2236
	.word	2440
	.word	2248
	.word	2444
	.word	2252
	.word	3464
	.word	2264
	.word	3468
	.word	2268
	.word	2952
	.word	2280
	.word	2956
	.word	2284
	.word	3976
	.word	2296
	.word	3980
	.word	2300
	.word	3144
	.word	2328
	.word	3148
	.word	2332
	.word	2632
	.word	2344
	.word	2636
	.word	2348
	.word	3656
	.word	2360
	.word	3660
	.word	2364
	.word	3400
	.word	2392
	.word	3404
	.word	2396
	.word	2888
	.word	2408
	.word	2892
	.word	2412
	.word	3912
	.word	2424
	.word	3916
	.word	2428
	.word	3272
	.word	2456
	.word	3276
	.word	2460
.L138:
	.loc 1 707 0
	ldr	r4, .L140
	ldr	r0, .L140+4
.LVL873:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL874:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 708 0
	ldr	r4, .L140+8
	ldr	r0, .L140+12
.LVL875:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL876:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 709 0
	ldr	r4, .L140+16
	ldr	r0, .L140+20
.LVL877:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL878:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 710 0
	ldr	r4, .L140+24
	ldr	r0, .L140+28
.LVL879:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL880:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 711 0
	ldr	r4, .L140+32
	ldr	r0, .L140+36
.LVL881:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL882:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 712 0
	ldr	r4, .L140+40
	ldr	r0, .L140+44
.LVL883:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL884:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 713 0
	ldr	r4, .L140+48
	ldr	r0, .L140+52
.LVL885:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL886:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 714 0
	ldr	r4, .L140+56
	ldr	r0, .L140+60
.LVL887:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL888:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 715 0
	ldr	r4, .L140+64
	ldr	r0, .L140+68
.LVL889:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL890:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 716 0
	ldr	r4, .L140+72
	ldr	r0, .L140+76
.LVL891:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL892:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 717 0
	ldr	r4, .L140+80
	ldr	r0, .L140+84
.LVL893:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL894:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 718 0
	ldr	r4, .L140+88
	ldr	r0, .L140+92
.LVL895:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL896:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 719 0
	ldr	r4, .L140+96
	ldr	r0, .L140+100
.LVL897:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL898:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 720 0
	ldr	r4, .L140+104
	ldr	r0, .L140+108
.LVL899:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL900:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 721 0
	ldr	r4, .L140+112
	ldr	r0, .L140+116
.LVL901:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL902:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 722 0
	ldr	r4, .L140+120
	ldr	r0, .L140+124
.LVL903:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL904:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 723 0
	ldr	r4, .L140+128
	ldr	r0, .L140+132
.LVL905:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL906:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 724 0
	ldr	r4, .L140+136
	ldr	r0, .L140+140
.LVL907:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL908:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 725 0
	ldr	r4, .L140+144
	ldr	r0, .L140+148
.LVL909:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL910:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 726 0
	ldr	r4, .L140+152
	ldr	r0, .L140+156
.LVL911:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL912:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 727 0
	ldr	r4, .L140+160
	ldr	r0, .L140+164
.LVL913:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL914:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 728 0
	ldr	r4, .L140+168
	ldr	r0, .L140+172
.LVL915:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL916:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 729 0
	ldr	r4, .L140+176
	ldr	r0, .L140+180
.LVL917:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL918:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 730 0
	ldr	r4, .L140+184
	ldr	r0, .L140+188
.LVL919:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL920:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 731 0
	ldr	r4, .L140+192
	ldr	r0, .L140+196
.LVL921:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL922:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 732 0
	ldr	r4, .L140+200
	ldr	r0, .L140+204
.LVL923:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL924:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 733 0
	ldr	r4, .L140+208
	ldr	r0, .L140+212
.LVL925:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL926:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 734 0
	ldr	r4, .L140+216
	ldr	r0, .L140+220
.LVL927:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL928:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 735 0
	ldr	r4, .L140+224
	ldr	r0, .L140+228
.LVL929:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL930:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 736 0
	ldr	r4, .L140+232
	ldr	r0, .L140+236
.LVL931:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL932:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 737 0
	ldr	r4, .L140+240
	ldr	r0, .L140+244
.LVL933:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL934:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 738 0
	ldr	r4, .L140+248
	ldr	r0, .L140+252
.LVL935:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL936:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 739 0
	ldr	r4, .L140+256
	ldr	r0, .L140+260
.LVL937:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL938:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 740 0
	ldr	r4, .L140+264
	ldr	r0, .L140+268
.LVL939:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL940:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 741 0
	ldr	r4, .L140+272
	ldr	r0, .L140+276
.LVL941:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL942:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 742 0
	ldr	r4, .L140+280
	ldr	r0, .L140+284
.LVL943:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL944:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 743 0
	ldr	r4, .L140+288
	ldr	r0, .L140+292
.LVL945:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL946:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 744 0
	ldr	r4, .L140+296
	ldr	r0, .L140+300
.LVL947:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL948:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 745 0
	ldr	r4, .L140+304
	ldr	r0, .L140+308
.LVL949:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL950:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 746 0
	ldr	r4, .L140+312
	ldr	r0, .L140+316
.LVL951:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL952:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 747 0
	ldr	r4, .L140+320
	ldr	r0, .L140+324
.LVL953:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL954:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 748 0
	ldr	r4, .L140+328
	ldr	r0, .L140+332
.LVL955:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL956:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 749 0
	ldr	r4, .L140+336
	ldr	r0, .L140+340
.LVL957:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL958:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 750 0
	ldr	r4, .L140+344
	ldr	r0, .L140+348
.LVL959:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL960:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 751 0
	ldr	r4, .L140+352
	ldr	r0, .L140+356
.LVL961:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL962:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 752 0
	ldr	r4, .L140+360
	ldr	r0, .L140+364
.LVL963:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL964:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 753 0
	ldr	r4, .L140+368
	ldr	r0, .L140+372
.LVL965:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL966:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 754 0
	ldr	r4, .L140+376
	ldr	r0, .L140+380
.LVL967:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL968:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 755 0
	ldr	r4, .L140+384
	ldr	r0, .L140+388
.LVL969:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL970:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 756 0
	ldr	r4, .L140+392
	ldr	r0, .L140+396
.LVL971:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL972:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 757 0
	ldr	r4, .L140+400
	ldr	r0, .L140+404
.LVL973:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL974:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 758 0
	ldr	r4, .L140+408
	ldr	r0, .L140+412
.LVL975:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL976:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 759 0
	ldr	r4, .L140+416
	ldr	r0, .L140+420
.LVL977:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL978:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 760 0
	ldr	r4, .L140+424
	ldr	r0, .L140+428
.LVL979:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL980:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 761 0
	ldr	r4, .L140+432
	ldr	r0, .L140+436
.LVL981:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL982:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 762 0
	ldr	r4, .L140+440
	ldr	r0, .L140+444
.LVL983:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL984:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 763 0
	ldr	r4, .L140+448
	ldr	r0, .L140+452
.LVL985:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL986:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 764 0
	ldr	r4, .L140+456
	ldr	r0, .L140+460
.LVL987:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL988:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 765 0
	ldr	r4, .L140+464
	ldr	r0, .L140+468
.LVL989:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL990:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 766 0
	ldr	r4, .L140+472
	ldr	r0, .L140+476
.LVL991:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL992:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 767 0
	ldr	r4, .L140+480
	ldr	r0, .L140+484
.LVL993:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL994:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 768 0
	ldr	r4, .L140+488
	ldr	r0, .L140+492
.LVL995:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL996:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 769 0
	ldr	r4, .L140+496
	ldr	r0, .L140+500
.LVL997:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL998:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 770 0
	ldr	r4, .L140+504
	ldr	r0, .L140+508
.LVL999:
	add	r3, r1, r4
	add	r2, r1, r0
	b	.L141
.L142:
	.align	2
.L140:
	.word	2760
	.word	2472
	.word	2764
	.word	2476
	.word	3784
	.word	2488
	.word	3788
	.word	2492
	.word	3528
	.word	2520
	.word	3532
	.word	2524
	.word	3016
	.word	2536
	.word	3020
	.word	2540
	.word	4040
	.word	2552
	.word	4044
	.word	2556
	.word	3112
	.word	2584
	.word	3116
	.word	2588
	.word	3624
	.word	2616
	.word	3628
	.word	2620
	.word	3368
	.word	2648
	.word	3372
	.word	2652
	.word	2856
	.word	2664
	.word	2860
	.word	2668
	.word	3880
	.word	2680
	.word	3884
	.word	2684
	.word	3240
	.word	2712
	.word	3244
	.word	2716
	.word	3752
	.word	2744
	.word	3756
	.word	2748
	.word	3496
	.word	2776
	.word	3500
	.word	2780
	.word	2984
	.word	2792
	.word	2988
	.word	2796
	.word	4008
	.word	2808
	.word	4012
	.word	2812
	.word	3176
	.word	2840
	.word	3180
	.word	2844
	.word	3688
	.word	2872
	.word	3692
	.word	2876
	.word	3432
	.word	2904
	.word	3436
	.word	2908
	.word	3944
	.word	2936
	.word	3948
	.word	2940
	.word	3304
	.word	2968
	.word	3308
	.word	2972
	.word	3816
	.word	3000
	.word	3820
	.word	3004
	.word	3560
	.word	3032
	.word	3564
	.word	3036
	.word	4072
	.word	3064
	.word	4076
	.word	3068
	.word	3608
	.word	3128
	.word	3612
	.word	3132
	.word	3352
	.word	3160
	.word	3356
	.word	3164
	.word	3864
	.word	3192
	.word	3868
	.word	3196
	.word	3736
	.word	3256
	.word	3740
	.word	3260
	.word	3480
	.word	3288
	.word	3484
	.word	3292
	.word	3992
	.word	3320
	.word	3996
	.word	3324
	.word	3672
	.word	3384
	.word	3676
	.word	3388
	.word	3928
	.word	3448
	.word	3932
	.word	3452
	.word	3800
	.word	3512
	.word	3804
	.word	3516
.L141:
	ldr	r0, [r2]
.LVL1000:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 771 0
	ldr	r4, .L143
	ldr	r0, .L143+4
.LVL1001:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1002:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 772 0
	ldr	r4, .L143+8
	ldr	r0, .L143+12
.LVL1003:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1004:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 773 0
	ldr	r4, .L143+16
	ldr	r0, .L143+20
.LVL1005:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1006:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 774 0
	ldr	r4, .L143+24
	ldr	r0, .L143+28
.LVL1007:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1008:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 775 0
	ldr	r4, .L143+32
	ldr	r0, .L143+36
.LVL1009:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1010:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 776 0
	ldr	r4, .L143+40
	ldr	r0, .L143+44
.LVL1011:
	add	r3, r1, r0
	add	r1, r1, r4
.LVL1012:
	ldr	r2, [r3]
.LVL1013:
	ldr	r0, [r1]
	str	r0, [r3]
	str	r2, [r1]
	.loc 1 777 0
	bl	.L115	@ far jump
.LVL1014:
.L118:
	.loc 1 295 0
	cmp	r0, #2
	beq	.LCB6435
	bl	.L102	@far jump
.LCB6435:
	bl	.L115	@ far jump
.L144:
	.align	2
.L143:
	.word	4056
	.word	3576
	.word	4060
	.word	3580
	.word	3896
	.word	3704
	.word	3900
	.word	3708
	.word	4024
	.word	3832
	.word	4028
	.word	3836
.L109:
	.loc 1 1021 0
	mov	r0, #128
.LVL1015:
	lsl	r0, r0, #2
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #8]
.LVL1016:
	.loc 1 1022 0
	mov	r4, #129
	lsl	r4, r4, #2
	.loc 1 1021 0
	str	r0, [r1, #8]
	str	r2, [r3]
	.loc 1 1022 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #12]
.LVL1017:
	.loc 1 1026 0
	mov	r4, #193
	.loc 1 1022 0
	str	r0, [r1, #12]
	str	r2, [r3]
	.loc 1 1023 0
	add	r3, r1, #1
	add	r3, r3, #255
	ldr	r0, [r3]
	ldr	r2, [r1, #16]
.LVL1018:
	.loc 1 1026 0
	lsl	r4, r4, #2
	.loc 1 1023 0
	str	r0, [r1, #16]
	str	r2, [r3]
	.loc 1 1024 0
	add	r3, r1, #5
	add	r3, r3, #255
	ldr	r0, [r3]
	ldr	r2, [r1, #20]
.LVL1019:
	str	r0, [r1, #20]
	.loc 1 1025 0
	mov	r0, #192
	lsl	r0, r0, #2
	.loc 1 1024 0
	str	r2, [r3]
	.loc 1 1025 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #24]
.LVL1020:
	str	r0, [r1, #24]
	str	r2, [r3]
	.loc 1 1026 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #28]
.LVL1021:
	.loc 1 1030 0
	sub	r4, r4, #128
	.loc 1 1026 0
	str	r0, [r1, #28]
	str	r2, [r3]
	.loc 1 1027 0
	mov	r3, r1
	add	r3, r3, #128
	ldr	r0, [r3]
	ldr	r2, [r1, #32]
.LVL1022:
	str	r0, [r1, #32]
	str	r2, [r3]
	.loc 1 1028 0
	add	r3, r3, #4
	ldr	r0, [r3]
	ldr	r2, [r1, #36]
.LVL1023:
	str	r0, [r1, #36]
	.loc 1 1029 0
	mov	r0, #160
	lsl	r0, r0, #2
	.loc 1 1028 0
	str	r2, [r3]
	.loc 1 1029 0
	add	r3, r1, r0
	ldr	r2, [r1, #40]
.LVL1024:
	ldr	r0, [r3]
	str	r0, [r1, #40]
	str	r2, [r3]
	.loc 1 1030 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #44]
.LVL1025:
	.loc 1 1032 0
	mov	r4, #194
	.loc 1 1030 0
	str	r0, [r1, #44]
	.loc 1 1031 0
	mov	r0, #192
	lsl	r0, r0, #1
	.loc 1 1030 0
	str	r2, [r3]
	.loc 1 1031 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #48]
.LVL1026:
	.loc 1 1032 0
	lsl	r4, r4, #1
	.loc 1 1031 0
	str	r0, [r1, #48]
	str	r2, [r3]
	.loc 1 1032 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #52]
.LVL1027:
	.loc 1 1034 0
	mov	r4, #225
	.loc 1 1032 0
	str	r0, [r1, #52]
	.loc 1 1033 0
	mov	r0, #224
	lsl	r0, r0, #2
	.loc 1 1032 0
	str	r2, [r3]
	.loc 1 1033 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #56]
.LVL1028:
	.loc 1 1034 0
	lsl	r4, r4, #2
	.loc 1 1033 0
	str	r0, [r1, #56]
	str	r2, [r3]
	.loc 1 1034 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #60]
.LVL1029:
	.loc 1 1036 0
	mov	r4, #145
	.loc 1 1034 0
	str	r0, [r1, #60]
	.loc 1 1035 0
	mov	r0, #144
	lsl	r0, r0, #2
	.loc 1 1034 0
	str	r2, [r3]
	.loc 1 1035 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #72]
.LVL1030:
	.loc 1 1036 0
	lsl	r4, r4, #2
	.loc 1 1035 0
	str	r0, [r1, #72]
	str	r2, [r3]
	.loc 1 1036 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #76]
.LVL1031:
	.loc 1 1038 0
	mov	r4, #162
	.loc 1 1036 0
	str	r0, [r1, #76]
	.loc 1 1037 0
	mov	r0, #160
	lsl	r0, r0, #1
	.loc 1 1036 0
	str	r2, [r3]
	.loc 1 1037 0
	add	r3, r1, r0
	ldr	r2, [r1, #80]
.LVL1032:
	ldr	r0, [r3]
	.loc 1 1038 0
	lsl	r4, r4, #1
	.loc 1 1037 0
	str	r0, [r1, #80]
	str	r2, [r3]
	.loc 1 1038 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #84]
.LVL1033:
	.loc 1 1040 0
	mov	r4, #209
	.loc 1 1038 0
	str	r0, [r1, #84]
	.loc 1 1039 0
	mov	r0, #208
	lsl	r0, r0, #2
	.loc 1 1038 0
	str	r2, [r3]
	.loc 1 1039 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #88]
.LVL1034:
	.loc 1 1040 0
	lsl	r4, r4, #2
	.loc 1 1039 0
	str	r0, [r1, #88]
	str	r2, [r3]
	.loc 1 1040 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #92]
.LVL1035:
	.loc 1 1044 0
	sub	r4, r4, #128
	.loc 1 1040 0
	str	r0, [r1, #92]
	str	r2, [r3]
	.loc 1 1041 0
	mov	r3, r1
	add	r3, r3, #192
	ldr	r0, [r3]
	ldr	r2, [r1, #96]
.LVL1036:
	str	r0, [r1, #96]
	str	r2, [r3]
	.loc 1 1042 0
	add	r3, r3, #4
	ldr	r0, [r3]
	ldr	r2, [r1, #100]
.LVL1037:
	str	r0, [r1, #100]
	.loc 1 1043 0
	mov	r0, #176
	lsl	r0, r0, #2
	.loc 1 1042 0
	str	r2, [r3]
	.loc 1 1043 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #104]
.LVL1038:
	str	r0, [r1, #104]
	str	r2, [r3]
	.loc 1 1044 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #108]
.LVL1039:
	.loc 1 1046 0
	mov	r4, #226
	.loc 1 1044 0
	str	r0, [r1, #108]
	.loc 1 1045 0
	mov	r0, #224
	lsl	r0, r0, #1
	.loc 1 1044 0
	str	r2, [r3]
	.loc 1 1045 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #112]
.LVL1040:
	.loc 1 1046 0
	lsl	r4, r4, #1
	.loc 1 1045 0
	str	r0, [r1, #112]
	str	r2, [r3]
	.loc 1 1046 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #116]
.LVL1041:
	.loc 1 1048 0
	mov	r4, #241
	.loc 1 1046 0
	str	r0, [r1, #116]
	.loc 1 1047 0
	mov	r0, #240
	lsl	r0, r0, #2
	.loc 1 1046 0
	str	r2, [r3]
	.loc 1 1047 0
	add	r3, r1, r0
	ldr	r2, [r1, #120]
.LVL1042:
	ldr	r0, [r3]
	.loc 1 1048 0
	lsl	r4, r4, #2
	.loc 1 1047 0
	str	r0, [r1, #120]
	str	r2, [r3]
	.loc 1 1048 0
	add	r3, r1, r4
	ldr	r2, [r1, #124]
.LVL1043:
	ldr	r0, [r3]
	.loc 1 1049 0
	mov	r4, #136
	lsl	r4, r4, #2
	.loc 1 1048 0
	str	r0, [r1, #124]
	str	r2, [r3]
	.loc 1 1049 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r2, r1
.LVL1044:
	add	r2, r2, #136
	ldr	r0, [r2]
.LVL1045:
	str	r4, [r2]
	.loc 1 1050 0
	mov	r4, #137
	lsl	r4, r4, #2
	.loc 1 1049 0
	str	r0, [r3]
	.loc 1 1050 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1046:
	str	r4, [r2]
	.loc 1 1051 0
	mov	r4, #144
	lsl	r4, r4, #1
	.loc 1 1050 0
	str	r0, [r3]
	.loc 1 1051 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1047:
	str	r4, [r2]
	.loc 1 1052 0
	mov	r4, #146
	lsl	r4, r4, #1
	.loc 1 1051 0
	str	r0, [r3]
	.loc 1 1052 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1048:
	str	r4, [r2]
	.loc 1 1053 0
	mov	r4, #200
	lsl	r4, r4, #2
	.loc 1 1052 0
	str	r0, [r3]
	.loc 1 1053 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1049:
	str	r4, [r2]
	.loc 1 1054 0
	mov	r4, #201
	lsl	r4, r4, #2
	.loc 1 1053 0
	str	r0, [r3]
	.loc 1 1054 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1050:
	str	r4, [r2]
	.loc 1 1055 0
	mov	r4, #168
	lsl	r4, r4, #2
	.loc 1 1054 0
	str	r0, [r3]
	.loc 1 1055 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #12
	ldr	r0, [r2]
.LVL1051:
	str	r4, [r2]
	.loc 1 1056 0
	mov	r4, #169
	lsl	r4, r4, #2
	.loc 1 1055 0
	str	r0, [r3]
	.loc 1 1056 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1052:
	str	r4, [r2]
	.loc 1 1057 0
	mov	r4, #208
	lsl	r4, r4, #1
	.loc 1 1056 0
	str	r0, [r3]
	.loc 1 1057 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1053:
	str	r4, [r2]
	.loc 1 1058 0
	mov	r4, #210
	lsl	r4, r4, #1
	.loc 1 1057 0
	str	r0, [r3]
	.loc 1 1058 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1054:
	str	r4, [r2]
	.loc 1 1059 0
	mov	r4, #232
	lsl	r4, r4, #2
	.loc 1 1058 0
	str	r0, [r3]
	.loc 1 1059 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1055:
	str	r4, [r2]
	.loc 1 1060 0
	mov	r4, #233
	lsl	r4, r4, #2
	.loc 1 1059 0
	str	r0, [r3]
	.loc 1 1060 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1056:
	str	r4, [r2]
	.loc 1 1061 0
	mov	r4, #152
	lsl	r4, r4, #2
	.loc 1 1060 0
	str	r0, [r3]
	.loc 1 1061 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #12
	ldr	r0, [r2]
.LVL1057:
	str	r4, [r2]
	.loc 1 1062 0
	mov	r4, #153
	lsl	r4, r4, #2
	.loc 1 1061 0
	str	r0, [r3]
	.loc 1 1062 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1058:
	str	r4, [r2]
	.loc 1 1063 0
	mov	r4, #176
	lsl	r4, r4, #1
	.loc 1 1062 0
	str	r0, [r3]
	.loc 1 1063 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1059:
	str	r4, [r2]
	.loc 1 1064 0
	mov	r4, #178
	lsl	r4, r4, #1
	.loc 1 1063 0
	str	r0, [r3]
	.loc 1 1064 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1060:
	str	r4, [r2]
	.loc 1 1065 0
	mov	r4, #216
	lsl	r4, r4, #2
	.loc 1 1064 0
	str	r0, [r3]
	.loc 1 1065 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1061:
	str	r4, [r2]
	.loc 1 1066 0
	mov	r4, #217
	lsl	r4, r4, #2
	.loc 1 1065 0
	str	r0, [r3]
	.loc 1 1066 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1062:
	str	r4, [r2]
	.loc 1 1067 0
	mov	r4, #184
	lsl	r4, r4, #2
	.loc 1 1066 0
	str	r0, [r3]
	.loc 1 1067 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #12
	ldr	r0, [r2]
.LVL1063:
	str	r4, [r2]
	.loc 1 1068 0
	mov	r4, #185
	lsl	r4, r4, #2
	.loc 1 1067 0
	str	r0, [r3]
	.loc 1 1068 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1064:
	str	r4, [r2]
	.loc 1 1069 0
	mov	r4, #240
	lsl	r4, r4, #1
	.loc 1 1068 0
	str	r0, [r3]
	.loc 1 1069 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1065:
	str	r4, [r2]
	.loc 1 1070 0
	mov	r4, #242
	lsl	r4, r4, #1
	.loc 1 1069 0
	str	r0, [r3]
	.loc 1 1070 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1066:
	str	r4, [r2]
	.loc 1 1071 0
	mov	r4, #248
	lsl	r4, r4, #2
	.loc 1 1070 0
	str	r0, [r3]
	.loc 1 1071 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1067:
	str	r4, [r2]
	.loc 1 1072 0
	mov	r4, #249
	lsl	r4, r4, #2
	.loc 1 1071 0
	str	r0, [r3]
	.loc 1 1072 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1068:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1073 0
	mov	r4, #132
	mov	r0, #132
.LVL1069:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1070:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1074 0
	mov	r4, #133
	mov	r0, #134
.LVL1071:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1072:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1075 0
	mov	r4, #196
	mov	r0, #140
.LVL1073:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1074:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1076 0
	mov	r4, #197
	mov	r0, #142
.LVL1075:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1076:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1077 0
	mov	r4, #164
	mov	r0, #148
.LVL1077:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1078:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1078 0
	mov	r4, #165
	mov	r0, #150
.LVL1079:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1080:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1079 0
	mov	r4, #200
	mov	r0, #152
.LVL1081:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1082:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1080 0
	mov	r4, #202
	mov	r0, #154
.LVL1083:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1084:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1081 0
	mov	r4, #228
	mov	r0, #156
.LVL1085:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1086:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1082 0
	mov	r4, #229
	mov	r0, #158
.LVL1087:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1088:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1083 0
	mov	r4, #148
	mov	r0, #164
.LVL1089:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1090:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1084 0
	mov	r4, #149
	mov	r0, #166
.LVL1091:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1092:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1085 0
	mov	r4, #212
	mov	r0, #172
.LVL1093:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1094:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1086 0
	mov	r4, #213
	mov	r0, #174
.LVL1095:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1096:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1087 0
	mov	r4, #180
	mov	r0, #180
.LVL1097:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1098:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1088 0
	mov	r4, #181
	mov	r0, #182
.LVL1099:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1100:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1089 0
	mov	r4, #232
	mov	r0, #184
.LVL1101:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1102:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1090 0
	mov	r4, #234
	mov	r0, #186
.LVL1103:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1104:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1091 0
	mov	r4, #244
	mov	r0, #188
.LVL1105:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1106:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1092 0
	mov	r4, #245
	mov	r0, #190
.LVL1107:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1108:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1093 0
	mov	r4, #140
	mov	r0, #196
.LVL1109:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1110:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1094 0
	mov	r4, #141
	mov	r0, #198
.LVL1111:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1112:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1095 0
	mov	r4, #204
	mov	r0, #204
.LVL1113:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1114:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1096 0
	mov	r4, #205
	mov	r0, #206
.LVL1115:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1116:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1097 0
	mov	r4, #172
	mov	r0, #212
.LVL1117:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1118:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1098 0
	mov	r4, #173
	mov	r0, #214
.LVL1119:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1120:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1099 0
	mov	r4, #236
	mov	r0, #220
.LVL1121:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1122:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1100 0
	mov	r4, #237
	mov	r0, #222
.LVL1123:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1124:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1101 0
	mov	r4, #156
	mov	r0, #228
.LVL1125:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1126:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1102 0
	mov	r4, #157
	mov	r0, #230
.LVL1127:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1128:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1103 0
	mov	r4, #220
	mov	r0, #236
.LVL1129:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1130:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1104 0
	mov	r4, #221
	mov	r0, #238
.LVL1131:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1132:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1105 0
	mov	r4, #188
	mov	r0, #244
.LVL1133:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1134:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1106 0
	mov	r4, #189
	mov	r0, #246
.LVL1135:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1136:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1107 0
	mov	r4, #252
	mov	r0, #252
.LVL1137:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1138:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1108 0
	mov	r4, #253
	mov	r0, #254
.LVL1139:
	lsl	r0, r0, #1
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1140:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1109 0
	mov	r4, #194
	mov	r0, #134
.LVL1141:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1142:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1110 0
	mov	r4, #195
	mov	r0, #135
.LVL1143:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1144:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1111 0
	mov	r4, #162
	mov	r0, #138
.LVL1145:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1146:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1112 0
	mov	r4, #163
	mov	r0, #139
.LVL1147:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1148:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1113 0
	mov	r4, #226
	mov	r0, #142
.LVL1149:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1150:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1114 0
	mov	r4, #227
	mov	r0, #143
.LVL1151:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1152:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1115 0
	mov	r4, #210
	mov	r0, #150
.LVL1153:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1154:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1116 0
	mov	r4, #211
	mov	r0, #151
.LVL1155:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1156:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1117 0
	mov	r4, #178
	mov	r0, #154
.LVL1157:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1158:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1118 0
	mov	r4, #179
	mov	r0, #155
.LVL1159:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1160:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1119 0
	mov	r4, #242
	mov	r0, #158
.LVL1161:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1162:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1120 0
	mov	r4, #243
	mov	r0, #159
.LVL1163:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1164:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1121 0
	mov	r4, #202
	mov	r0, #166
.LVL1165:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1166:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1122 0
	mov	r4, #203
	mov	r0, #167
.LVL1167:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1168:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1123 0
	mov	r4, #234
	mov	r0, #174
.LVL1169:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1170:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1124 0
	mov	r4, #235
	mov	r0, #175
.LVL1171:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1172:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1125 0
	mov	r4, #218
	mov	r0, #182
.LVL1173:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1174:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1126 0
	mov	r4, #219
	mov	r0, #183
.LVL1175:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1176:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1127 0
	mov	r4, #250
	mov	r0, #190
.LVL1177:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1178:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1128 0
	mov	r4, #251
	mov	r0, #191
.LVL1179:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1180:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1129 0
	mov	r4, #230
	mov	r0, #206
.LVL1181:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1182:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1130 0
	mov	r4, #231
	mov	r0, #207
.LVL1183:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1184:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1131 0
	mov	r4, #246
	mov	r0, #222
.LVL1185:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1186:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1132 0
	mov	r4, #247
	mov	r0, #223
.LVL1187:
	lsl	r0, r0, #2
	lsl	r4, r4, #2
	add	r3, r1, r0
	add	r1, r1, r4
.LVL1188:
	ldr	r2, [r3]
.LVL1189:
	ldr	r0, [r1]
	str	r0, [r3]
	str	r2, [r1]
	.loc 1 1133 0
	bl	.L115	@ far jump
.LVL1190:
.L117:
	.loc 1 1135 0
	add	r3, r1, #1
	add	r3, r3, #255
	ldr	r0, [r3]
.LVL1191:
	ldr	r2, [r1, #8]
.LVL1192:
	.loc 1 1140 0
	mov	r4, #194
	.loc 1 1135 0
	str	r0, [r1, #8]
	str	r2, [r3]
	.loc 1 1136 0
	add	r3, r1, #5
	add	r3, r3, #255
	ldr	r0, [r3]
	ldr	r2, [r1, #12]
.LVL1193:
	.loc 1 1140 0
	lsl	r4, r4, #1
	.loc 1 1136 0
	str	r0, [r1, #12]
	str	r2, [r3]
	.loc 1 1137 0
	sub	r3, r3, #132
	ldr	r0, [r3]
	ldr	r2, [r1, #16]
.LVL1194:
	str	r0, [r1, #16]
	str	r2, [r3]
	.loc 1 1138 0
	add	r3, r3, #4
	ldr	r0, [r3]
	ldr	r2, [r1, #20]
.LVL1195:
	str	r0, [r1, #20]
	.loc 1 1139 0
	mov	r0, #192
	lsl	r0, r0, #1
	.loc 1 1138 0
	str	r2, [r3]
	.loc 1 1139 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #24]
.LVL1196:
	str	r0, [r1, #24]
	str	r2, [r3]
	.loc 1 1140 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #28]
.LVL1197:
	.loc 1 1144 0
	sub	r4, r4, #64
	.loc 1 1140 0
	str	r0, [r1, #28]
	str	r2, [r3]
	.loc 1 1141 0
	ldr	r3, [r1, #32]
.LVL1198:
	ldr	r2, [r1, #64]
	.loc 1 1143 0
	mov	r0, #160
	.loc 1 1141 0
	str	r3, [r1, #64]
	str	r2, [r1, #32]
	.loc 1 1142 0
	ldr	r3, [r1, #36]
.LVL1199:
	ldr	r2, [r1, #68]
	.loc 1 1143 0
	lsl	r0, r0, #1
	.loc 1 1142 0
	str	r3, [r1, #68]
	str	r2, [r1, #36]
	.loc 1 1143 0
	add	r3, r1, r0
.LVL1200:
	ldr	r2, [r1, #40]
.LVL1201:
	ldr	r0, [r3]
	str	r0, [r1, #40]
	str	r2, [r3]
	.loc 1 1144 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #44]
.LVL1202:
	.loc 1 1148 0
	add	r4, r4, #128
	.loc 1 1144 0
	str	r0, [r1, #44]
	str	r2, [r3]
	.loc 1 1145 0
	sub	r3, r3, #132
	ldr	r0, [r3]
	ldr	r2, [r1, #48]
.LVL1203:
	str	r0, [r1, #48]
	str	r2, [r3]
	.loc 1 1146 0
	add	r3, r3, #4
	ldr	r0, [r3]
	ldr	r2, [r1, #52]
.LVL1204:
	str	r0, [r1, #52]
	.loc 1 1147 0
	mov	r0, #224
	lsl	r0, r0, #1
	.loc 1 1146 0
	str	r2, [r3]
	.loc 1 1147 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #56]
.LVL1205:
	str	r0, [r1, #56]
	str	r2, [r3]
	.loc 1 1148 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #60]
.LVL1206:
	.loc 1 1150 0
	sub	r4, r4, #160
	.loc 1 1148 0
	str	r0, [r1, #60]
	.loc 1 1149 0
	mov	r0, #144
	lsl	r0, r0, #1
	.loc 1 1148 0
	str	r2, [r3]
	.loc 1 1149 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #72]
.LVL1207:
	str	r0, [r1, #72]
	str	r2, [r3]
	.loc 1 1150 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #76]
.LVL1208:
	.loc 1 1154 0
	add	r4, r4, #128
	.loc 1 1150 0
	str	r0, [r1, #76]
	str	r2, [r3]
	.loc 1 1151 0
	sub	r3, r3, #132
	ldr	r2, [r1, #80]
.LVL1209:
	ldr	r0, [r3]
	str	r0, [r1, #80]
	str	r2, [r3]
	.loc 1 1152 0
	add	r3, r3, #4
	ldr	r0, [r3]
	ldr	r2, [r1, #84]
.LVL1210:
	str	r0, [r1, #84]
	.loc 1 1153 0
	mov	r0, #208
	lsl	r0, r0, #1
	.loc 1 1152 0
	str	r2, [r3]
	.loc 1 1153 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #88]
.LVL1211:
	str	r0, [r1, #88]
	str	r2, [r3]
	.loc 1 1154 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #92]
.LVL1212:
	.loc 1 1156 0
	sub	r4, r4, #64
	.loc 1 1154 0
	str	r0, [r1, #92]
	.loc 1 1155 0
	mov	r0, #176
	lsl	r0, r0, #1
	.loc 1 1154 0
	str	r2, [r3]
	.loc 1 1155 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #104]
.LVL1213:
	str	r0, [r1, #104]
	str	r2, [r3]
	.loc 1 1156 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #108]
.LVL1214:
	.loc 1 1160 0
	add	r4, r4, #128
	.loc 1 1156 0
	str	r0, [r1, #108]
	str	r2, [r3]
	.loc 1 1157 0
	sub	r3, r3, #132
	ldr	r0, [r3]
	ldr	r2, [r1, #112]
.LVL1215:
	str	r0, [r1, #112]
	str	r2, [r3]
	.loc 1 1158 0
	add	r3, r3, #4
	ldr	r0, [r3]
	ldr	r2, [r1, #116]
.LVL1216:
	str	r0, [r1, #116]
	.loc 1 1159 0
	mov	r0, #240
	lsl	r0, r0, #1
	.loc 1 1158 0
	str	r2, [r3]
	.loc 1 1159 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #120]
.LVL1217:
	str	r0, [r1, #120]
	str	r2, [r3]
	.loc 1 1160 0
	add	r3, r1, r4
	ldr	r2, [r1, #124]
.LVL1218:
	ldr	r0, [r3]
	.loc 1 1161 0
	sub	r4, r4, #212
	.loc 1 1160 0
	str	r0, [r1, #124]
	str	r2, [r3]
	.loc 1 1161 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r2, r1
.LVL1219:
	add	r2, r2, #136
	ldr	r0, [r2]
.LVL1220:
	str	r4, [r2]
	.loc 1 1162 0
	mov	r4, #138
	lsl	r4, r4, #1
	.loc 1 1161 0
	str	r0, [r3]
	.loc 1 1162 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1221:
	str	r4, [r2]
	.loc 1 1163 0
	mov	r4, #200
	lsl	r4, r4, #1
	.loc 1 1162 0
	str	r0, [r3]
	.loc 1 1163 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #12
	ldr	r0, [r2]
.LVL1222:
	str	r4, [r2]
	.loc 1 1164 0
	mov	r4, #202
	lsl	r4, r4, #1
	.loc 1 1163 0
	str	r0, [r3]
	.loc 1 1164 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1223:
	str	r4, [r2]
	.loc 1 1165 0
	mov	r4, #168
	lsl	r4, r4, #1
	.loc 1 1164 0
	str	r0, [r3]
	.loc 1 1165 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #12
	ldr	r0, [r2]
.LVL1224:
	str	r4, [r2]
	.loc 1 1166 0
	mov	r4, #170
	lsl	r4, r4, #1
	.loc 1 1165 0
	str	r0, [r3]
	.loc 1 1166 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1225:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1167 0
	add	r2, r2, #4
	sub	r3, r3, #132
	ldr	r0, [r2]
.LVL1226:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1168 0
	add	r3, r3, #4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1227:
	str	r4, [r2]
	.loc 1 1169 0
	mov	r4, #232
	lsl	r4, r4, #1
	.loc 1 1168 0
	str	r0, [r3]
	.loc 1 1169 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1228:
	str	r4, [r2]
	.loc 1 1170 0
	mov	r4, #234
	lsl	r4, r4, #1
	.loc 1 1169 0
	str	r0, [r3]
	.loc 1 1170 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1229:
	str	r4, [r2]
	.loc 1 1171 0
	mov	r4, #152
	lsl	r4, r4, #1
	.loc 1 1170 0
	str	r0, [r3]
	.loc 1 1171 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #12
	ldr	r0, [r2]
.LVL1230:
	str	r4, [r2]
	.loc 1 1172 0
	mov	r4, #154
	lsl	r4, r4, #1
	.loc 1 1171 0
	str	r0, [r3]
	.loc 1 1172 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1231:
	str	r4, [r2]
	.loc 1 1173 0
	mov	r4, #216
	lsl	r4, r4, #1
	.loc 1 1172 0
	str	r0, [r3]
	.loc 1 1173 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #12
	ldr	r0, [r2]
.LVL1232:
	str	r4, [r2]
	.loc 1 1174 0
	mov	r4, #218
	lsl	r4, r4, #1
	.loc 1 1173 0
	str	r0, [r3]
	.loc 1 1174 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1233:
	str	r4, [r2]
	.loc 1 1175 0
	mov	r4, #184
	lsl	r4, r4, #1
	.loc 1 1174 0
	str	r0, [r3]
	.loc 1 1175 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #12
	ldr	r0, [r2]
.LVL1234:
	str	r4, [r2]
	.loc 1 1176 0
	mov	r4, #186
	lsl	r4, r4, #1
	.loc 1 1175 0
	str	r0, [r3]
	.loc 1 1176 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1235:
	str	r4, [r2]
	.loc 1 1177 0
	mov	r4, #248
	lsl	r4, r4, #1
	.loc 1 1176 0
	str	r0, [r3]
	.loc 1 1177 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #12
	ldr	r0, [r2]
.LVL1236:
	str	r4, [r2]
	.loc 1 1178 0
	mov	r4, #250
	lsl	r4, r4, #1
	.loc 1 1177 0
	str	r0, [r3]
	.loc 1 1178 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1237:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1179 0
	mov	r4, #196
	mov	r0, #140
.LVL1238:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1239:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1180 0
	mov	r4, #198
	mov	r0, #142
.LVL1240:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1241:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1181 0
	mov	r4, #164
	mov	r0, #148
.LVL1242:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1243:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1182 0
	mov	r4, #166
	mov	r0, #150
.LVL1244:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1245:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1183 0
	mov	r4, #228
	mov	r0, #156
.LVL1246:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1247:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1184 0
	mov	r4, #230
	mov	r0, #158
.LVL1248:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1249:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1185 0
	mov	r4, #212
	mov	r0, #172
.LVL1250:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1251:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1186 0
	mov	r4, #214
	mov	r0, #174
.LVL1252:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1253:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1187 0
	mov	r4, #244
	mov	r0, #188
.LVL1254:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1255:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1188 0
	mov	r4, #246
	mov	r0, #190
.LVL1256:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1257:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1189 0
	mov	r4, #236
	mov	r0, #220
.LVL1258:
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1259:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1190 0
	mov	r0, #222
.LVL1260:
	lsl	r0, r0, #1
	add	r3, r1, r0
	add	r1, r1, #221
.LVL1261:
	add	r1, r1, #255
	ldr	r2, [r3]
.LVL1262:
	ldr	r0, [r1]
	str	r0, [r3]
	str	r2, [r1]
	.loc 1 1191 0
	bl	.L115	@ far jump
.LVL1263:
.L105:
	.loc 1 1233 0
	ldr	r3, [r1, #8]
.LVL1264:
	ldr	r2, [r1, #32]
	str	r3, [r1, #32]
	str	r2, [r1, #8]
	.loc 1 1234 0
	ldr	r3, [r1, #12]
.LVL1265:
	ldr	r2, [r1, #36]
	str	r3, [r1, #36]
	str	r2, [r1, #12]
	.loc 1 1235 0
	ldr	r3, [r1, #24]
.LVL1266:
	ldr	r2, [r1, #48]
	str	r3, [r1, #48]
	str	r2, [r1, #24]
	.loc 1 1236 0
	ldr	r3, [r1, #28]
.LVL1267:
	ldr	r2, [r1, #52]
	str	r3, [r1, #52]
	str	r2, [r1, #28]
	.loc 1 1237 0
	bl	.L115	@ far jump
.LVL1268:
.L110:
	.loc 1 779 0
	mov	r0, #128
.LVL1269:
	lsl	r0, r0, #3
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #8]
.LVL1270:
	.loc 1 780 0
	ldr	r4, .L145
	.loc 1 779 0
	str	r0, [r1, #8]
	str	r2, [r3]
	.loc 1 780 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #12]
.LVL1271:
	.loc 1 782 0
	mov	r4, #129
	.loc 1 780 0
	str	r0, [r1, #12]
	.loc 1 781 0
	mov	r0, #128
	lsl	r0, r0, #2
	.loc 1 780 0
	str	r2, [r3]
	.loc 1 781 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #16]
.LVL1272:
	.loc 1 782 0
	lsl	r4, r4, #2
	.loc 1 781 0
	str	r0, [r1, #16]
	str	r2, [r3]
	.loc 1 782 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #20]
.LVL1273:
	.loc 1 784 0
	ldr	r4, .L145+4
	.loc 1 782 0
	str	r0, [r1, #20]
	.loc 1 783 0
	mov	r0, #192
	lsl	r0, r0, #3
	.loc 1 782 0
	str	r2, [r3]
	.loc 1 783 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #24]
.LVL1274:
	str	r0, [r1, #24]
	str	r2, [r3]
	.loc 1 784 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #28]
.LVL1275:
	.loc 1 788 0
	sub	r4, r4, #1
	.loc 1 784 0
	str	r0, [r1, #28]
	str	r2, [r3]
	.loc 1 785 0
	add	r3, r1, #1
	add	r3, r3, #255
	ldr	r0, [r3]
	ldr	r2, [r1, #32]
.LVL1276:
	.loc 1 788 0
	sub	r4, r4, #255
	.loc 1 785 0
	str	r0, [r1, #32]
	str	r2, [r3]
	.loc 1 786 0
	add	r3, r1, #5
	add	r3, r3, #255
	ldr	r0, [r3]
	ldr	r2, [r1, #36]
.LVL1277:
	str	r0, [r1, #36]
	.loc 1 787 0
	mov	r0, #160
	lsl	r0, r0, #3
	.loc 1 786 0
	str	r2, [r3]
	.loc 1 787 0
	add	r3, r1, r0
	ldr	r2, [r1, #40]
.LVL1278:
	ldr	r0, [r3]
	str	r0, [r1, #40]
	str	r2, [r3]
	.loc 1 788 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #44]
.LVL1279:
	.loc 1 790 0
	mov	r4, #193
	.loc 1 788 0
	str	r0, [r1, #44]
	.loc 1 789 0
	mov	r0, #192
	lsl	r0, r0, #2
	.loc 1 788 0
	str	r2, [r3]
	.loc 1 789 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #48]
.LVL1280:
	.loc 1 790 0
	lsl	r4, r4, #2
	.loc 1 789 0
	str	r0, [r1, #48]
	str	r2, [r3]
	.loc 1 790 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #52]
.LVL1281:
	.loc 1 792 0
	ldr	r4, .L145+8
	.loc 1 790 0
	str	r0, [r1, #52]
	.loc 1 791 0
	mov	r0, #224
	lsl	r0, r0, #3
	.loc 1 790 0
	str	r2, [r3]
	.loc 1 791 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #56]
.LVL1282:
	str	r0, [r1, #56]
	str	r2, [r3]
	.loc 1 792 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #60]
.LVL1283:
	.loc 1 796 0
	ldr	r4, .L145+12
	.loc 1 792 0
	str	r0, [r1, #60]
	str	r2, [r3]
	.loc 1 793 0
	mov	r3, r1
	add	r3, r3, #128
	ldr	r0, [r3]
	ldr	r2, [r1, #64]
.LVL1284:
	str	r0, [r1, #64]
	str	r2, [r3]
	.loc 1 794 0
	add	r3, r3, #4
	ldr	r0, [r3]
	ldr	r2, [r1, #68]
.LVL1285:
	str	r0, [r1, #68]
	.loc 1 795 0
	mov	r0, #144
	lsl	r0, r0, #3
	.loc 1 794 0
	str	r2, [r3]
	.loc 1 795 0
	add	r3, r1, r0
	ldr	r2, [r1, #72]
.LVL1286:
	ldr	r0, [r3]
	str	r0, [r1, #72]
	str	r2, [r3]
	.loc 1 796 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #76]
.LVL1287:
	.loc 1 798 0
	mov	r4, #161
	.loc 1 796 0
	str	r0, [r1, #76]
	.loc 1 797 0
	mov	r0, #160
	lsl	r0, r0, #2
	.loc 1 796 0
	str	r2, [r3]
	.loc 1 797 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #80]
.LVL1288:
	.loc 1 798 0
	lsl	r4, r4, #2
	.loc 1 797 0
	str	r0, [r1, #80]
	str	r2, [r3]
	.loc 1 798 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #84]
.LVL1289:
	.loc 1 800 0
	ldr	r4, .L145+16
	.loc 1 798 0
	str	r0, [r1, #84]
	.loc 1 799 0
	mov	r0, #208
	lsl	r0, r0, #3
	.loc 1 798 0
	str	r2, [r3]
	.loc 1 799 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #88]
.LVL1290:
	str	r0, [r1, #88]
	str	r2, [r3]
	.loc 1 800 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #92]
.LVL1291:
	.loc 1 802 0
	mov	r4, #194
	.loc 1 800 0
	str	r0, [r1, #92]
	.loc 1 801 0
	mov	r0, #192
	lsl	r0, r0, #1
	.loc 1 800 0
	str	r2, [r3]
	.loc 1 801 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #96]
.LVL1292:
	.loc 1 802 0
	lsl	r4, r4, #1
	.loc 1 801 0
	str	r0, [r1, #96]
	str	r2, [r3]
	.loc 1 802 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #100]
.LVL1293:
	.loc 1 804 0
	ldr	r4, .L145+20
	.loc 1 802 0
	str	r0, [r1, #100]
	.loc 1 803 0
	mov	r0, #176
	lsl	r0, r0, #3
	.loc 1 802 0
	str	r2, [r3]
	.loc 1 803 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #104]
.LVL1294:
	str	r0, [r1, #104]
	str	r2, [r3]
	.loc 1 804 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #108]
.LVL1295:
	.loc 1 806 0
	mov	r4, #225
	.loc 1 804 0
	str	r0, [r1, #108]
	.loc 1 805 0
	mov	r0, #224
	lsl	r0, r0, #2
	.loc 1 804 0
	str	r2, [r3]
	.loc 1 805 0
	add	r3, r1, r0
	ldr	r2, [r1, #112]
.LVL1296:
	ldr	r0, [r3]
	.loc 1 806 0
	lsl	r4, r4, #2
	.loc 1 805 0
	str	r0, [r1, #112]
	str	r2, [r3]
	.loc 1 806 0
	add	r3, r1, r4
	ldr	r0, [r3]
	ldr	r2, [r1, #116]
.LVL1297:
	.loc 1 808 0
	ldr	r4, .L145+24
	.loc 1 806 0
	str	r0, [r1, #116]
	.loc 1 807 0
	mov	r0, #240
	lsl	r0, r0, #3
	.loc 1 806 0
	str	r2, [r3]
	.loc 1 807 0
	add	r3, r1, r0
	ldr	r0, [r3]
	ldr	r2, [r1, #120]
.LVL1298:
	str	r0, [r1, #120]
	str	r2, [r3]
	.loc 1 808 0
	add	r3, r1, r4
	ldr	r2, [r1, #124]
.LVL1299:
	ldr	r0, [r3]
	.loc 1 809 0
	mov	r4, #136
	lsl	r4, r4, #3
	.loc 1 808 0
	str	r0, [r1, #124]
	str	r2, [r3]
	.loc 1 809 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r2, r1
.LVL1300:
	add	r2, r2, #136
	ldr	r0, [r2]
.LVL1301:
	str	r4, [r2]
	.loc 1 810 0
	ldr	r4, .L145+28
	.loc 1 809 0
	str	r0, [r3]
	.loc 1 810 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL1302:
	str	r4, [r2]
	.loc 1 811 0
	mov	r4, #144
	lsl	r4, r4, #2
	.loc 1 810 0
	str	r0, [r3]
	.loc 1 811 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1303:
	str	r4, [r2]
	.loc 1 812 0
	mov	r4, #145
	lsl	r4, r4, #2
	.loc 1 811 0
	str	r0, [r3]
	.loc 1 812 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1304:
	str	r4, [r2]
	.loc 1 813 0
	mov	r4, #200
	lsl	r4, r4, #3
	.loc 1 812 0
	str	r0, [r3]
	.loc 1 813 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1305:
	str	r4, [r2]
	.loc 1 814 0
	ldr	r4, .L145+32
	.loc 1 813 0
	str	r0, [r3]
	.loc 1 814 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL1306:
	str	r4, [r2]
	.loc 1 815 0
	mov	r4, #160
	lsl	r4, r4, #1
	.loc 1 814 0
	str	r0, [r3]
	.loc 1 815 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1307:
	str	r4, [r2]
	.loc 1 816 0
	mov	r4, #162
	lsl	r4, r4, #1
	.loc 1 815 0
	str	r0, [r3]
	.loc 1 816 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1308:
	str	r4, [r2]
	.loc 1 817 0
	mov	r4, #168
	lsl	r4, r4, #3
	.loc 1 816 0
	str	r0, [r3]
	.loc 1 817 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1309:
	str	r4, [r2]
	.loc 1 818 0
	ldr	r4, .L145+36
	.loc 1 817 0
	str	r0, [r3]
	.loc 1 818 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL1310:
	str	r4, [r2]
	.loc 1 819 0
	mov	r4, #208
	lsl	r4, r4, #2
	.loc 1 818 0
	str	r0, [r3]
	.loc 1 819 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1311:
	str	r4, [r2]
	.loc 1 820 0
	mov	r4, #209
	lsl	r4, r4, #2
	.loc 1 819 0
	str	r0, [r3]
	.loc 1 820 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1312:
	str	r4, [r2]
	.loc 1 821 0
	mov	r4, #232
	lsl	r4, r4, #3
	.loc 1 820 0
	str	r0, [r3]
	.loc 1 821 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1313:
	str	r4, [r2]
	.loc 1 822 0
	ldr	r4, .L145+40
	.loc 1 821 0
	str	r0, [r3]
	.loc 1 822 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL1314:
	str	r4, [r2]
	.loc 1 823 0
	mov	r4, #152
	lsl	r4, r4, #3
	.loc 1 822 0
	str	r0, [r3]
	.loc 1 823 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #12
	ldr	r0, [r2]
.LVL1315:
	str	r4, [r2]
	.loc 1 824 0
	ldr	r4, .L145+44
	.loc 1 823 0
	str	r0, [r3]
	.loc 1 824 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL1316:
	str	r4, [r2]
	.loc 1 825 0
	mov	r4, #176
	lsl	r4, r4, #2
	.loc 1 824 0
	str	r0, [r3]
	.loc 1 825 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1317:
	str	r4, [r2]
	.loc 1 826 0
	mov	r4, #177
	lsl	r4, r4, #2
	.loc 1 825 0
	str	r0, [r3]
	.loc 1 826 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1318:
	str	r4, [r2]
	.loc 1 827 0
	mov	r4, #216
	lsl	r4, r4, #3
	.loc 1 826 0
	str	r0, [r3]
	.loc 1 827 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1319:
	str	r4, [r2]
	.loc 1 828 0
	ldr	r4, .L145+48
	.loc 1 827 0
	str	r0, [r3]
	.loc 1 828 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL1320:
	str	r4, [r2]
	.loc 1 829 0
	mov	r4, #224
	lsl	r4, r4, #1
	.loc 1 828 0
	str	r0, [r3]
	.loc 1 829 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1321:
	str	r4, [r2]
	.loc 1 830 0
	mov	r4, #226
	lsl	r4, r4, #1
	.loc 1 829 0
	str	r0, [r3]
	.loc 1 830 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1322:
	str	r4, [r2]
	.loc 1 831 0
	mov	r4, #184
	lsl	r4, r4, #3
	.loc 1 830 0
	str	r0, [r3]
	.loc 1 831 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1323:
	str	r4, [r2]
	.loc 1 832 0
	ldr	r4, .L145+52
	.loc 1 831 0
	str	r0, [r3]
	.loc 1 832 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL1324:
	str	r4, [r2]
	.loc 1 833 0
	mov	r4, #240
	lsl	r4, r4, #2
	.loc 1 832 0
	str	r0, [r3]
	.loc 1 833 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1325:
	str	r4, [r2]
	.loc 1 834 0
	mov	r4, #241
	lsl	r4, r4, #2
	.loc 1 833 0
	str	r0, [r3]
	.loc 1 834 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1326:
	str	r4, [r2]
	.loc 1 835 0
	mov	r4, #248
	lsl	r4, r4, #3
	.loc 1 834 0
	str	r0, [r3]
	.loc 1 835 0
	add	r3, r1, r4
	ldr	r4, [r3]
	add	r2, r2, #4
	ldr	r0, [r2]
.LVL1327:
	str	r4, [r2]
	.loc 1 836 0
	ldr	r4, .L145+56
	.loc 1 835 0
	str	r0, [r3]
	.loc 1 836 0
	add	r2, r2, #4
	add	r3, r1, r4
	ldr	r4, [r3]
	ldr	r0, [r2]
.LVL1328:
	str	r4, [r2]
	.loc 1 837 0
	mov	r4, #132
	lsl	r4, r4, #3
	.loc 1 836 0
	str	r0, [r3]
	.loc 1 837 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #132
.LVL1329:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1330:
	str	r4, [r2]
	.loc 1 838 0
	ldr	r4, .L145+60
	.loc 1 837 0
	str	r0, [r3]
	.loc 1 838 0
	mov	r0, #134
.LVL1331:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1332:
	str	r4, [r2]
	.loc 1 839 0
	mov	r4, #136
	lsl	r4, r4, #2
	.loc 1 838 0
	str	r0, [r3]
	.loc 1 839 0
	add	r3, r1, r4
	mov	r0, #136
.LVL1333:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1334:
	str	r4, [r2]
	.loc 1 840 0
	mov	r4, #137
	lsl	r4, r4, #2
	.loc 1 839 0
	str	r0, [r3]
	.loc 1 840 0
	add	r3, r1, r4
	mov	r0, #138
.LVL1335:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1336:
	str	r4, [r2]
	.loc 1 841 0
	mov	r4, #196
	lsl	r4, r4, #3
	.loc 1 840 0
	str	r0, [r3]
	.loc 1 841 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #140
.LVL1337:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1338:
	str	r4, [r2]
	.loc 1 842 0
	ldr	r4, .L145+64
	.loc 1 841 0
	str	r0, [r3]
	.loc 1 842 0
	mov	r0, #142
.LVL1339:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1340:
	str	r4, [r2]
	.loc 1 843 0
	mov	r4, #164
	lsl	r4, r4, #3
	.loc 1 842 0
	str	r0, [r3]
	.loc 1 843 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #148
.LVL1341:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1342:
	str	r4, [r2]
	.loc 1 844 0
	ldr	r4, .L145+68
	.loc 1 843 0
	str	r0, [r3]
	.loc 1 844 0
	mov	r0, #150
.LVL1343:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1344:
	str	r4, [r2]
	.loc 1 845 0
	mov	r4, #200
	lsl	r4, r4, #2
	.loc 1 844 0
	str	r0, [r3]
	.loc 1 845 0
	add	r3, r1, r4
	mov	r0, #152
.LVL1345:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1346:
	str	r4, [r2]
	.loc 1 846 0
	mov	r4, #201
	lsl	r4, r4, #2
	.loc 1 845 0
	str	r0, [r3]
	.loc 1 846 0
	add	r3, r1, r4
	mov	r0, #154
.LVL1347:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1348:
	str	r4, [r2]
	.loc 1 847 0
	mov	r4, #228
	lsl	r4, r4, #3
	.loc 1 846 0
	str	r0, [r3]
	b	.L146
.L147:
	.align	2
.L145:
	.word	1028
	.word	1540
	.word	1796
	.word	1156
	.word	1668
	.word	1412
	.word	1924
	.word	1092
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
.L146:
	.loc 1 847 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #156
.LVL1349:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1350:
	str	r4, [r2]
	.loc 1 848 0
	ldr	r4, .L148
	.loc 1 847 0
	str	r0, [r3]
	.loc 1 848 0
	mov	r0, #158
.LVL1351:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1352:
	str	r4, [r2]
	.loc 1 849 0
	mov	r4, #148
	lsl	r4, r4, #3
	.loc 1 848 0
	str	r0, [r3]
	.loc 1 849 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #164
.LVL1353:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1354:
	str	r4, [r2]
	.loc 1 850 0
	ldr	r4, .L148+4
	.loc 1 849 0
	str	r0, [r3]
	.loc 1 850 0
	mov	r0, #166
.LVL1355:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1356:
	str	r4, [r2]
	.loc 1 851 0
	mov	r4, #168
	lsl	r4, r4, #2
	.loc 1 850 0
	str	r0, [r3]
	.loc 1 851 0
	add	r3, r1, r4
	mov	r0, #168
.LVL1357:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1358:
	str	r4, [r2]
	.loc 1 852 0
	mov	r4, #169
	lsl	r4, r4, #2
	.loc 1 851 0
	str	r0, [r3]
	.loc 1 852 0
	add	r3, r1, r4
	mov	r0, #170
.LVL1359:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1360:
	str	r4, [r2]
	.loc 1 853 0
	mov	r4, #212
	lsl	r4, r4, #3
	.loc 1 852 0
	str	r0, [r3]
	.loc 1 853 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #172
.LVL1361:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1362:
	str	r4, [r2]
	.loc 1 854 0
	ldr	r4, .L148+8
	.loc 1 853 0
	str	r0, [r3]
	.loc 1 854 0
	mov	r0, #174
.LVL1363:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1364:
	str	r4, [r2]
	.loc 1 855 0
	mov	r4, #208
	lsl	r4, r4, #1
	.loc 1 854 0
	str	r0, [r3]
	.loc 1 855 0
	add	r3, r1, r4
	mov	r0, #176
.LVL1365:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1366:
	str	r4, [r2]
	.loc 1 856 0
	mov	r4, #210
	lsl	r4, r4, #1
	.loc 1 855 0
	str	r0, [r3]
	.loc 1 856 0
	add	r3, r1, r4
	mov	r0, #178
.LVL1367:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1368:
	str	r4, [r2]
	.loc 1 857 0
	mov	r4, #180
	lsl	r4, r4, #3
	.loc 1 856 0
	str	r0, [r3]
	.loc 1 857 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #180
.LVL1369:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1370:
	str	r4, [r2]
	.loc 1 858 0
	ldr	r4, .L148+12
	.loc 1 857 0
	str	r0, [r3]
	.loc 1 858 0
	mov	r0, #182
.LVL1371:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1372:
	str	r4, [r2]
	.loc 1 859 0
	mov	r4, #232
	lsl	r4, r4, #2
	.loc 1 858 0
	str	r0, [r3]
	.loc 1 859 0
	add	r3, r1, r4
	mov	r0, #184
.LVL1373:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1374:
	str	r4, [r2]
	.loc 1 860 0
	mov	r4, #233
	lsl	r4, r4, #2
	.loc 1 859 0
	str	r0, [r3]
	.loc 1 860 0
	add	r3, r1, r4
	mov	r0, #186
.LVL1375:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1376:
	str	r4, [r2]
	.loc 1 861 0
	mov	r4, #244
	lsl	r4, r4, #3
	.loc 1 860 0
	str	r0, [r3]
	.loc 1 861 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #188
.LVL1377:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1378:
	str	r4, [r2]
	.loc 1 862 0
	ldr	r4, .L148+16
	.loc 1 861 0
	str	r0, [r3]
	.loc 1 862 0
	mov	r0, #190
.LVL1379:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1380:
	str	r4, [r2]
	.loc 1 863 0
	mov	r4, #140
	lsl	r4, r4, #3
	.loc 1 862 0
	str	r0, [r3]
	.loc 1 863 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #196
.LVL1381:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1382:
	str	r4, [r2]
	.loc 1 864 0
	ldr	r4, .L148+20
	.loc 1 863 0
	str	r0, [r3]
	.loc 1 864 0
	mov	r0, #198
.LVL1383:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1384:
	str	r4, [r2]
	.loc 1 865 0
	mov	r4, #152
	lsl	r4, r4, #2
	.loc 1 864 0
	str	r0, [r3]
	.loc 1 865 0
	add	r3, r1, r4
	mov	r0, #200
.LVL1385:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1386:
	str	r4, [r2]
	.loc 1 866 0
	mov	r4, #153
	lsl	r4, r4, #2
	.loc 1 865 0
	str	r0, [r3]
	.loc 1 866 0
	add	r3, r1, r4
	mov	r0, #202
.LVL1387:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1388:
	str	r4, [r2]
	.loc 1 867 0
	mov	r4, #204
	lsl	r4, r4, #3
	.loc 1 866 0
	str	r0, [r3]
	.loc 1 867 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #204
.LVL1389:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1390:
	str	r4, [r2]
	.loc 1 868 0
	ldr	r4, .L148+24
	.loc 1 867 0
	str	r0, [r3]
	.loc 1 868 0
	mov	r0, #206
.LVL1391:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1392:
	str	r4, [r2]
	.loc 1 869 0
	mov	r4, #172
	lsl	r4, r4, #3
	.loc 1 868 0
	str	r0, [r3]
	.loc 1 869 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #212
.LVL1393:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1394:
	str	r4, [r2]
	.loc 1 870 0
	ldr	r4, .L148+28
	.loc 1 869 0
	str	r0, [r3]
	.loc 1 870 0
	mov	r0, #214
.LVL1395:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1396:
	str	r4, [r2]
	.loc 1 871 0
	mov	r4, #216
	lsl	r4, r4, #2
	.loc 1 870 0
	str	r0, [r3]
	.loc 1 871 0
	add	r3, r1, r4
	mov	r0, #216
.LVL1397:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1398:
	str	r4, [r2]
	.loc 1 872 0
	mov	r4, #217
	lsl	r4, r4, #2
	.loc 1 871 0
	str	r0, [r3]
	.loc 1 872 0
	add	r3, r1, r4
	mov	r0, #218
.LVL1399:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1400:
	str	r4, [r2]
	.loc 1 873 0
	mov	r4, #236
	lsl	r4, r4, #3
	.loc 1 872 0
	str	r0, [r3]
	.loc 1 873 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #220
.LVL1401:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1402:
	str	r4, [r2]
	.loc 1 874 0
	ldr	r4, .L148+32
	.loc 1 873 0
	str	r0, [r3]
	.loc 1 874 0
	mov	r0, #222
.LVL1403:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1404:
	str	r4, [r2]
	.loc 1 875 0
	mov	r4, #156
	lsl	r4, r4, #3
	.loc 1 874 0
	str	r0, [r3]
	.loc 1 875 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #228
.LVL1405:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1406:
	str	r4, [r2]
	.loc 1 876 0
	ldr	r4, .L148+36
	.loc 1 875 0
	str	r0, [r3]
	.loc 1 876 0
	mov	r0, #230
.LVL1407:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1408:
	str	r4, [r2]
	.loc 1 877 0
	mov	r4, #184
	lsl	r4, r4, #2
	.loc 1 876 0
	str	r0, [r3]
	.loc 1 877 0
	add	r3, r1, r4
	mov	r0, #232
.LVL1409:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1410:
	str	r4, [r2]
	.loc 1 878 0
	mov	r4, #185
	lsl	r4, r4, #2
	.loc 1 877 0
	str	r0, [r3]
	.loc 1 878 0
	add	r3, r1, r4
	mov	r0, #234
.LVL1411:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1412:
	str	r4, [r2]
	.loc 1 879 0
	mov	r4, #220
	lsl	r4, r4, #3
	.loc 1 878 0
	str	r0, [r3]
	.loc 1 879 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #236
.LVL1413:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1414:
	str	r4, [r2]
	.loc 1 880 0
	ldr	r4, .L148+40
	.loc 1 879 0
	str	r0, [r3]
	.loc 1 880 0
	mov	r0, #238
.LVL1415:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1416:
	str	r4, [r2]
	.loc 1 881 0
	mov	r4, #188
	lsl	r4, r4, #3
	.loc 1 880 0
	str	r0, [r3]
	.loc 1 881 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #244
.LVL1417:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1418:
	str	r4, [r2]
	.loc 1 882 0
	ldr	r4, .L148+44
	.loc 1 881 0
	str	r0, [r3]
	.loc 1 882 0
	mov	r0, #246
.LVL1419:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1420:
	str	r4, [r2]
	.loc 1 883 0
	mov	r4, #248
	lsl	r4, r4, #2
	.loc 1 882 0
	str	r0, [r3]
	.loc 1 883 0
	add	r3, r1, r4
	mov	r0, #248
.LVL1421:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1422:
	str	r4, [r2]
	.loc 1 884 0
	mov	r4, #249
	lsl	r4, r4, #2
	.loc 1 883 0
	str	r0, [r3]
	.loc 1 884 0
	add	r3, r1, r4
	mov	r0, #250
.LVL1423:
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1424:
	str	r4, [r2]
	.loc 1 885 0
	mov	r4, #252
	lsl	r4, r4, #3
	.loc 1 884 0
	str	r0, [r3]
	.loc 1 885 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #252
.LVL1425:
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1426:
	str	r4, [r2]
	.loc 1 886 0
	ldr	r4, .L148+48
	.loc 1 885 0
	str	r0, [r3]
	.loc 1 886 0
	mov	r0, #254
.LVL1427:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #1
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1428:
	str	r4, [r2]
	.loc 1 887 0
	mov	r4, #130
	lsl	r4, r4, #3
	.loc 1 886 0
	str	r0, [r3]
	.loc 1 887 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #130
.LVL1429:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1430:
	str	r4, [r2]
	.loc 1 888 0
	ldr	r4, .L148+52
	.loc 1 887 0
	str	r0, [r3]
	.loc 1 888 0
	mov	r0, #131
.LVL1431:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1432:
	str	r4, [r2]
	.loc 1 889 0
	mov	r4, #194
	lsl	r4, r4, #3
	.loc 1 888 0
	str	r0, [r3]
	.loc 1 889 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #134
.LVL1433:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1434:
	str	r4, [r2]
	.loc 1 890 0
	ldr	r4, .L148+56
	.loc 1 889 0
	str	r0, [r3]
	.loc 1 890 0
	mov	r0, #135
.LVL1435:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1436:
	str	r4, [r2]
	.loc 1 891 0
	mov	r4, #162
	lsl	r4, r4, #3
	.loc 1 890 0
	str	r0, [r3]
	.loc 1 891 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #138
.LVL1437:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1438:
	str	r4, [r2]
	.loc 1 892 0
	ldr	r4, .L148+60
	.loc 1 891 0
	str	r0, [r3]
	.loc 1 892 0
	mov	r0, #139
.LVL1439:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1440:
	str	r4, [r2]
	.loc 1 893 0
	mov	r4, #196
	lsl	r4, r4, #2
	.loc 1 892 0
	str	r0, [r3]
	.loc 1 893 0
	add	r3, r1, r4
	mov	r0, #140
.LVL1441:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1442:
	str	r4, [r2]
	.loc 1 894 0
	mov	r4, #197
	lsl	r4, r4, #2
	.loc 1 893 0
	str	r0, [r3]
	.loc 1 894 0
	add	r3, r1, r4
	mov	r0, #141
.LVL1443:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1444:
	str	r4, [r2]
	.loc 1 895 0
	mov	r4, #226
	lsl	r4, r4, #3
	.loc 1 894 0
	str	r0, [r3]
	.loc 1 895 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #142
.LVL1445:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1446:
	str	r4, [r2]
	.loc 1 896 0
	ldr	r4, .L148+64
	.loc 1 895 0
	str	r0, [r3]
	.loc 1 896 0
	mov	r0, #143
.LVL1447:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1448:
	str	r4, [r2]
	.loc 1 897 0
	mov	r4, #146
	lsl	r4, r4, #3
	.loc 1 896 0
	str	r0, [r3]
	.loc 1 897 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #146
.LVL1449:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1450:
	str	r4, [r2]
	.loc 1 898 0
	ldr	r4, .L148+68
	.loc 1 897 0
	str	r0, [r3]
	.loc 1 898 0
	mov	r0, #147
.LVL1451:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1452:
	str	r4, [r2]
	.loc 1 899 0
	mov	r4, #164
	lsl	r4, r4, #2
	.loc 1 898 0
	str	r0, [r3]
	.loc 1 899 0
	add	r3, r1, r4
	mov	r0, #148
.LVL1453:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1454:
	str	r4, [r2]
	.loc 1 900 0
	mov	r4, #165
	lsl	r4, r4, #2
	.loc 1 899 0
	str	r0, [r3]
	.loc 1 900 0
	add	r3, r1, r4
	mov	r0, #149
.LVL1455:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	b	.L149
.L150:
	.align	2
.L148:
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
	.word	1764
	.word	1508
	.word	2020
	.word	1044
	.word	1556
	.word	1300
	.word	1812
	.word	1172
.L149:
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1456:
	str	r4, [r2]
	.loc 1 901 0
	mov	r4, #210
	lsl	r4, r4, #3
	.loc 1 900 0
	str	r0, [r3]
	.loc 1 901 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #150
.LVL1457:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1458:
	str	r4, [r2]
	.loc 1 902 0
	ldr	r4, .L151
	.loc 1 901 0
	str	r0, [r3]
	.loc 1 902 0
	mov	r0, #151
.LVL1459:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1460:
	str	r4, [r2]
	.loc 1 903 0
	mov	r4, #178
	lsl	r4, r4, #3
	.loc 1 902 0
	str	r0, [r3]
	.loc 1 903 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #154
.LVL1461:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1462:
	str	r4, [r2]
	.loc 1 904 0
	ldr	r4, .L151+4
	.loc 1 903 0
	str	r0, [r3]
	.loc 1 904 0
	mov	r0, #155
.LVL1463:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1464:
	str	r4, [r2]
	.loc 1 905 0
	mov	r4, #228
	lsl	r4, r4, #2
	.loc 1 904 0
	str	r0, [r3]
	.loc 1 905 0
	add	r3, r1, r4
	mov	r0, #156
.LVL1465:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1466:
	str	r4, [r2]
	.loc 1 906 0
	mov	r4, #229
	lsl	r4, r4, #2
	.loc 1 905 0
	str	r0, [r3]
	.loc 1 906 0
	add	r3, r1, r4
	mov	r0, #157
.LVL1467:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1468:
	str	r4, [r2]
	.loc 1 907 0
	mov	r4, #242
	lsl	r4, r4, #3
	.loc 1 906 0
	str	r0, [r3]
	.loc 1 907 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #158
.LVL1469:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1470:
	str	r4, [r2]
	.loc 1 908 0
	ldr	r4, .L151+8
	.loc 1 907 0
	str	r0, [r3]
	.loc 1 908 0
	mov	r0, #159
.LVL1471:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1472:
	str	r4, [r2]
	.loc 1 909 0
	mov	r4, #138
	lsl	r4, r4, #3
	.loc 1 908 0
	str	r0, [r3]
	.loc 1 909 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #162
.LVL1473:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1474:
	str	r4, [r2]
	.loc 1 910 0
	ldr	r4, .L151+12
	.loc 1 909 0
	str	r0, [r3]
	.loc 1 910 0
	mov	r0, #163
.LVL1475:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1476:
	str	r4, [r2]
	.loc 1 911 0
	mov	r4, #202
	lsl	r4, r4, #3
	.loc 1 910 0
	str	r0, [r3]
	.loc 1 911 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #166
.LVL1477:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1478:
	str	r4, [r2]
	.loc 1 912 0
	ldr	r4, .L151+16
	.loc 1 911 0
	str	r0, [r3]
	.loc 1 912 0
	mov	r0, #167
.LVL1479:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1480:
	str	r4, [r2]
	.loc 1 913 0
	mov	r4, #170
	lsl	r4, r4, #3
	.loc 1 912 0
	str	r0, [r3]
	.loc 1 913 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #170
.LVL1481:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1482:
	str	r4, [r2]
	.loc 1 914 0
	ldr	r4, .L151+20
	.loc 1 913 0
	str	r0, [r3]
	.loc 1 914 0
	mov	r0, #171
.LVL1483:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1484:
	str	r4, [r2]
	.loc 1 915 0
	mov	r4, #212
	lsl	r4, r4, #2
	.loc 1 914 0
	str	r0, [r3]
	.loc 1 915 0
	add	r3, r1, r4
	mov	r0, #172
.LVL1485:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1486:
	str	r4, [r2]
	.loc 1 916 0
	mov	r4, #213
	lsl	r4, r4, #2
	.loc 1 915 0
	str	r0, [r3]
	.loc 1 916 0
	add	r3, r1, r4
	mov	r0, #173
.LVL1487:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1488:
	str	r4, [r2]
	.loc 1 917 0
	mov	r4, #234
	lsl	r4, r4, #3
	.loc 1 916 0
	str	r0, [r3]
	.loc 1 917 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #174
.LVL1489:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1490:
	str	r4, [r2]
	.loc 1 918 0
	ldr	r4, .L151+24
	.loc 1 917 0
	str	r0, [r3]
	.loc 1 918 0
	mov	r0, #175
.LVL1491:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1492:
	str	r4, [r2]
	.loc 1 919 0
	mov	r4, #154
	lsl	r4, r4, #3
	.loc 1 918 0
	str	r0, [r3]
	.loc 1 919 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #178
.LVL1493:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1494:
	str	r4, [r2]
	.loc 1 920 0
	ldr	r4, .L151+28
	.loc 1 919 0
	str	r0, [r3]
	.loc 1 920 0
	mov	r0, #179
.LVL1495:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1496:
	str	r4, [r2]
	.loc 1 921 0
	mov	r4, #218
	lsl	r4, r4, #3
	.loc 1 920 0
	str	r0, [r3]
	.loc 1 921 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #182
.LVL1497:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1498:
	str	r4, [r2]
	.loc 1 922 0
	ldr	r4, .L151+32
	.loc 1 921 0
	str	r0, [r3]
	.loc 1 922 0
	mov	r0, #183
.LVL1499:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1500:
	str	r4, [r2]
	.loc 1 923 0
	mov	r4, #186
	lsl	r4, r4, #3
	.loc 1 922 0
	str	r0, [r3]
	.loc 1 923 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #186
.LVL1501:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1502:
	str	r4, [r2]
	.loc 1 924 0
	ldr	r4, .L151+36
	.loc 1 923 0
	str	r0, [r3]
	.loc 1 924 0
	mov	r0, #187
.LVL1503:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1504:
	str	r4, [r2]
	.loc 1 925 0
	mov	r4, #244
	lsl	r4, r4, #2
	.loc 1 924 0
	str	r0, [r3]
	.loc 1 925 0
	add	r3, r1, r4
	mov	r0, #188
.LVL1505:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1506:
	str	r4, [r2]
	.loc 1 926 0
	mov	r4, #245
	lsl	r4, r4, #2
	.loc 1 925 0
	str	r0, [r3]
	.loc 1 926 0
	add	r3, r1, r4
	mov	r0, #189
.LVL1507:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1508:
	str	r4, [r2]
	.loc 1 927 0
	mov	r4, #250
	lsl	r4, r4, #3
	.loc 1 926 0
	str	r0, [r3]
	.loc 1 927 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #190
.LVL1509:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1510:
	str	r4, [r2]
	.loc 1 928 0
	ldr	r4, .L151+40
	.loc 1 927 0
	str	r0, [r3]
	.loc 1 928 0
	mov	r0, #191
.LVL1511:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1512:
	str	r4, [r2]
	.loc 1 929 0
	mov	r4, #134
	lsl	r4, r4, #3
	.loc 1 928 0
	str	r0, [r3]
	.loc 1 929 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #194
.LVL1513:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1514:
	str	r4, [r2]
	.loc 1 930 0
	ldr	r4, .L151+44
	.loc 1 929 0
	str	r0, [r3]
	.loc 1 930 0
	mov	r0, #195
.LVL1515:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1516:
	str	r4, [r2]
	.loc 1 931 0
	mov	r4, #198
	lsl	r4, r4, #3
	.loc 1 930 0
	str	r0, [r3]
	.loc 1 931 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #198
.LVL1517:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1518:
	str	r4, [r2]
	.loc 1 932 0
	ldr	r4, .L151+48
	.loc 1 931 0
	str	r0, [r3]
	.loc 1 932 0
	mov	r0, #199
.LVL1519:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1520:
	str	r4, [r2]
	.loc 1 933 0
	mov	r4, #166
	lsl	r4, r4, #3
	.loc 1 932 0
	str	r0, [r3]
	.loc 1 933 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #202
.LVL1521:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1522:
	str	r4, [r2]
	.loc 1 934 0
	ldr	r4, .L151+52
	.loc 1 933 0
	str	r0, [r3]
	.loc 1 934 0
	mov	r0, #203
.LVL1523:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1524:
	str	r4, [r2]
	.loc 1 935 0
	mov	r4, #230
	lsl	r4, r4, #3
	.loc 1 934 0
	str	r0, [r3]
	.loc 1 935 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #206
.LVL1525:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1526:
	str	r4, [r2]
	.loc 1 936 0
	ldr	r4, .L151+56
	.loc 1 935 0
	str	r0, [r3]
	.loc 1 936 0
	mov	r0, #207
.LVL1527:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1528:
	str	r4, [r2]
	.loc 1 937 0
	mov	r4, #150
	lsl	r4, r4, #3
	.loc 1 936 0
	str	r0, [r3]
	.loc 1 937 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #210
.LVL1529:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1530:
	str	r4, [r2]
	.loc 1 938 0
	ldr	r4, .L151+60
	.loc 1 937 0
	str	r0, [r3]
	.loc 1 938 0
	mov	r0, #211
.LVL1531:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1532:
	str	r4, [r2]
	.loc 1 939 0
	mov	r4, #214
	lsl	r4, r4, #3
	.loc 1 938 0
	str	r0, [r3]
	.loc 1 939 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #214
.LVL1533:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1534:
	str	r4, [r2]
	.loc 1 940 0
	ldr	r4, .L151+64
	.loc 1 939 0
	str	r0, [r3]
	.loc 1 940 0
	mov	r0, #215
.LVL1535:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1536:
	str	r4, [r2]
	.loc 1 941 0
	mov	r4, #182
	lsl	r4, r4, #3
	.loc 1 940 0
	str	r0, [r3]
	.loc 1 941 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #218
.LVL1537:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1538:
	str	r4, [r2]
	.loc 1 942 0
	ldr	r4, .L151+68
	.loc 1 941 0
	str	r0, [r3]
	.loc 1 942 0
	mov	r0, #219
.LVL1539:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1540:
	str	r4, [r2]
	.loc 1 943 0
	mov	r4, #236
	lsl	r4, r4, #2
	.loc 1 942 0
	str	r0, [r3]
	.loc 1 943 0
	add	r3, r1, r4
	mov	r0, #220
.LVL1541:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1542:
	str	r4, [r2]
	.loc 1 944 0
	mov	r4, #237
	lsl	r4, r4, #2
	.loc 1 943 0
	str	r0, [r3]
	.loc 1 944 0
	add	r3, r1, r4
	mov	r0, #221
.LVL1543:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1544:
	str	r4, [r2]
	.loc 1 945 0
	mov	r4, #246
	lsl	r4, r4, #3
	.loc 1 944 0
	str	r0, [r3]
	.loc 1 945 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #222
.LVL1545:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1546:
	str	r4, [r2]
	.loc 1 946 0
	ldr	r4, .L151+72
	.loc 1 945 0
	str	r0, [r3]
	.loc 1 946 0
	mov	r0, #223
.LVL1547:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1548:
	str	r4, [r2]
	.loc 1 947 0
	mov	r4, #142
	lsl	r4, r4, #3
	.loc 1 946 0
	str	r0, [r3]
	.loc 1 947 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #226
.LVL1549:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1550:
	str	r4, [r2]
	.loc 1 948 0
	ldr	r4, .L151+76
	.loc 1 947 0
	str	r0, [r3]
	.loc 1 948 0
	mov	r0, #227
.LVL1551:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1552:
	str	r4, [r2]
	.loc 1 949 0
	mov	r4, #206
	lsl	r4, r4, #3
	.loc 1 948 0
	str	r0, [r3]
	.loc 1 949 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #230
.LVL1553:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1554:
	str	r4, [r2]
	.loc 1 950 0
	ldr	r4, .L151+80
	.loc 1 949 0
	str	r0, [r3]
	.loc 1 950 0
	mov	r0, #231
.LVL1555:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1556:
	str	r4, [r2]
	.loc 1 951 0
	mov	r4, #174
	lsl	r4, r4, #3
	.loc 1 950 0
	str	r0, [r3]
	.loc 1 951 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #234
.LVL1557:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1558:
	str	r4, [r2]
	.loc 1 952 0
	ldr	r4, .L151+84
	.loc 1 951 0
	str	r0, [r3]
	.loc 1 952 0
	mov	r0, #235
.LVL1559:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1560:
	str	r4, [r2]
	.loc 1 953 0
	mov	r4, #238
	lsl	r4, r4, #3
	.loc 1 952 0
	str	r0, [r3]
	.loc 1 953 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #238
.LVL1561:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1562:
	str	r4, [r2]
	.loc 1 954 0
	ldr	r4, .L151+88
	.loc 1 953 0
	str	r0, [r3]
	.loc 1 954 0
	mov	r0, #239
.LVL1563:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1564:
	str	r4, [r2]
	.loc 1 955 0
	mov	r4, #158
	lsl	r4, r4, #3
	b	.L152
.L153:
	.align	2
.L151:
	.word	1684
	.word	1428
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
	.word	1844
	.word	1204
	.word	1716
	.word	1460
	.word	1972
	.word	1140
	.word	1652
	.word	1396
	.word	1908
.L152:
	.loc 1 954 0
	str	r0, [r3]
	.loc 1 955 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #242
.LVL1565:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1566:
	str	r4, [r2]
	.loc 1 956 0
	ldr	r4, .L154
	.loc 1 955 0
	str	r0, [r3]
	.loc 1 956 0
	mov	r0, #243
.LVL1567:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1568:
	str	r4, [r2]
	.loc 1 957 0
	mov	r4, #222
	lsl	r4, r4, #3
	.loc 1 956 0
	str	r0, [r3]
	.loc 1 957 0
	add	r3, r1, r4
	ldr	r4, [r3]
	mov	r0, #246
.LVL1569:
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1570:
	str	r4, [r2]
	.loc 1 958 0
	ldr	r4, .L154+4
	.loc 1 957 0
	str	r0, [r3]
	.loc 1 958 0
	mov	r0, #247
.LVL1571:
	add	r3, r1, r4
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1572:
	str	r4, [r2]
	.loc 1 959 0
	mov	r4, #190
	lsl	r4, r4, #3
	.loc 1 958 0
	str	r0, [r3]
	.loc 1 959 0
	add	r3, r1, r4
	mov	r0, #250
.LVL1573:
	ldr	r4, [r3]
	lsl	r0, r0, #2
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1574:
	str	r4, [r2]
	.loc 1 960 0
	ldr	r4, .L154+8
	.loc 1 959 0
	str	r0, [r3]
	.loc 1 960 0
	mov	r0, #251
.LVL1575:
	add	r3, r1, r4
	lsl	r0, r0, #2
	ldr	r4, [r3]
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1576:
	str	r4, [r2]
	.loc 1 961 0
	mov	r4, #254
	.loc 1 960 0
	str	r0, [r3]
	.loc 1 961 0
	lsl	r4, r4, #3
	mov	r0, #254
.LVL1577:
	add	r3, r1, r4
	lsl	r0, r0, #2
	ldr	r4, [r3]
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1578:
	str	r4, [r2]
	.loc 1 962 0
	ldr	r4, .L154+12
	.loc 1 961 0
	str	r0, [r3]
	.loc 1 962 0
	mov	r0, #255
.LVL1579:
	lsl	r0, r0, #2
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1580:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 963 0
	mov	r4, #193
	mov	r0, #131
.LVL1581:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1582:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 964 0
	ldr	r4, .L154+16
	ldr	r0, .L154+20
.LVL1583:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1584:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 965 0
	mov	r4, #161
	mov	r0, #133
.LVL1585:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1586:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 966 0
	ldr	r4, .L154+24
	ldr	r0, .L154+28
.LVL1587:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1588:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 967 0
	mov	r4, #225
	mov	r0, #135
.LVL1589:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1590:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 968 0
	ldr	r4, .L154+32
	ldr	r0, .L154+36
.LVL1591:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1592:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 969 0
	mov	r4, #145
	mov	r0, #137
.LVL1593:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1594:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 970 0
	ldr	r4, .L154+40
	ldr	r0, .L154+44
.LVL1595:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1596:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 971 0
	mov	r4, #209
	mov	r0, #139
.LVL1597:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1598:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 972 0
	ldr	r4, .L154+48
	ldr	r0, .L154+52
.LVL1599:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1600:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 973 0
	mov	r4, #177
	mov	r0, #141
.LVL1601:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1602:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 974 0
	ldr	r4, .L154+56
	ldr	r0, .L154+60
.LVL1603:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1604:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 975 0
	mov	r4, #241
	mov	r0, #143
.LVL1605:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1606:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 976 0
	ldr	r4, .L154+64
	ldr	r0, .L154+68
.LVL1607:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1608:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 977 0
	mov	r4, #201
	mov	r0, #147
.LVL1609:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1610:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 978 0
	ldr	r4, .L154+72
	ldr	r0, .L154+76
.LVL1611:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1612:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 979 0
	mov	r4, #169
	mov	r0, #149
.LVL1613:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1614:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 980 0
	ldr	r4, .L154+80
	ldr	r0, .L154+84
.LVL1615:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1616:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 981 0
	mov	r4, #233
	mov	r0, #151
.LVL1617:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1618:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 982 0
	ldr	r4, .L154+88
	ldr	r0, .L154+92
.LVL1619:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1620:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 983 0
	mov	r4, #217
	mov	r0, #155
.LVL1621:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1622:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 984 0
	ldr	r4, .L154+96
	ldr	r0, .L154+100
.LVL1623:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1624:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 985 0
	mov	r4, #185
	mov	r0, #157
.LVL1625:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1626:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 986 0
	ldr	r4, .L154+104
	ldr	r0, .L154+108
.LVL1627:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1628:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 987 0
	mov	r4, #249
	mov	r0, #159
.LVL1629:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1630:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 988 0
	ldr	r4, .L154+112
	ldr	r0, .L154+116
.LVL1631:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1632:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 989 0
	mov	r4, #197
	mov	r0, #163
.LVL1633:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1634:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 990 0
	ldr	r4, .L154+120
	ldr	r0, .L154+124
.LVL1635:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1636:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 991 0
	mov	r4, #229
	mov	r0, #167
.LVL1637:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1638:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 992 0
	ldr	r4, .L154+128
	ldr	r0, .L154+132
.LVL1639:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1640:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 993 0
	mov	r4, #213
	mov	r0, #171
.LVL1641:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1642:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 994 0
	ldr	r4, .L154+136
	ldr	r0, .L154+140
.LVL1643:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1644:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 995 0
	mov	r4, #181
	mov	r0, #173
.LVL1645:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1646:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 996 0
	ldr	r4, .L154+144
	ldr	r0, .L154+148
.LVL1647:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1648:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 997 0
	mov	r4, #245
	mov	r0, #175
.LVL1649:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1650:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 998 0
	ldr	r4, .L154+152
	ldr	r0, .L154+156
.LVL1651:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1652:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 999 0
	mov	r4, #205
	mov	r0, #179
.LVL1653:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1654:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1000 0
	ldr	r4, .L154+160
	ldr	r0, .L154+164
.LVL1655:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1656:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1001 0
	mov	r4, #237
	mov	r0, #183
.LVL1657:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1658:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1002 0
	ldr	r4, .L154+168
	ldr	r0, .L154+172
.LVL1659:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1660:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1003 0
	mov	r4, #221
	mov	r0, #187
.LVL1661:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1662:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1004 0
	ldr	r4, .L154+176
	ldr	r0, .L154+180
.LVL1663:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1664:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1005 0
	mov	r4, #253
	mov	r0, #191
.LVL1665:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1666:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1006 0
	ldr	r4, .L154+184
	ldr	r0, .L154+188
.LVL1667:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1668:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1007 0
	mov	r4, #227
	mov	r0, #199
.LVL1669:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1670:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1008 0
	ldr	r4, .L154+192
	ldr	r0, .L154+196
.LVL1671:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1672:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1009 0
	mov	r4, #211
	mov	r0, #203
.LVL1673:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1674:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1010 0
	ldr	r4, .L154+200
	ldr	r0, .L154+204
.LVL1675:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1676:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1011 0
	mov	r4, #243
	mov	r0, #207
.LVL1677:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1678:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	b	.L155
.L156:
	.align	2
.L154:
	.word	1268
	.word	1780
	.word	1524
	.word	2036
	.word	1548
	.word	1052
	.word	1292
	.word	1068
	.word	1804
	.word	1084
	.word	1164
	.word	1100
	.word	1676
	.word	1116
	.word	1420
	.word	1132
	.word	1932
	.word	1148
	.word	1612
	.word	1180
	.word	1356
	.word	1196
	.word	1868
	.word	1212
	.word	1740
	.word	1244
	.word	1484
	.word	1260
	.word	1996
	.word	1276
	.word	1580
	.word	1308
	.word	1836
	.word	1340
	.word	1708
	.word	1372
	.word	1452
	.word	1388
	.word	1964
	.word	1404
	.word	1644
	.word	1436
	.word	1900
	.word	1468
	.word	1772
	.word	1500
	.word	2028
	.word	1532
	.word	1820
	.word	1596
	.word	1692
	.word	1628
.L155:
	.loc 1 1012 0
	ldr	r4, .L157
	ldr	r0, .L157+4
.LVL1679:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1680:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1013 0
	mov	r4, #235
	mov	r0, #215
.LVL1681:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1682:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1014 0
	ldr	r4, .L157+8
	ldr	r0, .L157+12
.LVL1683:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1684:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1015 0
	mov	r4, #251
	mov	r0, #223
.LVL1685:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1686:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1016 0
	ldr	r4, .L157+16
	ldr	r0, .L157+20
.LVL1687:
	add	r3, r1, r4
	add	r2, r1, r0
	ldr	r0, [r2]
.LVL1688:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1017 0
	mov	r4, #247
	mov	r0, #239
.LVL1689:
	lsl	r0, r0, #3
	lsl	r4, r4, #3
	add	r2, r1, r0
	add	r3, r1, r4
	ldr	r0, [r2]
.LVL1690:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1018 0
	ldr	r4, .L157+24
	ldr	r0, .L157+28
.LVL1691:
	add	r3, r1, r0
	add	r1, r1, r4
.LVL1692:
	ldr	r2, [r3]
.LVL1693:
	ldr	r0, [r1]
	str	r0, [r3]
	str	r2, [r1]
	.loc 1 1019 0
	bl	.L115	@ far jump
.LVL1694:
.L104:
	.loc 1 1239 0
	ldr	r3, [r1, #8]
.LVL1695:
	ldr	r2, [r1, #16]
	str	r3, [r1, #16]
	str	r2, [r1, #8]
	.loc 1 1240 0
	ldr	r3, [r1, #12]
.LVL1696:
	ldr	r2, [r1, #20]
	str	r3, [r1, #20]
	str	r2, [r1, #12]
	.loc 1 1241 0
	bl	.L115	@ far jump
.LVL1697:
.L107:
	.loc 1 1193 0
	mov	r3, r1
	add	r3, r3, #128
	ldr	r0, [r3]
.LVL1698:
	ldr	r2, [r1, #8]
.LVL1699:
	str	r0, [r1, #8]
	str	r2, [r3]
	.loc 1 1194 0
	add	r3, r3, #4
	ldr	r0, [r3]
	ldr	r2, [r1, #12]
.LVL1700:
	str	r0, [r1, #12]
	str	r2, [r3]
	.loc 1 1195 0
	ldr	r3, [r1, #16]
.LVL1701:
	ldr	r2, [r1, #64]
	str	r3, [r1, #64]
	.loc 1 1196 0
	ldr	r3, [r1, #20]
.LVL1702:
	.loc 1 1195 0
	str	r2, [r1, #16]
	.loc 1 1196 0
	ldr	r2, [r1, #68]
	str	r3, [r1, #68]
	.loc 1 1197 0
	mov	r3, r1
.LVL1703:
	.loc 1 1196 0
	str	r2, [r1, #20]
	.loc 1 1197 0
	add	r3, r3, #192
	ldr	r0, [r3]
	ldr	r2, [r1, #24]
.LVL1704:
	str	r0, [r1, #24]
	str	r2, [r3]
	.loc 1 1198 0
	add	r3, r3, #4
	ldr	r0, [r3]
	ldr	r2, [r1, #28]
.LVL1705:
	str	r0, [r1, #28]
	str	r2, [r3]
	.loc 1 1199 0
	sub	r3, r3, #36
	ldr	r0, [r3]
	ldr	r2, [r1, #40]
.LVL1706:
	str	r0, [r1, #40]
	str	r2, [r3]
	.loc 1 1200 0
	add	r3, r3, #4
	ldr	r2, [r1, #44]
.LVL1707:
	ldr	r0, [r3]
	str	r0, [r1, #44]
	str	r2, [r3]
	.loc 1 1201 0
	ldr	r3, [r1, #48]
.LVL1708:
	ldr	r2, [r1, #96]
	str	r2, [r1, #48]
	str	r3, [r1, #96]
	.loc 1 1202 0
	ldr	r3, [r1, #52]
.LVL1709:
	ldr	r2, [r1, #100]
	str	r3, [r1, #100]
	.loc 1 1203 0
	mov	r3, r1
.LVL1710:
	.loc 1 1202 0
	str	r2, [r1, #52]
	.loc 1 1203 0
	add	r3, r3, #224
	ldr	r0, [r3]
	ldr	r2, [r1, #56]
.LVL1711:
	str	r0, [r1, #56]
	str	r2, [r3]
	.loc 1 1204 0
	add	r3, r3, #4
	ldr	r0, [r3]
	ldr	r2, [r1, #60]
.LVL1712:
	str	r0, [r1, #60]
	str	r2, [r3]
	.loc 1 1205 0
	sub	r3, r3, #84
	ldr	r0, [r3]
	ldr	r2, [r1, #72]
.LVL1713:
	str	r0, [r1, #72]
	str	r2, [r3]
	.loc 1 1206 0
	add	r3, r3, #4
	ldr	r0, [r3]
	ldr	r2, [r1, #76]
.LVL1714:
	str	r0, [r1, #76]
	str	r2, [r3]
	.loc 1 1207 0
	add	r3, r3, #60
	ldr	r0, [r3]
	ldr	r2, [r1, #88]
.LVL1715:
	str	r0, [r1, #88]
	str	r2, [r3]
	.loc 1 1208 0
	add	r3, r3, #4
	ldr	r0, [r3]
	ldr	r2, [r1, #92]
.LVL1716:
	str	r0, [r1, #92]
	str	r2, [r3]
	.loc 1 1209 0
	sub	r3, r3, #36
	ldr	r2, [r1, #104]
.LVL1717:
	ldr	r0, [r3]
	str	r0, [r1, #104]
	str	r2, [r3]
	.loc 1 1210 0
	add	r3, r3, #4
	ldr	r2, [r1, #108]
.LVL1718:
	ldr	r0, [r3]
	str	r0, [r1, #108]
	str	r2, [r3]
	.loc 1 1211 0
	add	r3, r3, #60
	ldr	r0, [r3]
	ldr	r2, [r1, #120]
.LVL1719:
	str	r0, [r1, #120]
	str	r2, [r3]
	.loc 1 1212 0
	add	r3, r3, #4
	ldr	r0, [r3]
	ldr	r2, [r1, #124]
.LVL1720:
	str	r0, [r1, #124]
	str	r2, [r3]
	.loc 1 1213 0
	mov	r2, r1
.LVL1721:
	add	r2, r2, #152
	sub	r3, r3, #44
	ldr	r0, [r2]
.LVL1722:
	ldr	r4, [r3]
	.loc 1 1216 0
	add	r1, r1, #236
.LVL1723:
	.loc 1 1213 0
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1214 0
	add	r2, r2, #4
	add	r3, r3, #4
	ldr	r0, [r2]
.LVL1724:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1215 0
	add	r2, r2, #28
	add	r3, r3, #28
	ldr	r0, [r2]
.LVL1725:
	ldr	r4, [r3]
	str	r4, [r2]
	str	r0, [r3]
	.loc 1 1216 0
	sub	r3, r3, #44
	ldr	r2, [r3]
.LVL1726:
	ldr	r0, [r1]
	str	r0, [r3]
	str	r2, [r1]
	.loc 1 1217 0
	bl	.L115	@ far jump
.L158:
	.align	2
.L157:
	.word	1948
	.word	1660
	.word	1884
	.word	1724
	.word	2012
	.word	1788
	.word	1980
	.word	1916
.LFE23:
	.fnend
	.size	bitreverse_krukar_512, .-bitreverse_krukar_512
