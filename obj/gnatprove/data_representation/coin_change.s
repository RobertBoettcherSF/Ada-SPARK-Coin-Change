	.file	"coin_change.adb"
	.text
	.section	.rodata
.LC0:
	.ascii	"coin_change.adb"
	.zero	1
	.text
	.align 2
	.globl	coin_change__minimum
	.type	coin_change__minimum, @function
coin_change__minimum:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$10, %eax
	jbe	.L2
	leaq	.LC0(%rip), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	__gnat_rcheck_CE_Invalid_Data@PLT
.L2:
	cmpl	$9, -4(%rbp)
	je	.L3
	cmpl	$9, -4(%rbp)
	jg	.L4
	cmpl	$8, -4(%rbp)
	jg	.L4
	cmpl	$3, -4(%rbp)
	jge	.L5
	cmpl	$0, -4(%rbp)
	je	.L6
	cmpl	$0, -4(%rbp)
	js	.L4
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L4
	jmp	.L9
.L6:
	movl	$0, %eax
	jmp	.L8
.L9:
	movl	$1, %eax
	jmp	.L8
.L5:
	movl	$2, %eax
	jmp	.L8
.L3:
	movl	$3, %eax
	jmp	.L8
.L4:
	movl	$2, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	coin_change__minimum, .-coin_change__minimum
	.globl	coin_change_E
	.data
	.align 2
	.type	coin_change_E, @object
	.size	coin_change_E, 2
coin_change_E:
	.zero	2
	.ident	"GCC: (GNAT-FSF-builds) 16.1.0"
	.section	.note.GNU-stack,"",@progbits
