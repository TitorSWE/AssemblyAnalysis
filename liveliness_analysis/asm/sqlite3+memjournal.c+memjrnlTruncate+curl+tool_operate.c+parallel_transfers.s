	.file	"memjournal.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_916882859
	.data
	.align 4
	.type	__merger_cond_true_916882859, @object
	.size	__merger_cond_true_916882859, 4
__merger_cond_true_916882859:
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
	sub	rsp, 288
	mov	QWORD PTR -280[rbp], rdi
	mov	QWORD PTR -288[rbp], rsi
	mov	DWORD PTR -36[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L42
	mov	DWORD PTR -272[rbp], 3
	mov	eax, 12
	jmp	.L43
.L42:
	mov	DWORD PTR -40[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L44
	mov	DWORD PTR -268[rbp], 3
	mov	eax, 12
	jmp	.L43
.L44:
	mov	rax, QWORD PTR -280[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	QWORD PTR -288[rbp], rax
	setl	al
	movzx	eax, al
	mov	QWORD PTR -56[rbp], rax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L45
.L72:
	mov	DWORD PTR -4[rbp], 0
	mov	QWORD PTR -16[rbp], 0
	cmp	QWORD PTR -288[rbp], 0
	sete	al
	movzx	eax, al
	mov	QWORD PTR -64[rbp], rax
	cmp	QWORD PTR -64[rbp], 0
	je	.L46
	mov	DWORD PTR -68[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L47
	mov	DWORD PTR -92[rbp], 3
	jmp	.L48
.L47:
	mov	DWORD PTR -72[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	je	.L49
	mov	DWORD PTR -20[rbp], 0
	jmp	.L50
.L52:
	mov	DWORD PTR -80[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	je	.L51
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdi, rax
	call	memjrnlFreeChunks
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR 16[rax], 0
.L51:
	mov	DWORD PTR -84[rbp], 3
.L50:
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -20[rbp], edx
	test	eax, eax
	je	.L52
	mov	DWORD PTR -76[rbp], 3
.L49:
	mov	DWORD PTR -88[rbp], 3
.L46:
	mov	DWORD PTR -96[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L53
	mov	DWORD PTR -100[rbp], 3
.L53:
	cmp	QWORD PTR -64[rbp], 0
	jne	.L54
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR 8[rax]
	cdqe
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L55
.L63:
	mov	DWORD PTR -104[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	je	.L56
	mov	DWORD PTR -108[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	je	.L57
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR 8[rax]
	cdqe
	add	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
.L57:
	mov	DWORD PTR -112[rbp], 3
	mov	DWORD PTR -116[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L58
	mov	DWORD PTR -120[rbp], 3
.L58:
	mov	DWORD PTR -124[rbp], 3
	mov	DWORD PTR -128[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L59
	mov	DWORD PTR -132[rbp], 3
	mov	DWORD PTR -136[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L60
	mov	DWORD PTR -140[rbp], 3
.L60:
	mov	DWORD PTR -144[rbp], 3
	mov	DWORD PTR -148[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L61
	mov	DWORD PTR -152[rbp], 3
.L61:
	mov	DWORD PTR -156[rbp], 3
.L59:
	mov	DWORD PTR -160[rbp], 3
.L56:
	mov	DWORD PTR -164[rbp], 3
.L55:
	cmp	QWORD PTR -16[rbp], 0
	je	.L62
	mov	rax, QWORD PTR -32[rbp]
	cmp	rax, QWORD PTR -288[rbp]
	jl	.L63
.L62:
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -176[rbp], rax
	cmp	QWORD PTR -176[rbp], 0
	je	.L64
	mov	DWORD PTR -180[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L65
	mov	DWORD PTR -192[rbp], 3
	jmp	.L45
.L65:
	mov	DWORD PTR -184[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L66
	mov	DWORD PTR -188[rbp], 3
	jmp	.L48
.L66:
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	memjrnlFreeChunks
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], 0
.L64:
	mov	DWORD PTR -196[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	je	.L67
	mov	DWORD PTR -200[rbp], -2
	mov	DWORD PTR -204[rbp], 3
.L67:
	mov	DWORD PTR -208[rbp], 3
	mov	DWORD PTR -212[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L68
	mov	DWORD PTR -216[rbp], 3
	mov	DWORD PTR -220[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L69
	mov	DWORD PTR -224[rbp], 3
.L69:
	mov	DWORD PTR -228[rbp], 3
	mov	DWORD PTR -232[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L70
	mov	DWORD PTR -236[rbp], 3
.L70:
	mov	DWORD PTR -240[rbp], 3
.L68:
	mov	DWORD PTR -244[rbp], 3
	mov	DWORD PTR -248[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L71
	mov	DWORD PTR -252[rbp], 3
.L71:
	mov	DWORD PTR -256[rbp], 3
.L54:
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -288[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR 48[rax], 0
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR 40[rax], 0
.L45:
	cmp	QWORD PTR -56[rbp], 0
	je	.L48
	cmp	DWORD PTR -4[rbp], 0
	jne	.L72
.L48:
	mov	DWORD PTR -260[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_916882859[rip]
	test	eax, eax
	jne	.L73
	mov	DWORD PTR -264[rbp], 3
.L73:
	mov	eax, 0
.L43:
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
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	DWORD PTR -44[rbp], ecx
	mov	DWORD PTR -48[rbp], r8d
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 80
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	cmp	DWORD PTR -48[rbp], 0
	jne	.L81
	mov	ecx, DWORD PTR -44[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r8d, 0
	mov	rdi, rax
	call	sqlite3OsOpen@PLT
	jmp	.L82
.L81:
	cmp	DWORD PTR -48[rbp], 0
	jle	.L83
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -48[rbp]
	mov	DWORD PTR 8[rax], edx
	jmp	.L84
.L83:
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 8[rax], 1016
.L84:
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, MemJournalMethods[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -48[rbp]
	mov	DWORD PTR 12[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -44[rbp]
	mov	DWORD PTR 56[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 72[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 64[rax], rdx
	mov	eax, 0
.L82:
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
