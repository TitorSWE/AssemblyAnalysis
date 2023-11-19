	.file	"countWordsInFile.c"
	.intel_syntax noprefix
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	lea	rsi, .LC0[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L2
	lea	rdi, .LC1[rip]
	call	perror@PLT
	mov	eax, -1
	jmp	.L3
.L2:
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L4
.L7:
	cmp	BYTE PTR -17[rbp], 32
	je	.L5
	cmp	BYTE PTR -17[rbp], 10
	je	.L5
	cmp	BYTE PTR -17[rbp], 9
	jne	.L6
.L5:
	mov	DWORD PTR -12[rbp], 0
	jmp	.L4
.L6:
	cmp	DWORD PTR -12[rbp], 0
	jne	.L4
	mov	DWORD PTR -12[rbp], 1
	add	DWORD PTR -16[rbp], 1
.L4:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	fgetc@PLT
	mov	BYTE PTR -17[rbp], al
	cmp	BYTE PTR -17[rbp], -1
	jne	.L7
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	fclose@PLT
	mov	eax, DWORD PTR -16[rbp]
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	lea	rax, .LC2[rip]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	countWordsInFile
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	js	.L9
	mov	edx, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rdi, .LC3[rip]
	mov	eax, 0
	call	printf@PLT
	jmp	.L10
.L9:
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rdi, .LC4[rip]
	mov	eax, 0
	call	printf@PLT
.L10:
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
