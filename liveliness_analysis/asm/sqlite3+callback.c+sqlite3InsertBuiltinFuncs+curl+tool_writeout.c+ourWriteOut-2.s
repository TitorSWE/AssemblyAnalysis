	.file	"callback.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_241502292
	.data
	.align 4
	.type	__merger_cond_true_241502292, @object
	.size	__merger_cond_true_241502292, 4
__merger_cond_true_241502292:
	.long	1
	.text
	.type	callCollNeeded, @function
callCollNeeded:
.LFB6:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 368[rax]
	test	rax, rax
	je	.L2
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbStrDup@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L6
	mov	rax, QWORD PTR -40[rbp]
	mov	r8, QWORD PTR 368[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 384[rax]
	mov	rcx, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -44[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	r8
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbFree@PLT
.L2:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 376[rax]
	test	rax, rax
	je	.L1
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3ValueNew@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	r8d, 0
	mov	ecx, 1
	mov	esi, -1
	mov	rdi, rax
	call	sqlite3ValueSetStr@PLT
	mov	rax, QWORD PTR -16[rbp]
	mov	esi, 2
	mov	rdi, rax
	call	sqlite3ValueText@PLT
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	je	.L5
	mov	rax, QWORD PTR -40[rbp]
	mov	r8, QWORD PTR 376[rax]
	mov	rax, QWORD PTR -40[rbp]
	movzx	eax, BYTE PTR 100[rax]
	movzx	edx, al
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 384[rax]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	r8
.L5:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	sqlite3ValueFree@PLT
	jmp	.L1
.L6:
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	callCollNeeded, .-callCollNeeded
	.type	synthCollSeq, @function
synthCollSeq:
.LFB7:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L8
.L11:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, aEnc.0[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	esi, al
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	ecx, 0
	mov	rdi, rax
	call	sqlite3FindCollSeq
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	je	.L9
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	edx, 40
	mov	rsi, rcx
	mov	rdi, rax
	call	memcpy@PLT
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR 32[rax], 0
	mov	eax, 0
	jmp	.L10
.L9:
	add	DWORD PTR -4[rbp], 1
.L8:
	cmp	DWORD PTR -4[rbp], 2
	jle	.L11
	mov	eax, 1
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	synthCollSeq, .-synthCollSeq
	.globl	sqlite3CheckCollSeq
	.type	sqlite3CheckCollSeq, @function
sqlite3CheckCollSeq:
.LFB8:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	cmp	QWORD PTR -48[rbp], 0
	je	.L13
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L13
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 100[rax]
	movzx	esi, al
	mov	rcx, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3GetCollSeq
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	jne	.L13
	mov	eax, 1
	jmp	.L14
.L13:
	mov	eax, 0
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	sqlite3CheckCollSeq, .-sqlite3CheckCollSeq
	.type	findCollSeqEntry, @function
findCollSeqEntry:
.LFB9:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	DWORD PTR -52[rbp], edx
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, 616[rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	sqlite3HashFind@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L16
	cmp	DWORD PTR -52[rbp], 0
	je	.L16
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	sqlite3Strlen30@PLT
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 120[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbMallocZero@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L16
	mov	QWORD PTR -24[rbp], 0
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 120[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 8[rax], 1
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 40
	mov	rdx, QWORD PTR -8[rbp]
	add	rdx, 120
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 40
	mov	BYTE PTR 8[rax], 2
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 80
	mov	rdx, QWORD PTR -8[rbp]
	add	rdx, 120
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 80
	mov	BYTE PTR 8[rax], 3
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memcpy@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -40[rbp]
	lea	rcx, 616[rdx]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	sqlite3HashInsert@PLT
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	je	.L16
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3OomFault@PLT
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbFree@PLT
	mov	QWORD PTR -8[rbp], 0
.L16:
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	findCollSeqEntry, .-findCollSeqEntry
	.globl	sqlite3FindCollSeq
	.type	sqlite3FindCollSeq, @function
sqlite3FindCollSeq:
.LFB10:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	eax, esi
	mov	QWORD PTR -40[rbp], rdx
	mov	DWORD PTR -32[rbp], ecx
	mov	BYTE PTR -28[rbp], al
	cmp	QWORD PTR -40[rbp], 0
	je	.L19
	mov	edx, DWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	findCollSeqEntry
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L20
	movzx	edx, BYTE PTR -28[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	sub	rax, 40
	add	QWORD PTR -8[rbp], rax
	jmp	.L20
.L19:
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
.L20:
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	sqlite3FindCollSeq, .-sqlite3FindCollSeq
	.globl	sqlite3SetTextEncoding
	.type	sqlite3SetTextEncoding, @function
sqlite3SetTextEncoding:
.LFB11:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	eax, esi
	mov	BYTE PTR -12[rbp], al
	mov	rax, QWORD PTR -8[rbp]
	movzx	edx, BYTE PTR -12[rbp]
	mov	BYTE PTR 100[rax], dl
	movzx	esi, BYTE PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	ecx, 0
	lea	rdx, sqlite3StrBINARY[rip]
	mov	rdi, rax
	call	sqlite3FindCollSeq
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	sqlite3ExpirePreparedStatements@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	sqlite3SetTextEncoding, .-sqlite3SetTextEncoding
	.section	.rodata
	.align 8
.LC0:
	.string	"no such collation sequence: %s"
	.text
	.globl	sqlite3GetCollSeq
	.type	sqlite3GetCollSeq, @function
sqlite3GetCollSeq:
.LFB12:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	eax, esi
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -48[rbp], rcx
	mov	BYTE PTR -28[rbp], al
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L24
	movzx	esi, BYTE PTR -28[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, 0
	mov	rdi, rax
	call	sqlite3FindCollSeq
	mov	QWORD PTR -8[rbp], rax
.L24:
	cmp	QWORD PTR -8[rbp], 0
	je	.L25
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L26
.L25:
	movzx	ecx, BYTE PTR -28[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	callCollNeeded
	movzx	esi, BYTE PTR -28[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, 0
	mov	rdi, rax
	call	sqlite3FindCollSeq
	mov	QWORD PTR -8[rbp], rax
.L26:
	cmp	QWORD PTR -8[rbp], 0
	je	.L27
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L27
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	synthCollSeq
	test	eax, eax
	je	.L27
	mov	QWORD PTR -8[rbp], 0
.L27:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L28
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, .LC0[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	sqlite3ErrorMsg@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR 24[rax], 257
.L28:
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	sqlite3GetCollSeq, .-sqlite3GetCollSeq
	.globl	sqlite3LocateCollSeq
	.type	sqlite3LocateCollSeq, @function
sqlite3LocateCollSeq:
.LFB13:
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
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 100[rax]
	mov	BYTE PTR -17[rbp], al
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 197[rax]
	mov	BYTE PTR -18[rbp], al
	movzx	ecx, BYTE PTR -18[rbp]
	movzx	esi, BYTE PTR -17[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	sqlite3FindCollSeq
	mov	QWORD PTR -8[rbp], rax
	cmp	BYTE PTR -18[rbp], 0
	jne	.L31
	cmp	QWORD PTR -8[rbp], 0
	je	.L32
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L31
.L32:
	movzx	esi, BYTE PTR -17[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3GetCollSeq
	mov	QWORD PTR -8[rbp], rax
.L31:
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	sqlite3LocateCollSeq, .-sqlite3LocateCollSeq
	.type	matchQuality, @function
matchQuality:
.LFB14:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	eax, edx
	mov	BYTE PTR -32[rbp], al
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cmp	DWORD PTR -28[rbp], eax
	je	.L35
	cmp	DWORD PTR -28[rbp], -2
	jne	.L36
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L37
	mov	eax, 0
	jmp	.L39
.L37:
	mov	eax, 6
	jmp	.L39
.L36:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	js	.L35
	mov	eax, 0
	jmp	.L39
.L35:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cmp	DWORD PTR -28[rbp], eax
	jne	.L40
	mov	DWORD PTR -4[rbp], 4
	jmp	.L41
.L40:
	mov	DWORD PTR -4[rbp], 1
.L41:
	movzx	edx, BYTE PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	and	eax, 3
	cmp	edx, eax
	jne	.L42
	add	DWORD PTR -4[rbp], 2
	jmp	.L43
.L42:
	movzx	edx, BYTE PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	and	eax, edx
	and	eax, 2
	test	eax, eax
	je	.L43
	add	DWORD PTR -4[rbp], 1
.L43:
	mov	eax, DWORD PTR -4[rbp]
.L39:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	matchQuality, .-matchQuality
	.globl	sqlite3FunctionSearch
	.type	sqlite3FunctionSearch, @function
sqlite3FunctionSearch:
.LFB15:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	QWORD PTR -32[rbp], rsi
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, sqlite3BuiltinFunctions[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L45
.L48:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 56[rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3StrICmp@PLT
	test	eax, eax
	jne	.L46
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L47
.L46:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 64[rax]
	mov	QWORD PTR -8[rbp], rax
.L45:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L48
	mov	eax, 0
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	sqlite3FunctionSearch, .-sqlite3FunctionSearch
	.globl	sqlite3InsertBuiltinFuncs
	.type	sqlite3InsertBuiltinFuncs, @function
sqlite3InsertBuiltinFuncs:
.LFB16:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 464
	mov	QWORD PTR -456[rbp], rdi
	mov	DWORD PTR -460[rbp], esi
mov rdi, rax
	mov	DWORD PTR -8[rbp], -2
lea rdx, [rbp - 0x260]
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
cmp eax,0x100
	test	eax, eax
	jne	.L50
	mov	DWORD PTR -436[rbp], 3
	jmp	.L49
.L50:
	mov	DWORD PTR -12[rbp], -2
mov eax, dword ptr [rbp - 0x18]
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
cmp byte ptr [rbp - 0x12], 0
call 0x100
	test	eax, eax
	jne	.L52
call 0x100
	mov	DWORD PTR -16[rbp], 3
.L52:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L53
mov rcx, qword ptr [rbp - 0x10]
.L91:
	mov	eax, DWORD PTR -4[rbp]
cmp eax,0x100
mov rax, qword ptr [rbp - 8]
mov qword ptr [rbp - 8], rax
	movsx	rdx, eax
	mov	rax, rdx
mov rax, qword ptr [rbp - 0x38]
	sal	rax, 3
call 0x100
	add	rax, rdx
movzx eax, byte ptr [rax]
add rax, 1
mov rax, qword ptr [rbp - 0x10]
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -456[rbp]
mov rax, qword ptr [rbp - 0x10]
mov rdi, rax
	add	rax, rdx
	mov	rax, QWORD PTR 56[rax]
	mov	QWORD PTR -24[rbp], rax
call 0x100
call 0x100
	mov	rax, QWORD PTR -24[rbp]
mov rax, qword ptr [rbp - 8]
	mov	rdi, rax
nop
	call	sqlite3Strlen30@PLT
	mov	DWORD PTR -28[rbp], eax
	mov	rax, QWORD PTR -24[rbp]
mov edi,0x100
	movzx	eax, BYTE PTR [rax]
mov rax, qword ptr [rbp - 0x10]
	movsx	edx, al
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
mov eax, dword ptr [rbp - 0x18]
	movsx	rdx, eax
	imul	rdx, rdx, -1307163959
	shr	rdx, 32
add rax, 1
	add	edx, eax
mov rdi, rax
add qword ptr [rbp - 0x10], 2
	sar	edx, 4
mov rcx, rax
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	mov	DWORD PTR -32[rbp], edx
call 0x100
	mov	edx, DWORD PTR -32[rbp]
	imul	edx, edx, 23
mov edi,0x100
test rax, rax
	sub	eax, edx
	mov	DWORD PTR -32[rbp], eax
	mov	rdx, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	edi, eax
	call	sqlite3FunctionSearch
mov rax, qword ptr [rbp - 0x10]
add rax, 1
add qword ptr [rbp - 0x10], 2
	mov	QWORD PTR -40[rbp], rax
add rax, 1
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -48[rbp], 0
	je	.L54
	mov	DWORD PTR -52[rbp], -2
mov rsi, rdx
cmp eax,0x100
movzx eax, byte ptr [rax]
call 0x100
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
movzx eax, byte ptr [rax]
mov rsi, rdx
mov rdi, rax
mov rax, qword ptr [rbp - 0x270]
	je	.L55
	mov	eax, DWORD PTR -4[rbp]
mov eax, dword ptr [rbp - 0x18]
	movsx	rdx, eax
mov rax, qword ptr [rbp - 8]
mov rax, qword ptr [rbp - 8]
movzx eax, byte ptr [rax]
	mov	rax, rdx
mov rax, qword ptr [rbp - 0x38]
	sal	rax, 3
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -456[rbp]
mov rsi, rdx
	add	rdx, rax
add rax, rax
	mov	rax, QWORD PTR -40[rbp]
cmp eax,0x100
	mov	rax, QWORD PTR 16[rax]
movsx eax, al
mov rax, qword ptr [rbp - 8]
	mov	QWORD PTR 16[rdx], rax
	mov	eax, DWORD PTR -4[rbp]
call 0x100
mov ecx, dword ptr [rbp - 0x274]
	movsx	rdx, eax
	mov	rax, rdx
sub rax, qword ptr [rbp - 0x10]
	sal	rax, 3
	add	rax, rdx
add qword ptr [rbp - 0x10], 2
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -456[rbp]
call 0x100
add rax, 1
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 16[rax], rdx
.L55:
	mov	DWORD PTR -56[rbp], 3
mov rax, qword ptr [rbp - 8]
	mov	DWORD PTR -60[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L56
	mov	DWORD PTR -64[rbp], 3
mov rdx, qword ptr [rbp - 8]
	mov	DWORD PTR -68[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
mov rdi, rax
	jne	.L57
mov qword ptr [rbp - 0x10], rax
call 0x100
mov rax, qword ptr [rbp - 0x10]
cmp al,0x100
lea rax, [rbp - 0x260]
call 0x100
	mov	DWORD PTR -72[rbp], 3
	mov	DWORD PTR -76[rbp], -2
mov edi, eax
movzx eax, byte ptr [rax]
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L58
mov rsi, rdx
mov rax, qword ptr [rbp - 0x38]
mov rdi, rax
call 0x100
	mov	DWORD PTR -252[rbp], 3
mov eax, 0
	jmp	.L53
movsx eax, al
xor eax, 1
call 0x100
.L58:
	mov	DWORD PTR -80[rbp], 3
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -84[rbp], -2
add rax, 1
	jmp	.L59
.L73:
	mov	DWORD PTR -88[rbp], 3
mov rax, qword ptr [rbp - 0x10]
nop
	mov	DWORD PTR -92[rbp], -2
mov rax, qword ptr [rbp - 8]
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
mov rdx, qword ptr [rbp - 0x270]
	test	eax, eax
	jne	.L60
	mov	DWORD PTR -100[rbp], 3
mov rdi, rax
	mov	DWORD PTR -104[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
cmp eax,0x100
mov rsi, rax
cmp byte ptr [rbp - 0x12], 0
	jne	.L61
	mov	DWORD PTR -108[rbp], 3
cmp eax,0x100
	mov	DWORD PTR -112[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
test al, al
cmp eax,0x100
	jne	.L62
	mov	DWORD PTR -116[rbp], 3
add rax, rax
.L62:
mov rsi, rax
	mov	DWORD PTR -120[rbp], 3
.L61:
	mov	DWORD PTR -124[rbp], 3
	mov	DWORD PTR -128[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
add rax, 1
	test	eax, eax
	jne	.L63
mov rax, qword ptr [rbp - 8]
movzx eax, byte ptr [rax]
	mov	DWORD PTR -132[rbp], 3
	mov	DWORD PTR -136[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L64
	mov	DWORD PTR -140[rbp], 3
.L64:
	mov	DWORD PTR -144[rbp], 3
	mov	DWORD PTR -148[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L65
	mov	DWORD PTR -152[rbp], 3
	mov	DWORD PTR -156[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L66
	mov	DWORD PTR -160[rbp], 3
.L66:
	mov	DWORD PTR -164[rbp], 3
	mov	DWORD PTR -168[rbp], -2
mov rax, qword ptr [rbp - 0x10]
mov rsi, rax
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
call 0x100
lea rdx, [rbp - 0x260]
	test	eax, eax
mov esi, 1
mov rax, qword ptr [rax + 0x20]
	jne	.L67
mov rsi, rax
	mov	DWORD PTR -172[rbp], 3
	mov	DWORD PTR -176[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L68
	mov	DWORD PTR -180[rbp], 3
mov qword ptr [rbp - 8], rax
mov rax, qword ptr [rbp - 0x10]
.L68:
	mov	DWORD PTR -184[rbp], 3
	mov	DWORD PTR -188[rbp], -2
add rax, rax
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
mov rdi, rax
	test	eax, eax
	jne	.L69
mov rdx, qword ptr [rbp - 8]
mov rcx, rax
	mov	DWORD PTR -192[rbp], 3
	mov	DWORD PTR -196[rbp], -2
mov rax, qword ptr [rbp - 0x38]
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
mov rax, qword ptr [rbp - 0x38]
mov esi,0x100
mov rdi, rax
	test	eax, eax
	jne	.L70
	mov	DWORD PTR -200[rbp], 3
.L70:
	mov	DWORD PTR -204[rbp], 3
	mov	DWORD PTR -208[rbp], -2
mov rdx, qword ptr [rbp - 8]
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L71
	mov	DWORD PTR -212[rbp], 3
.L71:
	mov	DWORD PTR -216[rbp], 3
movsx eax, al
.L69:
	mov	DWORD PTR -220[rbp], 3
call 0x100
mov rdx, qword ptr [rbp - 8]
mov rsi, rax
.L67:
call 0x100
	mov	DWORD PTR -224[rbp], 3
.L65:
	mov	DWORD PTR -228[rbp], 3
.L63:
	mov	DWORD PTR -232[rbp], 3
mov rdi, rax
	jmp	.L72
.L60:
	mov	DWORD PTR -96[rbp], 3
mov esi, 1
.L59:
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	je	.L73
.L72:
add rax, rax
cmp eax,0x100
	mov	DWORD PTR -236[rbp], 3
	mov	DWORD PTR -240[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L74
	mov	DWORD PTR -244[rbp], 3
.L74:
call 0x100
	mov	DWORD PTR -248[rbp], 3
mov rsi, rcx
.L57:
	mov	DWORD PTR -256[rbp], 3
	mov	DWORD PTR -260[rbp], -2
call 0x100
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
mov qword ptr [rbp - 0x10], rax
add rax, 1
	test	eax, eax
	jne	.L75
	mov	DWORD PTR -264[rbp], 3
call 0x100
	mov	DWORD PTR -268[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L76
	mov	DWORD PTR -272[rbp], 3
	mov	DWORD PTR -276[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
call 0x100
	test	eax, eax
	jne	.L77
	mov	DWORD PTR -280[rbp], 3
cmp eax,0x100
test al, al
	mov	DWORD PTR -284[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
mov rax, qword ptr [rbp - 0x10]
	jne	.L78
cmp byte ptr [rbp - 0x12], 0
	mov	DWORD PTR -288[rbp], 3
	mov	DWORD PTR -292[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
cmp al,0x100
	test	eax, eax
	jne	.L79
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -296[rbp], 3
.L79:
mov rsi, rdx
	mov	DWORD PTR -300[rbp], 3
.L78:
	mov	DWORD PTR -304[rbp], 3
.L77:
	mov	DWORD PTR -308[rbp], 3
mov rax, qword ptr [rbp - 8]
mov rdi, rax
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -312[rbp], -2
mov rax, qword ptr [rbp - 0x10]
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L80
call 0x100
	mov	DWORD PTR -316[rbp], 3
.L80:
	mov	DWORD PTR -320[rbp], 3
call 0x100
.L76:
	mov	DWORD PTR -324[rbp], 3
mov rdi, rax
mov qword ptr [rbp - 0x38], rax
	mov	DWORD PTR -328[rbp], -2
test al, al
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L81
add qword ptr [rbp - 0x10], 8
mov esi,0x100
mov rdi, rax
	mov	DWORD PTR -332[rbp], 3
.L81:
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -336[rbp], 3
.L75:
	mov	DWORD PTR -340[rbp], 3
.L56:
	mov	DWORD PTR -344[rbp], 3
movzx eax, byte ptr [rax]
.L54:
call 0x100
	cmp	QWORD PTR -48[rbp], 0
	jne	.L82
	mov	DWORD PTR -348[rbp], -2
mov rdi, rax
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	je	.L83
call 0x100
call 0x100
call 0x100
mov rax, qword ptr [rbp - 0x50]
mov eax, dword ptr [rbp - 0x18]
	mov	DWORD PTR -352[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	je	.L84
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
movzx eax, byte ptr [rax]
	mov	rax, rdx
	sal	rax, 3
mov rdi, rax
mov qword ptr [rbp - 0x38], rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
mov rax, qword ptr [rbp - 8]
cmp al,0x100
	mov	rax, QWORD PTR -456[rbp]
add rax, 1
mov byte ptr [rax], 0
	add	rax, rdx
cmp eax,0x100
mov rax, qword ptr [rbp - 8]
add rax, 1
	mov	QWORD PTR 16[rax], 0
	mov	eax, DWORD PTR -4[rbp]
movzx eax, byte ptr [rax]
	movsx	rdx, eax
mov byte ptr [rbp - 0x12], 0
mov rdx, qword ptr [rbp - 0x270]
	mov	rax, rdx
	sal	rax, 3
add qword ptr [rbp - 0x10], 2
mov rdi, rax
mov rdi, rax
	add	rax, rdx
cmp qword ptr [rbp - 0x38], 0
	sal	rax, 3
mov edi,0x100
mov qword ptr [rbp - 0x50], rax
	mov	rdx, rax
	mov	rax, QWORD PTR -456[rbp]
mov edi, eax
	add	rdx, rax
cmp al,0x100
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
cmp qword ptr [rbp - 0x38], 0
	lea	rax, sqlite3BuiltinFunctions[rip]
	mov	rax, QWORD PTR [rcx+rax]
	mov	QWORD PTR 64[rdx], rax
mov rax, qword ptr [rbp - 0x10]
	mov	eax, DWORD PTR -4[rbp]
call 0x100
call 0x100
	movsx	rdx, eax
mov edi, eax
	mov	rax, rdx
mov rdi, rax
add rax, 1
mov rax, qword ptr [rbp - 0x10]
mov byte ptr [rbp - 0x12], 0
add rax, 1
	sal	rax, 3
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
cmp eax,0x100
	mov	rax, QWORD PTR -456[rbp]
mov qword ptr [rbp - 8], rax
	lea	rcx, [rdx+rax]
mov rdi, rax
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
mov rax, qword ptr [rbp - 0x270]
	lea	rax, sqlite3BuiltinFunctions[rip]
	mov	QWORD PTR [rdx+rax], rcx
mov rdi, rax
movzx eax, byte ptr [rax]
.L84:
movzx eax, byte ptr [rax]
mov rsi, rax
mov rax, qword ptr [rbp - 8]
mov eax, dword ptr [rbp - 0x18]
	mov	DWORD PTR -356[rbp], 3
	mov	DWORD PTR -360[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L85
	mov	DWORD PTR -364[rbp], 3
test al, al
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -368[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L86
	mov	DWORD PTR -372[rbp], 3
.L86:
	mov	DWORD PTR -376[rbp], 3
mov edx, 7
call 0x100
	mov	DWORD PTR -380[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L87
	mov	DWORD PTR -384[rbp], 3
	mov	DWORD PTR -388[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
mov rax, qword ptr [rbp - 0x10]
	jne	.L88
	mov	DWORD PTR -392[rbp], 3
.L88:
mov rdi, rax
mov rdx, qword ptr [rbp - 0x50]
mov rax, qword ptr [rbp - 8]
	mov	DWORD PTR -396[rbp], 3
	mov	DWORD PTR -400[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L89
	mov	DWORD PTR -404[rbp], 3
mov rsi, rax
.L89:
	mov	DWORD PTR -408[rbp], 3
.L87:
	mov	DWORD PTR -412[rbp], 3
.L85:
sub rax, qword ptr [rbp - 0x10]
mov rsi, rcx
	mov	DWORD PTR -416[rbp], 3
.L83:
	mov	DWORD PTR -420[rbp], 3
	mov	DWORD PTR -424[rbp], -2
mov rax, qword ptr [rbp - 8]
	mov	eax, DWORD PTR __merger_cond_true_241502292[rip]
	test	eax, eax
	jne	.L90
movzx eax, byte ptr [rax]
	mov	DWORD PTR -428[rbp], 3
.L90:
	mov	DWORD PTR -432[rbp], 3
cmp al,0x100
mov rax, qword ptr [rdx + rax]
call 0x100
add rax, rax
movsx eax, al
.L82:
mov qword ptr [rbp - 0x10], rax
mov edx, 8
movzx eax, byte ptr [rax]
mov rdi, rax
	add	DWORD PTR -4[rbp], 1
.L53:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -460[rbp]
mov rax, qword ptr [rbp - 0x10]
	jl	.L91
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	sqlite3InsertBuiltinFuncs, .-sqlite3InsertBuiltinFuncs
	.globl	sqlite3FindFunction
	.type	sqlite3FindFunction, @function
sqlite3FindFunction:
.LFB17:
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
	mov	eax, ecx
	mov	edx, r8d
	mov	BYTE PTR -88[rbp], al
	mov	eax, edx
	mov	BYTE PTR -92[rbp], al
	mov	QWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	sqlite3Strlen30@PLT
	mov	DWORD PTR -36[rbp], eax
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 592[rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	sqlite3HashFind@PLT
	mov	QWORD PTR -8[rbp], rax
	jmp	.L93
.L95:
	movzx	edx, BYTE PTR -88[rbp]
	mov	ecx, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	matchQuality
	mov	DWORD PTR -60[rbp], eax
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L94
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -60[rbp]
	mov	DWORD PTR -20[rbp], eax
.L94:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
.L93:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L95
	cmp	BYTE PTR -92[rbp], 0
	jne	.L96
	cmp	QWORD PTR -16[rbp], 0
	je	.L97
	mov	rax, QWORD PTR -72[rbp]
	mov	eax, DWORD PTR 44[rax]
	and	eax, 2
	test	eax, eax
	je	.L96
.L97:
	mov	DWORD PTR -20[rbp], 0
	mov	rax, QWORD PTR -80[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cdqe
	lea	rdx, sqlite3UpperToLower[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	edx, al
	mov	eax, DWORD PTR -36[rbp]
	add	eax, edx
	movsx	rdx, eax
	imul	rdx, rdx, -1307163959
	shr	rdx, 32
	add	edx, eax
	sar	edx, 4
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	mov	DWORD PTR -40[rbp], edx
	mov	edx, DWORD PTR -40[rbp]
	imul	edx, edx, 23
	sub	eax, edx
	mov	DWORD PTR -40[rbp], eax
	mov	rdx, QWORD PTR -80[rbp]
	mov	eax, DWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	edi, eax
	call	sqlite3FunctionSearch
	mov	QWORD PTR -8[rbp], rax
	jmp	.L98
.L100:
	movzx	edx, BYTE PTR -88[rbp]
	mov	ecx, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	matchQuality
	mov	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L99
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR -20[rbp], eax
.L99:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
.L98:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L100
.L96:
	cmp	BYTE PTR -92[rbp], 0
	je	.L101
	cmp	DWORD PTR -20[rbp], 5
	jg	.L101
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 73[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbMallocZero@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L101
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 72[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 56[rax], rdx
	mov	eax, DWORD PTR -84[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -16[rbp]
	mov	BYTE PTR [rax], dl
	movzx	edx, BYTE PTR -88[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR 4[rax], edx
	mov	eax, DWORD PTR -36[rbp]
	add	eax, 1
	movsx	rdx, eax
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, 72[rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	memcpy@PLT
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 56[rax]
	mov	QWORD PTR -32[rbp], rax
	jmp	.L102
.L103:
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cdqe
	lea	rdx, sqlite3UpperToLower[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	rax, QWORD PTR -32[rbp]
	mov	BYTE PTR [rax], dl
	add	QWORD PTR -32[rbp], 1
.L102:
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L103
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 56[rax]
	mov	rdx, QWORD PTR -72[rbp]
	lea	rcx, 592[rdx]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	sqlite3HashInsert@PLT
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	jne	.L104
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbFree@PLT
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	sqlite3OomFault@PLT
	mov	eax, 0
	jmp	.L105
.L104:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
.L101:
	cmp	QWORD PTR -16[rbp], 0
	je	.L106
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L107
	cmp	BYTE PTR -92[rbp], 0
	je	.L106
.L107:
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L105
.L106:
	mov	eax, 0
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	sqlite3FindFunction, .-sqlite3FindFunction
	.globl	sqlite3SchemaClear
	.type	sqlite3SchemaClear, @function
sqlite3SchemaClear:
.LFB18:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 880
	mov	QWORD PTR -872[rbp], rdi
	mov	rax, QWORD PTR -872[rbp]
	mov	QWORD PTR -16[rbp], rax
	lea	rax, -864[rbp]
	mov	edx, 784
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rcx]
	mov	rdx, QWORD PTR 16[rcx]
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR 24[rcx]
	mov	QWORD PTR -32[rbp], rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 56[rcx]
	mov	rdx, QWORD PTR 64[rcx]
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR 72[rcx]
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 56
	mov	rdi, rax
	call	sqlite3HashInit@PLT
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 32
	mov	rdi, rax
	call	sqlite3HashClear@PLT
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L109
.L110:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	lea	rax, -864[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DeleteTrigger@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
.L109:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L110
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	sqlite3HashClear@PLT
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 8
	mov	rdi, rax
	call	sqlite3HashInit@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L111
.L112:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -24[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -864[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DeleteTable@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
.L111:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L112
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	sqlite3HashClear@PLT
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 80
	mov	rdi, rax
	call	sqlite3HashClear@PLT
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 104[rax], 0
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, WORD PTR 114[rax]
	movzx	eax, ax
	and	eax, 1
	test	eax, eax
	je	.L113
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR 4[rax], edx
.L113:
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, WORD PTR 114[rax]
	and	eax, -10
	mov	edx, eax
	mov	rax, QWORD PTR -16[rbp]
	mov	WORD PTR 114[rax], dx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	sqlite3SchemaClear, .-sqlite3SchemaClear
	.globl	sqlite3SchemaGet
	.type	sqlite3SchemaGet, @function
sqlite3SchemaGet:
.LFB19:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	cmp	QWORD PTR -32[rbp], 0
	je	.L115
	mov	rax, QWORD PTR -32[rbp]
	lea	rdx, sqlite3SchemaClear[rip]
	mov	esi, 120
	mov	rdi, rax
	call	sqlite3BtreeSchema@PLT
	mov	QWORD PTR -8[rbp], rax
	jmp	.L116
.L115:
	mov	esi, 120
	mov	edi, 0
	call	sqlite3DbMallocZero@PLT
	mov	QWORD PTR -8[rbp], rax
.L116:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L117
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3OomFault@PLT
	jmp	.L118
.L117:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 112[rax]
	test	al, al
	jne	.L118
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 8
	mov	rdi, rax
	call	sqlite3HashInit@PLT
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 32
	mov	rdi, rax
	call	sqlite3HashInit@PLT
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 56
	mov	rdi, rax
	call	sqlite3HashInit@PLT
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 80
	mov	rdi, rax
	call	sqlite3HashInit@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 113[rax], 1
.L118:
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	sqlite3SchemaGet, .-sqlite3SchemaGet
	.section	.rodata
	.type	aEnc.0, @object
	.size	aEnc.0, 3
aEnc.0:
	.ascii	"\003\002\001"
	.ident	"GCC: (Debian 13.2.0-6) 13.2.0"
	.section	.note.GNU-stack,"",@progbits