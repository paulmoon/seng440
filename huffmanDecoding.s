	.file	"huffmanDecoding.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "r\0"
LC1:
	.ascii "config.txt\0"
LC2:
	.ascii "\12\0"
LC3:
	.ascii "%s\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	andl	$-16, %esp
	subl	$2160, %esp
	.cfi_offset 3, -16
	.cfi_offset 7, -12
	call	___main
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_fopen
	movl	%eax, 2144(%esp)
	movl	$0, 2152(%esp)
	movl	$0, 2148(%esp)
	movl	$0, 36(%esp)
	leal	40(%esp), %ebx
	movb	$0, %al
	movl	$996, %edx
	movl	%ebx, %edi
	movl	%edx, %ecx
	rep stosb
	movl	2144(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$100, 4(%esp)
	leal	1036(%esp), %eax
	movl	%eax, (%esp)
	call	_fgets
	movl	2144(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$1000, 4(%esp)
	leal	1136(%esp), %eax
	movl	%eax, (%esp)
	call	_fgets
	movl	$LC2, 4(%esp)
	leal	1036(%esp), %eax
	movl	%eax, (%esp)
	call	_strtok
	leal	1136(%esp), %eax
	movl	$-1, 28(%esp)
	movl	%eax, %edx
	movb	$0, %al
	movl	28(%esp), %ecx
	movl	%edx, %edi
	repne scasb
	movl	%ecx, %eax
	notl	%eax
	decl	%eax
	movl	%eax, 2140(%esp)
	leal	1036(%esp), %eax
	movl	$-1, 28(%esp)
	movl	%eax, %edx
	movb	$0, %al
	movl	28(%esp), %ecx
	movl	%edx, %edi
	repne scasb
	movl	%ecx, %eax
	notl	%eax
	decl	%eax
	movl	%eax, 2136(%esp)
	movl	2144(%esp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	$0, 2156(%esp)
	jmp	L2
L5:
	leal	1136(%esp), %eax
	addl	2156(%esp), %eax
	movb	(%eax), %al
	cmpb	$48, %al
	jne	L3
	leal	1036(%esp), %eax
	addl	2152(%esp), %eax
	movb	(%eax), %dl
	leal	36(%esp), %eax
	addl	2148(%esp), %eax
	movb	%dl, (%eax)
	incl	2148(%esp)
	movl	$0, 2152(%esp)
	jmp	L4
L3:
	incl	2152(%esp)
	movl	2136(%esp), %eax
	decl	%eax
	cmpl	2152(%esp), %eax
	jne	L4
	leal	1036(%esp), %eax
	addl	2152(%esp), %eax
	movb	(%eax), %dl
	leal	36(%esp), %eax
	addl	2148(%esp), %eax
	movb	%dl, (%eax)
	incl	2148(%esp)
	movl	$0, 2152(%esp)
L4:
	incl	2156(%esp)
L2:
	movl	2156(%esp), %eax
	cmpl	2140(%esp), %eax
	jl	L5
	leal	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	$0, %eax
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
LFE6:
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_strtok;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
