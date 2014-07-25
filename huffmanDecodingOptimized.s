	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$3056, %rsp             ## imm = 0xBF0
	leaq	L_.str(%rip), %rdi
	leaq	L_.str1(%rip), %rsi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	callq	_fopen
	movl	$100, %esi
	leaq	-1152(%rbp), %rdi
	movl	$0, %ecx
	movabsq	$100, %rdx
	leaq	-2272(%rbp), %r8
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	%rdi, -2944(%rbp)       ## 8-byte Spill
	movq	%r8, %rdi
	movl	%esi, -2948(%rbp)       ## 4-byte Spill
	movl	%ecx, %esi
	callq	_memset
	movq	-24(%rbp), %rdx
	movq	-2944(%rbp), %rdi       ## 8-byte Reload
	movl	-2948(%rbp), %esi       ## 4-byte Reload
	callq	_fgets
	movl	$1000, %esi             ## imm = 0x3E8
	leaq	-1040(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, -2960(%rbp)       ## 8-byte Spill
	callq	_fgets
	leaq	L_.str2(%rip), %rsi
	leaq	-1152(%rbp), %rdi
	movq	%rax, -2968(%rbp)       ## 8-byte Spill
	callq	_strtok
	leaq	-1152(%rbp), %rdi
	leaq	-1040(%rbp), %rdx
	movq	%rdi, -2976(%rbp)       ## 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -2984(%rbp)       ## 8-byte Spill
	callq	_strlen
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movq	-2976(%rbp), %rdi       ## 8-byte Reload
	callq	_strlen
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movslq	-40(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	_malloc
	movl	$48, %esi
	movabsq	$-1, %rcx
	movq	%rax, -2280(%rbp)
	movq	-2280(%rbp), %rdi
	movslq	-40(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	___memset_chk
	movabsq	$1000, %rdx             ## imm = 0x3E8
	leaq	-1040(%rbp), %rdi
	movq	-2280(%rbp), %rsi
	movq	%rax, -2992(%rbp)       ## 8-byte Spill
	callq	___strcat_chk
	movq	-24(%rbp), %rdi
	movq	%rax, -3000(%rbp)       ## 8-byte Spill
	callq	_fclose
	leaq	L_main.codeLenLUT(%rip), %rcx
	movabsq	$512, %rdx              ## imm = 0x200
	leaq	-2928(%rbp), %rsi
	leaq	L_main.LUT(%rip), %rdi
	movabsq	$128, %r8
	leaq	-2416(%rbp), %r9
	movq	%rdi, -3008(%rbp)       ## 8-byte Spill
	movq	%r9, %rdi
	movq	-3008(%rbp), %r9        ## 8-byte Reload
	movq	%rsi, -3016(%rbp)       ## 8-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -3024(%rbp)       ## 8-byte Spill
	movq	%r8, %rdx
	movl	%eax, -3028(%rbp)       ## 4-byte Spill
	movq	%rcx, -3040(%rbp)       ## 8-byte Spill
	callq	_memcpy
	movq	-3016(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, %rdi
	movq	-3040(%rbp), %rsi       ## 8-byte Reload
	movq	-3024(%rbp), %rdx       ## 8-byte Reload
	callq	_memcpy
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB0_3
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movabsq	$100, %rcx
	leaq	-1040(%rbp), %rax
	leaq	-2272(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	addq	%rdx, %rax
	movslq	-40(%rbp), %rdx
	movq	%rax, %rsi
	callq	___strncpy_chk
	movabsq	$0, %rsi
	movl	$2, %edx
	leaq	-2272(%rbp), %rdi
	movq	%rax, -3048(%rbp)       ## 8-byte Spill
	callq	_strtol
	movl	%eax, %edx
	movl	%edx, -2932(%rbp)
	movslq	-2932(%rbp), %rax
	movb	-2416(%rbp,%rax), %r8b
	movl	-32(%rbp), %edx
	movl	%edx, %r9d
	addl	$1, %r9d
	movl	%r9d, -32(%rbp)
	movslq	%edx, %rax
	movb	%r8b, -2160(%rbp,%rax)
	movslq	-2932(%rbp), %rax
	movl	-2928(%rbp,%rax,4), %edx
	movl	-28(%rbp), %r9d
	addl	%edx, %r9d
	movl	%r9d, -28(%rbp)
	jmp	LBB0_1
LBB0_3:
	leaq	L_.str3(%rip), %rdi
	leaq	-2160(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rsi
	cmpq	-8(%rbp), %rsi
	movl	%eax, -3052(%rbp)       ## 4-byte Spill
	jne	LBB0_5
## BB#4:                                ## %SP_return
	movl	$0, %eax
	addq	$3056, %rsp             ## imm = 0xBF0
	popq	%rbp
	ret
LBB0_5:                                 ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"input.txt"

L_.str1:                                ## @.str1
	.asciz	"r"

L_.str2:                                ## @.str2
	.asciz	"\n"

	.section	__TEXT,__const
	.align	4                       ## @main.LUT
L_main.LUT:
	.asciz	"ddddddddddddddddddddddddddddddddbbbbbbbbbbbbbbbbeeeeeeeeccccffaa\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

	.align	4                       ## @main.codeLenLUT
L_main.codeLenLUT:
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	3                       ## 0x3
	.long	3                       ## 0x3
	.long	3                       ## 0x3
	.long	3                       ## 0x3
	.long	3                       ## 0x3
	.long	3                       ## 0x3
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	4                       ## 0x4
	.long	4                       ## 0x4
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	5                       ## 0x5
	.long	6                       ## 0x6
	.long	6                       ## 0x6
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0

	.section	__TEXT,__cstring,cstring_literals
L_.str3:                                ## @.str3
	.asciz	"%s\n"


.subsections_via_symbols
