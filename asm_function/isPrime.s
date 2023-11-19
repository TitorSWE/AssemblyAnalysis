	.file	"isPrime.c"
	.intel_syntax noprefix
	.text
	.globl	isPrime
	.type	isPrime, @function
isPrime:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 1
	jg	.L2
	mov	eax, 0
	jmp	.L3
.L2:
	cmp	DWORD PTR -20[rbp], 3
	jg	.L4
	mov	eax, 1
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 1
	test	eax, eax
	je	.L5
	mov	ecx, DWORD PTR -20[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1431655766
	shr	rax, 32
	mov	rdx, rax
	mov	eax, ecx
	sar	eax, 31
	mov	esi, edx
	sub	esi, eax
	mov	eax, esi
	mov	edx, eax
	add	edx, edx
	add	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	jne	.L6
.L5:
	mov	eax, 0
	jmp	.L3
.L6:
	mov	DWORD PTR -4[rbp], 5
	jmp	.L7
.L10:
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L8
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, 2[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L9
.L8:
	mov	eax, 0
	jmp	.L3
.L9:
	add	DWORD PTR -4[rbp], 6
.L7:
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, eax
	cmp	DWORD PTR -20[rbp], eax
	jge	.L10
	mov	eax, 1
.L3:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	isPrime, .-isPrime
	.section	.rodata
.LC0:
	.string	"is"
.LC1:
	.string	"is not"
.LC2:
	.string	"%d %s a prime number.\n"
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
	mov	DWORD PTR -4[rbp], 29
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	isPrime
	test	al, al
	je	.L12
	lea	rax, .LC0[rip]
	jmp	.L13
.L12:
	lea	rax, .LC1[rip]
.L13:
	mov	ecx, DWORD PTR -4[rbp]
	mov	rdx, rax
	mov	esi, ecx
	lea	rdi, .LC2[rip]
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
