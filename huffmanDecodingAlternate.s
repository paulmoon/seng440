	.arch armv5
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"huffmanDecodingAlternate.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"input_alternate.txt\000"
	.align	2
.LC1:
	.ascii	"r\000"
	.align	2
.LC2:
	.ascii	"\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 2128
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #2128
	ldr	r0, .L7
	ldr	r1, .L7+4
	bl	fopen
	mov	r3, r0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	sub	r3, fp, #1120
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r0, r3
	mov	r1, #100
	ldr	r2, [fp, #-28]
	bl	fgets
	sub	r3, fp, #1024
	sub	r3, r3, #4
	mov	r0, r3
	mov	r1, #1000
	ldr	r2, [fp, #-28]
	bl	fgets
	sub	r3, fp, #1120
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r0, r3
	ldr	r1, .L7+8
	bl	strtok
	sub	r3, fp, #1024
	sub	r3, r3, #4
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	str	r3, [fp, #-12]
	sub	r3, fp, #1120
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-28]
	bl	fclose
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L2
.L5:
	ldr	r3, [fp, #-24]
	ldr	r2, .L7+12
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L3
	ldr	r0, [fp, #-16]
	ldr	r3, [fp, #-20]
	ldr	r2, .L7+16
	sub	ip, fp, #4
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, .L7+20
	sub	ip, fp, #4
	add	r3, ip, r0
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L4
.L3:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L4:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L2:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	blt	.L5
	sub	r3, fp, #2112
	sub	r3, r3, #4
	sub	r3, r3, #12
	mov	r0, r3
	bl	puts
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L8:
	.align	2
.L7:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	-1024
	.word	-1124
	.word	-2124
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
