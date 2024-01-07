	.file	"memjournal.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_321805475
	.data
	.align 4
	.type	__merger_cond_true_321805475, @object
	.size	__merger_cond_true_321805475, 4
__merger_cond_true_321805475:
	.long	1
	.text
	.type	memjrnlRead, @function
memjrnlRead:
.LFB6:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	DWORD PTR -68[rbp], edx
	mov	QWORD PTR -80[rbp], rcx
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -68[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -68[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	rdx, rax
	jle	.L2
	mov	eax, 522
	jmp	.L3
.L2:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 40[rax]
	cmp	QWORD PTR -80[rbp], rax
	jne	.L4
	cmp	QWORD PTR -80[rbp], 0
	jne	.L5
.L4:
	mov	QWORD PTR -32[rbp], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L6
.L8:
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 8[rax]
	cdqe
	add	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rax
.L6:
	cmp	QWORD PTR -24[rbp], 0
	je	.L14
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 8[rax]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	cmp	QWORD PTR -80[rbp], rax
	jge	.L8
	jmp	.L14
.L5:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 48[rax]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L9
.L14:
	nop
.L9:
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 8[rax]
	movsx	rsi, eax
	mov	rax, QWORD PTR -80[rbp]
	cqo
	idiv	rsi
	mov	rcx, rdx
	mov	rax, rcx
	mov	DWORD PTR -16[rbp], eax
.L11:
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 8[rax]
	sub	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -44[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 8[rax]
	sub	eax, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -12[rbp]
	cmp	edx, eax
	cmovle	eax, edx
	mov	DWORD PTR -48[rbp], eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, 8[rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	add	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memcpy@PLT
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	add	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	sub	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -16[rbp], 0
	cmp	DWORD PTR -12[rbp], 0
	js	.L10
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	je	.L10
	cmp	DWORD PTR -12[rbp], 0
	jg	.L11
.L10:
	cmp	QWORD PTR -24[rbp], 0
	je	.L12
	mov	eax, DWORD PTR -68[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	jmp	.L13
.L12:
	mov	edx, 0
.L13:
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 40[rax], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], rdx
	mov	eax, 0
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	memjrnlRead, .-memjrnlRead
	.type	memjrnlFreeChunks, @function
memjrnlFreeChunks:
.LFB7:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L16
.L17:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3_free@PLT
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -8[rbp], rax
.L16:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L17
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	memjrnlFreeChunks, .-memjrnlFreeChunks
	.type	memjrnlCreateFile, @function
memjrnlCreateFile:
.LFB8:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 136
	.cfi_offset 3, -24
	mov	QWORD PTR -136[rbp], rdi
	mov	rax, QWORD PTR -136[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 8[rax]
	mov	QWORD PTR -128[rbp], rcx
	mov	QWORD PTR -120[rbp], rbx
	mov	rcx, QWORD PTR 16[rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	QWORD PTR -112[rbp], rcx
	mov	QWORD PTR -104[rbp], rbx
	mov	rcx, QWORD PTR 32[rax]
	mov	rbx, QWORD PTR 40[rax]
	mov	QWORD PTR -96[rbp], rcx
	mov	QWORD PTR -88[rbp], rbx
	mov	rcx, QWORD PTR 48[rax]
	mov	rbx, QWORD PTR 56[rax]
	mov	QWORD PTR -80[rbp], rcx
	mov	QWORD PTR -72[rbp], rbx
	mov	rdx, QWORD PTR 72[rax]
	mov	rax, QWORD PTR 64[rax]
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -136[rbp]
	mov	edx, 80
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	ecx, DWORD PTR -72[rbp]
	mov	rsi, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	r8d, 0
	mov	rdi, rax
	call	sqlite3OsOpen@PLT
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -20[rbp], 0
	jne	.L19
	mov	eax, DWORD PTR -120[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	QWORD PTR -32[rbp], 0
	mov	rax, QWORD PTR -112[rbp]
	mov	QWORD PTR -40[rbp], rax
	jmp	.L20
.L24:
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -104[rbp]
	cmp	rdx, rax
	jle	.L21
	mov	rax, QWORD PTR -104[rbp]
	mov	ecx, eax
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, eax
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -24[rbp], eax
.L21:
	mov	rax, QWORD PTR -40[rbp]
	lea	rsi, 8[rax]
	mov	rcx, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -24[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	sqlite3OsWrite@PLT
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -20[rbp], 0
	jne	.L27
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -40[rbp], rax
.L20:
	cmp	QWORD PTR -40[rbp], 0
	jne	.L24
	jmp	.L23
.L27:
	nop
.L23:
	cmp	DWORD PTR -20[rbp], 0
	jne	.L19
	mov	rax, QWORD PTR -112[rbp]
	mov	rdi, rax
	call	memjrnlFreeChunks
.L19:
	cmp	DWORD PTR -20[rbp], 0
	je	.L25
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	sqlite3OsClose@PLT
	mov	rax, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR -128[rbp]
	mov	rbx, QWORD PTR -120[rbp]
	mov	QWORD PTR [rax], rcx
	mov	QWORD PTR 8[rax], rbx
	mov	rcx, QWORD PTR -112[rbp]
	mov	rbx, QWORD PTR -104[rbp]
	mov	QWORD PTR 16[rax], rcx
	mov	QWORD PTR 24[rax], rbx
	mov	rcx, QWORD PTR -96[rbp]
	mov	rbx, QWORD PTR -88[rbp]
	mov	QWORD PTR 32[rax], rcx
	mov	QWORD PTR 40[rax], rbx
	mov	rcx, QWORD PTR -80[rbp]
	mov	rbx, QWORD PTR -72[rbp]
	mov	QWORD PTR 48[rax], rcx
	mov	QWORD PTR 56[rax], rbx
	mov	rcx, QWORD PTR -64[rbp]
	mov	rbx, QWORD PTR -56[rbp]
	mov	QWORD PTR 64[rax], rcx
	mov	QWORD PTR 72[rax], rbx
.L25:
	mov	eax, DWORD PTR -20[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	memjrnlCreateFile, .-memjrnlCreateFile
	.type	memjrnlWrite, @function
memjrnlWrite:
.LFB9:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 96
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	DWORD PTR -84[rbp], edx
	mov	QWORD PTR -96[rbp], rcx
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	eax, DWORD PTR -84[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 12[rax]
	test	eax, eax
	jle	.L29
	mov	eax, DWORD PTR -84[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -96[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 12[rax]
	cdqe
	cmp	rdx, rax
	jle	.L29
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	memjrnlCreateFile
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -20[rbp], 0
	jne	.L30
	mov	rcx, QWORD PTR -96[rbp]
	mov	edx, DWORD PTR -84[rbp]
	mov	rsi, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	sqlite3OsWrite@PLT
	mov	DWORD PTR -20[rbp], eax
.L30:
	mov	eax, DWORD PTR -20[rbp]
	jmp	.L31
.L29:
	cmp	QWORD PTR -96[rbp], 0
	jle	.L32
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	QWORD PTR -96[rbp], rax
	je	.L32
	mov	rdx, QWORD PTR -96[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	memjrnlTruncate
.L32:
	cmp	QWORD PTR -96[rbp], 0
	jne	.L35
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L35
	mov	eax, DWORD PTR -84[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	memcpy@PLT
	jmp	.L34
.L40:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 32[rax]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR 8[rdx]
	movsx	rsi, edx
	cqo
	idiv	rsi
	mov	rcx, rdx
	mov	rax, rcx
	mov	DWORD PTR -44[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 8[rax]
	sub	eax, DWORD PTR -44[rbp]
	mov	edx, DWORD PTR -4[rbp]
	cmp	edx, eax
	cmovle	eax, edx
	mov	DWORD PTR -48[rbp], eax
	cmp	DWORD PTR -44[rbp], 0
	jne	.L36
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 8[rax]
	add	eax, 8
	mov	edi, eax
	call	sqlite3_malloc@PLT
	mov	QWORD PTR -56[rbp], rax
	cmp	QWORD PTR -56[rbp], 0
	jne	.L37
	mov	eax, 3082
	jmp	.L31
.L37:
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax], 0
	cmp	QWORD PTR -32[rbp], 0
	je	.L38
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax], rdx
	jmp	.L39
.L38:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
.L39:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 32[rax]
	mov	QWORD PTR -32[rbp], rax
.L36:
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	lea	rcx, 8[rax]
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	add	rcx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	memcpy@PLT
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	add	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -48[rbp]
	sub	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 24[rax], rdx
.L35:
	cmp	DWORD PTR -4[rbp], 0
	jg	.L40
.L34:
	mov	eax, 0
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	memjrnlWrite, .-memjrnlWrite
	.type	memjrnlTruncate, @function
memjrnlTruncate:
.LFB10:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	QWORD PTR -48[rbp], rax
	jge	.L42
	mov	QWORD PTR -8[rbp], 0
	cmp	QWORD PTR -48[rbp], 0
	jne	.L43
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdi, rax
	call	memjrnlFreeChunks
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], 0
	jmp	.L44
.L43:
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 8[rax]
	cdqe
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L45
.L47:
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 8[rax]
	cdqe
	add	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
.L45:
	cmp	QWORD PTR -8[rbp], 0
	je	.L46
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, QWORD PTR -48[rbp]
	jl	.L47
.L46:
	cmp	QWORD PTR -8[rbp], 0
	je	.L44
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	memjrnlFreeChunks
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
.L44:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 40[rax], 0
.L42:
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	memjrnlTruncate, .-memjrnlTruncate
	.type	memjrnlClose, @function
memjrnlClose:
.LFB11:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdi, rax
	call	memjrnlFreeChunks
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	memjrnlClose, .-memjrnlClose
	.type	memjrnlSync, @function
memjrnlSync:
.LFB12:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	memjrnlSync, .-memjrnlSync
	.type	memjrnlFileSize, @function
memjrnlFileSize:
.LFB13:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	memjrnlFileSize, .-memjrnlFileSize
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	MemJournalMethods, @object
	.size	MemJournalMethods, 152
MemJournalMethods:
	.long	1
	.zero	4
	.quad	memjrnlClose
	.quad	memjrnlRead
	.quad	memjrnlWrite
	.quad	memjrnlTruncate
	.quad	memjrnlSync
	.quad	memjrnlFileSize
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.text
	.globl	sqlite3JournalOpen
	.type	sqlite3JournalOpen, @function
sqlite3JournalOpen:
.LFB14:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
mov rax, qword ptr [rbp - 0x28]
	sub	rsp, 160
	mov	QWORD PTR -136[rbp], rdi
	mov	QWORD PTR -144[rbp], rsi
	mov	QWORD PTR -152[rbp], rdx
mov rax, qword ptr [rbp - 0x28]
	mov	DWORD PTR -156[rbp], ecx
	mov	DWORD PTR -160[rbp], r8d
	mov	rax, QWORD PTR -152[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
mov rax, qword ptr [rax + 0x18]
	mov	edx, 80
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	cmp	DWORD PTR -160[rbp], 0
mov rax, qword ptr [rbp - 0x28]
	sete	al
	movzx	eax, al
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
mov rax, qword ptr [rbp - 0x28]
	je	.L56
	mov	ecx, DWORD PTR -156[rbp]
	mov	rdx, QWORD PTR -152[rbp]
	mov	rsi, QWORD PTR -144[rbp]
	mov	rax, QWORD PTR -136[rbp]
	mov	r8d, 0
	mov	rdi, rax
mov rax, qword ptr [rax + 0x18]
mov rax, qword ptr [rbp - 0x28]
	call	sqlite3OsOpen@PLT
	jmp	.L57
.L56:
mov rax, qword ptr [rbp - 0x28]
	cmp	DWORD PTR -160[rbp], 0
	setg	al
	movzx	eax, al
	mov	QWORD PTR -24[rbp], rax
cmp rax, qword ptr [rbp - 0x18]
	cmp	QWORD PTR -24[rbp], 0
	je	.L58
	mov	DWORD PTR -28[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_321805475[rip]
	test	eax, eax
mov eax,0x100
mov rax, qword ptr [rbp - 0x28]
	je	.L59
mov rax, qword ptr [rbp - 0x28]
mov rax, qword ptr [rax + 0x18]
	mov	DWORD PTR -32[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_321805475[rip]
mov rax, qword ptr [rax + 0x18]
mov rax, qword ptr [rbp - 0x28]
	test	eax, eax
	je	.L60
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -160[rbp]
mov rax, qword ptr [rbp - 0x28]
mov rax, qword ptr [rbp - 0x28]
	mov	DWORD PTR 8[rax], edx
mov rdx, qword ptr [rbp - 0x38]
.L60:
mov qword ptr [rbp - 8], rax
	mov	DWORD PTR -36[rbp], 3
mov qword ptr [rbp - 8], rax
	mov	DWORD PTR -40[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_321805475[rip]
mov rax, qword ptr [rbp - 0x28]
	test	eax, eax
	jne	.L61
	mov	DWORD PTR -44[rbp], 3
	mov	DWORD PTR -48[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_321805475[rip]
	test	eax, eax
mov qword ptr [rbp - 8], rax
	jne	.L62
	mov	DWORD PTR -52[rbp], 3
.L62:
	mov	DWORD PTR -56[rbp], 3
	mov	DWORD PTR -60[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_321805475[rip]
	test	eax, eax
	jne	.L63
	mov	DWORD PTR -64[rbp], 3
.L63:
	mov	DWORD PTR -68[rbp], 3
.L61:
	mov	DWORD PTR -72[rbp], 3
.L59:
	mov	DWORD PTR -76[rbp], 3
	mov	DWORD PTR -80[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_321805475[rip]
	test	eax, eax
	jne	.L64
	mov	DWORD PTR -84[rbp], 3
	mov	DWORD PTR -88[rbp], -2
	jmp	.L65
mov rdi, rax
.L66:
	mov	DWORD PTR -108[rbp], 3
.L65:
	mov	eax, DWORD PTR __merger_cond_true_321805475[rip]
	test	eax, eax
mov rax, qword ptr [rax + 8]
	je	.L66
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -92[rbp], 3
	mov	DWORD PTR -96[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_321805475[rip]
	test	eax, eax
	jne	.L67
mov rax, qword ptr [rbp - 0x28]
call 0x100
	mov	DWORD PTR -100[rbp], 3
.L67:
	mov	DWORD PTR -104[rbp], 3
.L64:
add rax, rdx
	mov	DWORD PTR -112[rbp], 3
.L58:
	cmp	QWORD PTR -24[rbp], 0
	jne	.L68
	mov	DWORD PTR -116[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_321805475[rip]
	test	eax, eax
	jne	.L69
	mov	DWORD PTR -120[rbp], 3
	mov	eax, 12
	jmp	.L57
.L69:
	mov	rax, QWORD PTR -8[rbp]
mov rax, qword ptr [rbp - 0x28]
	mov	DWORD PTR 8[rax], 1016
.L68:
mov rax, qword ptr [rax + 0x10]
	mov	DWORD PTR -124[rbp], -2
mov rdx, qword ptr [rax]
	mov	eax, DWORD PTR __merger_cond_true_321805475[rip]
	test	eax, eax
	jne	.L70
	mov	DWORD PTR -128[rbp], 3
.L70:
	mov	rax, QWORD PTR -152[rbp]
	lea	rdx, MemJournalMethods[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -160[rbp]
mov rdx, qword ptr [rbp - 8]
	mov	DWORD PTR 12[rax], edx
	mov	rax, QWORD PTR -8[rbp]
call 0x100
	mov	edx, DWORD PTR -156[rbp]
	mov	DWORD PTR 56[rax], edx
mov rax, qword ptr [rbp - 0x28]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -144[rbp]
mov rax, qword ptr [rbp - 0x28]
	mov	QWORD PTR 72[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -136[rbp]
	mov	QWORD PTR 64[rax], rdx
	mov	eax, 0
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	sqlite3JournalOpen, .-sqlite3JournalOpen
	.globl	sqlite3MemJournalOpen
	.type	sqlite3MemJournalOpen, @function
sqlite3MemJournalOpen:
.LFB15:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	r8d, -1
	mov	ecx, 0
	mov	rdx, rax
	mov	esi, 0
	mov	edi, 0
	call	sqlite3JournalOpen
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	sqlite3MemJournalOpen, .-sqlite3MemJournalOpen
	.globl	sqlite3JournalIsInMemory
	.type	sqlite3JournalIsInMemory, @function
sqlite3JournalIsInMemory:
.LFB16:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	lea	rax, MemJournalMethods[rip]
	cmp	rdx, rax
	sete	al
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	sqlite3JournalIsInMemory, .-sqlite3JournalIsInMemory
	.globl	sqlite3JournalSize
	.type	sqlite3JournalSize, @function
sqlite3JournalSize:
.LFB17:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 4[rax]
	mov	edx, 80
	cmp	eax, edx
	cmovl	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	sqlite3JournalSize, .-sqlite3JournalSize
	.ident	"GCC: (Debian 13.2.0-6) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
