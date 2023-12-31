	.file	"fibonacci.c"
	.intel_syntax noprefix
	.text
	.globl	fibonacci
	.type	fibonacci, @function
fibonacci:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 0
	jg	.L2
	mov	eax, 0
	jmp	.L3
.L2:
	cmp	DWORD PTR -20[rbp], 1
	jne	.L4
	mov	eax, 1
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	edi, eax
	call	fibonacci
	mov	ebx, eax
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 2
	mov	edi, eax
	call	fibonacci
	add	eax, ebx
.L3:
	add	rsp, 24
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	fibonacci, .-fibonacci
	.section	.rodata
	.align 8
.LC0:
	.string	"Fibonacci number at position %d is %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 7
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	fibonacci
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
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
