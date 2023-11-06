	.file	"countWordsInFile.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"Error opening file"
	.text
	.globl	countWordsInFile
	.type	countWordsInFile, @function
countWordsInFile:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	leaq	.LC1(%rip), %rdi
	call	perror@PLT
	movl	$-1, %eax
	jmp	.L3
.L2:
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L4
.L7:
	cmpb	$32, -17(%rbp)
	je	.L5
	cmpb	$10, -17(%rbp)
	je	.L5
	cmpb	$9, -17(%rbp)
	jne	.L6
.L5:
	movl	$0, -12(%rbp)
	jmp	.L4
.L6:
	cmpl	$0, -12(%rbp)
	jne	.L4
	movl	$1, -12(%rbp)
	addl	$1, -16(%rbp)
.L4:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc@PLT
	movb	%al, -17(%rbp)
	cmpb	$-1, -17(%rbp)
	jne	.L7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-16(%rbp), %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	countWordsInFile, .-countWordsInFile
	.section	.rodata
.LC2:
	.string	"sample.txt"
.LC3:
	.string	"Word count in %s: %d\n"
.LC4:
	.string	"Error counting words in %s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC2(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	countWordsInFile
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L9
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L10:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
