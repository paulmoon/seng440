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
	.file	"huffmanDecodingOptimized.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"input.txt\000"
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
	@ args = 0, pretend = 0, frame = 2872
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #2864
	sub	sp, sp, #8
	ldr	r0, .L5
	ldr	r1, .L5+4
	bl	fopen
	mov	r3, r0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-24]
	sub	r3, fp, #2224
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r0, r3
	mov	r1, #0
	mov	r2, #100
	bl	memset
	sub	r3, fp, #1120
	sub	r3, r3, #4
	sub	r3, r3, #8
	mov	r0, r3
	mov	r1, #100
	ldr	r2, [fp, #-32]
	bl	fgets
	sub	r3, fp, #1024
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r0, r3
	mov	r1, #1000
	ldr	r2, [fp, #-32]
	bl	fgets
	sub	r3, fp, #1120
	sub	r3, r3, #4
	sub	r3, r3, #8
	mov	r0, r3
	ldr	r1, .L5+8
	bl	strtok
	sub	r3, fp, #1024
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	str	r3, [fp, #-20]
	sub	r3, fp, #1120
	sub	r3, r3, #4
	sub	r3, r3, #8
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	ldr	r0, [fp, #-12]
	mov	r1, #48
	mov	r2, r3
	bl	memset
	sub	r3, fp, #1024
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r0, r3
	ldr	r1, [fp, #-12]
	bl	strcat
	ldr	r0, [fp, #-32]
	bl	fclose
	sub	r3, fp, #2352
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r2, #128
	mov	r0, r3
	mov	r1, #0
	bl	memset
	mov	r3, #100
	strb	r3, [fp, #-2360]
	mov	r3, #100
	strb	r3, [fp, #-2359]
	mov	r3, #100
	strb	r3, [fp, #-2358]
	mov	r3, #100
	strb	r3, [fp, #-2357]
	mov	r3, #100
	strb	r3, [fp, #-2356]
	mov	r3, #100
	strb	r3, [fp, #-2355]
	mov	r3, #100
	strb	r3, [fp, #-2354]
	mov	r3, #100
	strb	r3, [fp, #-2353]
	mov	r3, #100
	strb	r3, [fp, #-2352]
	mov	r3, #100
	strb	r3, [fp, #-2351]
	mov	r3, #100
	strb	r3, [fp, #-2350]
	mov	r3, #100
	strb	r3, [fp, #-2349]
	mov	r3, #100
	strb	r3, [fp, #-2348]
	mov	r3, #100
	strb	r3, [fp, #-2347]
	mov	r3, #100
	strb	r3, [fp, #-2346]
	mov	r3, #100
	strb	r3, [fp, #-2345]
	mov	r3, #100
	strb	r3, [fp, #-2344]
	mov	r3, #100
	strb	r3, [fp, #-2343]
	mov	r3, #100
	strb	r3, [fp, #-2342]
	mov	r3, #100
	strb	r3, [fp, #-2341]
	mov	r3, #100
	strb	r3, [fp, #-2340]
	mov	r3, #100
	strb	r3, [fp, #-2339]
	mov	r3, #100
	strb	r3, [fp, #-2338]
	mov	r3, #100
	strb	r3, [fp, #-2337]
	mov	r3, #100
	strb	r3, [fp, #-2336]
	mov	r3, #100
	strb	r3, [fp, #-2335]
	mov	r3, #100
	strb	r3, [fp, #-2334]
	mov	r3, #100
	strb	r3, [fp, #-2333]
	mov	r3, #100
	strb	r3, [fp, #-2332]
	mov	r3, #100
	strb	r3, [fp, #-2331]
	mov	r3, #100
	strb	r3, [fp, #-2330]
	mov	r3, #100
	strb	r3, [fp, #-2329]
	mov	r3, #98
	strb	r3, [fp, #-2328]
	mov	r3, #98
	strb	r3, [fp, #-2327]
	mov	r3, #98
	strb	r3, [fp, #-2326]
	mov	r3, #98
	strb	r3, [fp, #-2325]
	mov	r3, #98
	strb	r3, [fp, #-2324]
	mov	r3, #98
	strb	r3, [fp, #-2323]
	mov	r3, #98
	strb	r3, [fp, #-2322]
	mov	r3, #98
	strb	r3, [fp, #-2321]
	mov	r3, #98
	strb	r3, [fp, #-2320]
	mov	r3, #98
	strb	r3, [fp, #-2319]
	mov	r3, #98
	strb	r3, [fp, #-2318]
	mov	r3, #98
	strb	r3, [fp, #-2317]
	mov	r3, #98
	strb	r3, [fp, #-2316]
	mov	r3, #98
	strb	r3, [fp, #-2315]
	mov	r3, #98
	strb	r3, [fp, #-2314]
	mov	r3, #98
	strb	r3, [fp, #-2313]
	mov	r3, #101
	strb	r3, [fp, #-2312]
	mov	r3, #101
	strb	r3, [fp, #-2311]
	mov	r3, #101
	strb	r3, [fp, #-2310]
	mov	r3, #101
	strb	r3, [fp, #-2309]
	mov	r3, #101
	strb	r3, [fp, #-2308]
	mov	r3, #101
	strb	r3, [fp, #-2307]
	mov	r3, #101
	strb	r3, [fp, #-2306]
	mov	r3, #101
	strb	r3, [fp, #-2305]
	mov	r3, #99
	strb	r3, [fp, #-2304]
	mov	r3, #99
	strb	r3, [fp, #-2303]
	mov	r3, #99
	strb	r3, [fp, #-2302]
	mov	r3, #99
	strb	r3, [fp, #-2301]
	mov	r3, #102
	strb	r3, [fp, #-2300]
	mov	r3, #102
	strb	r3, [fp, #-2299]
	mov	r3, #97
	strb	r3, [fp, #-2298]
	mov	r3, #97
	strb	r3, [fp, #-2297]
	sub	r3, fp, #2864
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r2, #512
	mov	r0, r3
	mov	r1, #0
	bl	memset
	mov	r3, #1
	str	r3, [fp, #-2872]
	mov	r3, #1
	str	r3, [fp, #-2868]
	mov	r3, #1
	str	r3, [fp, #-2864]
	mov	r3, #1
	str	r3, [fp, #-2860]
	mov	r3, #1
	str	r3, [fp, #-2856]
	mov	r3, #1
	str	r3, [fp, #-2852]
	mov	r3, #1
	str	r3, [fp, #-2848]
	mov	r3, #1
	str	r3, [fp, #-2844]
	mov	r3, #1
	str	r3, [fp, #-2840]
	mov	r3, #1
	str	r3, [fp, #-2836]
	mov	r3, #1
	str	r3, [fp, #-2832]
	mov	r3, #1
	str	r3, [fp, #-2828]
	mov	r3, #1
	str	r3, [fp, #-2824]
	mov	r3, #1
	str	r3, [fp, #-2820]
	mov	r3, #1
	str	r3, [fp, #-2816]
	mov	r3, #1
	str	r3, [fp, #-2812]
	mov	r3, #1
	str	r3, [fp, #-2808]
	mov	r3, #1
	str	r3, [fp, #-2804]
	mov	r3, #1
	str	r3, [fp, #-2800]
	mov	r3, #1
	str	r3, [fp, #-2796]
	mov	r3, #1
	str	r3, [fp, #-2792]
	mov	r3, #1
	str	r3, [fp, #-2788]
	mov	r3, #1
	str	r3, [fp, #-2784]
	mov	r3, #1
	str	r3, [fp, #-2780]
	mov	r3, #1
	str	r3, [fp, #-2776]
	mov	r3, #1
	str	r3, [fp, #-2772]
	mov	r3, #1
	str	r3, [fp, #-2768]
	mov	r3, #1
	str	r3, [fp, #-2764]
	mov	r3, #1
	str	r3, [fp, #-2760]
	mov	r3, #1
	str	r3, [fp, #-2756]
	mov	r3, #1
	str	r3, [fp, #-2752]
	mov	r3, #1
	str	r3, [fp, #-2748]
	mov	r3, #2
	str	r3, [fp, #-2744]
	mov	r3, #2
	str	r3, [fp, #-2740]
	mov	r3, #2
	str	r3, [fp, #-2736]
	mov	r3, #2
	str	r3, [fp, #-2732]
	mov	r3, #2
	str	r3, [fp, #-2728]
	mov	r3, #2
	str	r3, [fp, #-2724]
	mov	r3, #2
	str	r3, [fp, #-2720]
	mov	r3, #2
	str	r3, [fp, #-2716]
	mov	r3, #2
	str	r3, [fp, #-2712]
	mov	r3, #2
	str	r3, [fp, #-2708]
	mov	r3, #2
	str	r3, [fp, #-2704]
	mov	r3, #2
	str	r3, [fp, #-2700]
	mov	r3, #2
	str	r3, [fp, #-2696]
	mov	r3, #2
	str	r3, [fp, #-2692]
	mov	r3, #2
	str	r3, [fp, #-2688]
	mov	r3, #2
	str	r3, [fp, #-2684]
	mov	r3, #3
	str	r3, [fp, #-2680]
	mov	r3, #3
	str	r3, [fp, #-2676]
	mov	r3, #3
	str	r3, [fp, #-2672]
	mov	r3, #3
	str	r3, [fp, #-2668]
	mov	r3, #3
	str	r3, [fp, #-2664]
	mov	r3, #3
	str	r3, [fp, #-2660]
	mov	r3, #3
	str	r3, [fp, #-2656]
	mov	r3, #3
	str	r3, [fp, #-2652]
	mov	r3, #4
	str	r3, [fp, #-2648]
	mov	r3, #4
	str	r3, [fp, #-2644]
	mov	r3, #4
	str	r3, [fp, #-2640]
	mov	r3, #4
	str	r3, [fp, #-2636]
	mov	r3, #5
	str	r3, [fp, #-2632]
	mov	r3, #5
	str	r3, [fp, #-2628]
	mov	r3, #6
	str	r3, [fp, #-2624]
	mov	r3, #6
	str	r3, [fp, #-2620]
	b	.L2
.L3:
	ldr	r3, [fp, #-28]
	sub	r2, fp, #1024
	sub	r2, r2, #4
	sub	r2, r2, #4
	add	r2, r2, r3
	ldr	ip, [fp, #-16]
	sub	r3, fp, #2224
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r0, r3
	mov	r1, r2
	mov	r2, ip
	bl	strncpy
	sub	r3, fp, #2224
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r0, r3
	mov	r1, #0
	mov	r2, #2
	bl	strtol
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-24]
	ldr	r3, [fp, #-8]
	ldr	r2, .L5+12
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, .L5+16
	sub	ip, fp, #4
	add	r3, ip, r0
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	ldr	r2, .L5+20
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-28]
.L2:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L3
	sub	r3, fp, #2128
	sub	r3, r3, #4
	mov	r0, r3
	bl	puts
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L6:
	.align	2
.L5:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	-2356
	.word	-2128
	.word	-2868
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
