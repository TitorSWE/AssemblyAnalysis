	.file	"callback.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_697598035
	.data
	.align 4
	.type	__merger_cond_true_697598035, @object
	.size	__merger_cond_true_697598035, 4
__merger_cond_true_697598035:
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
	sub	rsp, 64
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 100[rax]
	mov	BYTE PTR -17[rbp], al
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 197[rax]
mov rax, qword ptr [rbp - 0x18]
	mov	BYTE PTR -18[rbp], al
	movzx	ecx, BYTE PTR -18[rbp]
	movzx	esi, BYTE PTR -17[rbp]
call 0x100
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	sqlite3FindCollSeq
	mov	QWORD PTR -8[rbp], rax
	cmp	BYTE PTR -18[rbp], 0
	jne	.L31
	cmp	QWORD PTR -8[rbp], 0
	je	.L32
mov rax, qword ptr [rbp - 8]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L31
.L32:
	mov	eax, 1
	jmp	.L33
.L31:
	mov	eax, 0
.L33:
	cdqe
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	je	.L34
	mov	DWORD PTR -36[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_697598035[rip]
	test	eax, eax
	je	.L35
	movzx	esi, BYTE PTR -17[rbp]
	mov	rcx, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	sqlite3GetCollSeq
	mov	QWORD PTR -8[rbp], rax
.L35:
	mov	DWORD PTR -40[rbp], 3
.L34:
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
	je	.L38
	cmp	DWORD PTR -28[rbp], -2
	jne	.L39
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L40
	mov	eax, 0
	jmp	.L42
.L40:
	mov	eax, 6
	jmp	.L42
.L39:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	js	.L38
	mov	eax, 0
	jmp	.L42
.L38:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cmp	DWORD PTR -28[rbp], eax
	jne	.L43
	mov	DWORD PTR -4[rbp], 4
	jmp	.L44
.L43:
	mov	DWORD PTR -4[rbp], 1
.L44:
	movzx	edx, BYTE PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	and	eax, 3
	cmp	edx, eax
	jne	.L45
	add	DWORD PTR -4[rbp], 2
	jmp	.L46
.L45:
	movzx	edx, BYTE PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	and	eax, edx
	and	eax, 2
	test	eax, eax
	je	.L46
	add	DWORD PTR -4[rbp], 1
.L46:
	mov	eax, DWORD PTR -4[rbp]
.L42:
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
	jmp	.L48
.L51:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 56[rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3StrICmp@PLT
	test	eax, eax
	jne	.L49
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L50
.L49:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 64[rax]
	mov	QWORD PTR -8[rbp], rax
.L48:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L51
	mov	eax, 0
.L50:
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
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L53
.L56:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR 56[rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	sqlite3Strlen30@PLT
	mov	DWORD PTR -20[rbp], eax
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	movsx	rdx, eax
	imul	rdx, rdx, -1307163959
	shr	rdx, 32
	add	edx, eax
	sar	edx, 4
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	mov	DWORD PTR -24[rbp], edx
	mov	edx, DWORD PTR -24[rbp]
	imul	edx, edx, 23
	sub	eax, edx
	mov	DWORD PTR -24[rbp], eax
	mov	rdx, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	edi, eax
	call	sqlite3FunctionSearch
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	je	.L54
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR 16[rdx], rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L55
.L54:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	QWORD PTR 16[rax], 0
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rax, sqlite3BuiltinFunctions[rip]
	mov	rax, QWORD PTR [rcx+rax]
	mov	QWORD PTR 64[rdx], rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, sqlite3BuiltinFunctions[rip]
	mov	QWORD PTR [rdx+rax], rcx
.L55:
	add	DWORD PTR -4[rbp], 1
.L53:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L56
	nop
	nop
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
	jmp	.L58
.L60:
	movzx	edx, BYTE PTR -88[rbp]
	mov	ecx, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	matchQuality
	mov	DWORD PTR -60[rbp], eax
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L59
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -60[rbp]
	mov	DWORD PTR -20[rbp], eax
.L59:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
.L58:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L60
	cmp	BYTE PTR -92[rbp], 0
	jne	.L61
	cmp	QWORD PTR -16[rbp], 0
	je	.L62
	mov	rax, QWORD PTR -72[rbp]
	mov	eax, DWORD PTR 44[rax]
	and	eax, 2
	test	eax, eax
	je	.L61
.L62:
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
	jmp	.L63
.L65:
	movzx	edx, BYTE PTR -88[rbp]
	mov	ecx, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	matchQuality
	mov	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L64
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR -20[rbp], eax
.L64:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
.L63:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L65
.L61:
	cmp	BYTE PTR -92[rbp], 0
	je	.L66
	cmp	DWORD PTR -20[rbp], 5
	jg	.L66
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 73[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbMallocZero@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L66
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
	jmp	.L67
.L68:
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cdqe
	lea	rdx, sqlite3UpperToLower[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	rax, QWORD PTR -32[rbp]
	mov	BYTE PTR [rax], dl
	add	QWORD PTR -32[rbp], 1
.L67:
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L68
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
	jne	.L69
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbFree@PLT
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	sqlite3OomFault@PLT
	mov	eax, 0
	jmp	.L70
.L69:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
.L66:
	cmp	QWORD PTR -16[rbp], 0
	je	.L71
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L72
	cmp	BYTE PTR -92[rbp], 0
	je	.L71
.L72:
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L70
.L71:
	mov	eax, 0
.L70:
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
	jmp	.L74
.L75:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	lea	rax, -864[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DeleteTrigger@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
.L74:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L75
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	sqlite3HashClear@PLT
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 8
	mov	rdi, rax
	call	sqlite3HashInit@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L76
.L77:
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
.L76:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L77
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
	je	.L78
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR 4[rax], edx
.L78:
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
	je	.L80
	mov	rax, QWORD PTR -32[rbp]
	lea	rdx, sqlite3SchemaClear[rip]
	mov	esi, 120
	mov	rdi, rax
	call	sqlite3BtreeSchema@PLT
	mov	QWORD PTR -8[rbp], rax
	jmp	.L81
.L80:
	mov	esi, 120
	mov	edi, 0
	call	sqlite3DbMallocZero@PLT
	mov	QWORD PTR -8[rbp], rax
.L81:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L82
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3OomFault@PLT
	jmp	.L83
.L82:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 112[rax]
	test	al, al
	jne	.L83
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
.L83:
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
