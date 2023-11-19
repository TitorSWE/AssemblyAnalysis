	.file	"matrixMultiply.c"
	.intel_syntax noprefix
	.text
	.globl	matrixMultiply
	.type	matrixMultiply, @function
matrixMultiply:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
.L7:
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
.L6:
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR [rdx+rax*4], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	esi, DWORD PTR [rdx+rax*4]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	ecx, DWORD PTR [rdx+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR [rdx+rax*4]
	imul	ecx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	add	ecx, esi
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR [rdx+rax*4], ecx
	add	DWORD PTR -4[rbp], 1
.L4:
	cmp	DWORD PTR -4[rbp], 2
	jle	.L5
	add	DWORD PTR -8[rbp], 1
.L3:
	cmp	DWORD PTR -8[rbp], 2
	jle	.L6
	add	DWORD PTR -12[rbp], 1
.L2:
	cmp	DWORD PTR -12[rbp], 2
	jle	.L7
	nop
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	matrixMultiply, .-matrixMultiply
	.section	.rodata
.LC0:
	.string	"Matrix Multiplication Result:"
.LC1:
	.string	"%d "
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
	sub	rsp, 160
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -144[rbp], 1
	mov	DWORD PTR -140[rbp], 2
	mov	DWORD PTR -136[rbp], 3
	mov	DWORD PTR -132[rbp], 4
	mov	DWORD PTR -128[rbp], 5
	mov	DWORD PTR -124[rbp], 6
	mov	DWORD PTR -120[rbp], 7
	mov	DWORD PTR -116[rbp], 8
	mov	DWORD PTR -112[rbp], 9
	mov	DWORD PTR -96[rbp], 9
	mov	DWORD PTR -92[rbp], 8
	mov	DWORD PTR -88[rbp], 7
	mov	DWORD PTR -84[rbp], 6
	mov	DWORD PTR -80[rbp], 5
	mov	DWORD PTR -76[rbp], 4
	mov	DWORD PTR -72[rbp], 3
	mov	DWORD PTR -68[rbp], 2
	mov	DWORD PTR -64[rbp], 1
	lea	rdx, -48[rbp]
	lea	rcx, -96[rbp]
	lea	rax, -144[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	matrixMultiply
	lea	rdi, .LC0[rip]
	call	puts@PLT
	mov	DWORD PTR -152[rbp], 0
	jmp	.L9
.L12:
	mov	DWORD PTR -148[rbp], 0
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -148[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -152[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rcx
	mov	eax, DWORD PTR -48[rbp+rax*4]
	mov	esi, eax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -148[rbp], 1
.L10:
	cmp	DWORD PTR -148[rbp], 2
	jle	.L11
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -152[rbp], 1
.L9:
	cmp	DWORD PTR -152[rbp], 2
	jle	.L12
	mov	eax, 0
	mov	rsi, QWORD PTR -8[rbp]
	xor	rsi, QWORD PTR fs:40
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
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
