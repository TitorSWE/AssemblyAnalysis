	.file	"binarySearch.c"
	.intel_syntax noprefix
	.text
	.globl	binarySearch
	.type	binarySearch, @function
binarySearch:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	DWORD PTR -12[rbp], 0
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L2
.L6:
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -32[rbp], eax
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L4
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -32[rbp], eax
	jle	.L5
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
.L2:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L6
	mov	eax, -1
.L4:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	binarySearch, .-binarySearch
	.section	.rodata
.LC0:
	.string	"Element %d found at index %d\n"
	.align 8
.LC1:
	.string	"Element %d not found in the array\n"
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
	sub	rsp, 64
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -48[rbp], 1
	mov	DWORD PTR -44[rbp], 3
	mov	DWORD PTR -40[rbp], 5
	mov	DWORD PTR -36[rbp], 7
	mov	DWORD PTR -32[rbp], 9
	mov	DWORD PTR -28[rbp], 11
	mov	DWORD PTR -24[rbp], 13
	mov	DWORD PTR -20[rbp], 15
	mov	DWORD PTR -16[rbp], 17
	mov	DWORD PTR -12[rbp], 19
	mov	DWORD PTR -56[rbp], 13
	mov	edx, DWORD PTR -56[rbp]
	lea	rax, -48[rbp]
	mov	esi, 10
	mov	rdi, rax
	call	binarySearch
	mov	DWORD PTR -52[rbp], eax
	cmp	DWORD PTR -52[rbp], -1
	je	.L8
	mov	edx, DWORD PTR -52[rbp]
	mov	eax, DWORD PTR -56[rbp]
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	jmp	.L9
.L8:
	mov	eax, DWORD PTR -56[rbp]
	mov	esi, eax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT
.L9:
	mov	eax, 0
	mov	rcx, QWORD PTR -8[rbp]
	xor	rcx, QWORD PTR fs:40
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
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
