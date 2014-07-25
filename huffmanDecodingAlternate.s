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
	subq	$2224, %rsp             ## imm = 0x8B0
	leaq	L_.str(%rip), %rdi
	leaq	L_.str1(%rip), %rsi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	callq	_fopen
	movl	$100, %esi
	leaq	-1168(%rbp), %rdi
	movq	%rax, -24(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rdx
	callq	_fgets
	movl	$1000, %esi             ## imm = 0x3E8
	leaq	-1056(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, -2184(%rbp)       ## 8-byte Spill
	callq	_fgets
	leaq	L_.str2(%rip), %rsi
	leaq	-1168(%rbp), %rdi
	movq	%rax, -2192(%rbp)       ## 8-byte Spill
	callq	_strtok
	leaq	-1168(%rbp), %rdi
	leaq	-1056(%rbp), %rdx
	movq	%rdi, -2200(%rbp)       ## 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -2208(%rbp)       ## 8-byte Spill
	callq	_strlen
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movq	-2200(%rbp), %rdi       ## 8-byte Reload
	callq	_strlen
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	_fclose
	movl	$0, -28(%rbp)
	movl	%eax, -2212(%rbp)       ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	LBB0_7
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movslq	-28(%rbp), %rax
	movsbl	-1056(%rbp,%rax), %ecx
	cmpl	$48, %ecx
	jne	LBB0_4
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	movslq	-32(%rbp), %rax
	movb	-1168(%rbp,%rax), %cl
	movslq	-36(%rbp), %rax
	movb	%cl, -2176(%rbp,%rax)
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -36(%rbp)
	movl	$0, -32(%rbp)
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_6
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_1
LBB0_7:
	leaq	L_.str3(%rip), %rdi
	leaq	-2176(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rsi
	cmpq	-8(%rbp), %rsi
	movl	%eax, -2216(%rbp)       ## 4-byte Spill
	jne	LBB0_9
## BB#8:                                ## %SP_return
	movl	$0, %eax
	addq	$2224, %rsp             ## imm = 0x8B0
	popq	%rbp
	ret
LBB0_9:                                 ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"input.txt"

L_.str1:                                ## @.str1
	.asciz	"r"

L_.str2:                                ## @.str2
	.asciz	"\n"

L_.str3:                                ## @.str3
	.asciz	"%s\n"


.subsections_via_symbols
