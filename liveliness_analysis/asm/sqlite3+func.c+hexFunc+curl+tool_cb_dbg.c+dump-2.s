	.file	"func.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_24413873
	.data
	.align 4
	.type	__merger_cond_true_24413873, @object
	.size	__merger_cond_true_24413873, 4
__merger_cond_true_24413873:
	.long	1
	.text
	.type	sqlite3GetFuncCollSeq, @function
sqlite3GetFuncCollSeq:
.LFB6:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	rcx, QWORD PTR 136[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 32[rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	sub	rax, 24
	add	rax, rcx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	sqlite3GetFuncCollSeq, .-sqlite3GetFuncCollSeq
	.type	sqlite3SkipAccumulatorLoad, @function
sqlite3SkipAccumulatorLoad:
.LFB7:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 36[rax], -1
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 41[rax], 1
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	sqlite3SkipAccumulatorLoad, .-sqlite3SkipAccumulatorLoad
	.type	minmaxFunc, @function
minmaxFunc:
.LFB8:
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
	mov	rdi, rax
	call	sqlite3_user_data@PLT
	test	rax, rax
	jne	.L5
	mov	eax, 0
	jmp	.L6
.L5:
	mov	eax, -1
.L6:
	mov	DWORD PTR -12[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3GetFuncCollSeq
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -8[rbp], 0
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 5
	je	.L13
	mov	DWORD PTR -4[rbp], 1
	jmp	.L9
.L12:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 5
	je	.L14
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	rcx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3MemCompare@PLT
	xor	eax, DWORD PTR -12[rbp]
	test	eax, eax
	js	.L11
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
.L11:
	add	DWORD PTR -4[rbp], 1
.L9:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L12
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_result_value@PLT
	jmp	.L4
.L13:
	nop
	jmp	.L4
.L14:
	nop
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	minmaxFunc, .-minmaxFunc
	.type	typeofFunc, @function
typeofFunc:
.LFB9:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, azType.3[rip]
	mov	rsi, QWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	ecx, 0
	mov	edx, -1
	mov	rdi, rax
	call	sqlite3_result_text@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	typeofFunc, .-typeofFunc
	.type	subtypeFunc, @function
subtypeFunc:
.LFB10:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_subtype@PLT
	mov	edx, eax
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3_result_int@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	subtypeFunc, .-subtypeFunc
	.type	lengthFunc, @function
lengthFunc:
.LFB11:
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
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 4
	je	.L18
	cmp	eax, 4
	jg	.L19
	cmp	eax, 2
	jg	.L20
	test	eax, eax
	jg	.L18
	jmp	.L19
.L20:
	cmp	eax, 3
	je	.L21
	jmp	.L19
.L18:
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	edx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3_result_int@PLT
	jmp	.L17
.L21:
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L28
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L24
.L27:
	add	QWORD PTR -8[rbp], 1
	cmp	BYTE PTR -17[rbp], -65
	jbe	.L24
	jmp	.L25
.L26:
	add	QWORD PTR -8[rbp], 1
	add	QWORD PTR -16[rbp], 1
.L25:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	and	eax, 192
	cmp	eax, 128
	je	.L26
.L24:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -17[rbp], al
	cmp	BYTE PTR -17[rbp], 0
	jne	.L27
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR -16[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3_result_int@PLT
	jmp	.L17
.L19:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3_result_null@PLT
	jmp	.L17
.L28:
	nop
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	lengthFunc, .-lengthFunc
	.type	bytelengthFunc, @function
bytelengthFunc:
.LFB12:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 4
	je	.L30
	cmp	eax, 4
	jg	.L31
	cmp	eax, 2
	jg	.L32
	test	eax, eax
	jg	.L33
	jmp	.L31
.L32:
	cmp	eax, 3
	je	.L34
	jmp	.L31
.L30:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3_result_int@PLT
	jmp	.L35
.L33:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3_context_db_handle@PLT
	movzx	eax, BYTE PTR 100[rax]
	cmp	al, 1
	ja	.L36
	mov	eax, 1
	jmp	.L37
.L36:
	mov	eax, 2
.L37:
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	cdqe
	imul	rax, QWORD PTR -8[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_result_int64@PLT
	jmp	.L35
.L34:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_encoding@PLT
	cmp	eax, 1
	jg	.L38
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3_result_int@PLT
	jmp	.L35
.L38:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes16@PLT
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3_result_int@PLT
	jmp	.L35
.L31:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3_result_null@PLT
	nop
.L35:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	bytelengthFunc, .-bytelengthFunc
	.section	.rodata
.LC0:
	.string	"integer overflow"
	.text
	.type	absFunc, @function
absFunc:
.LFB13:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 1
	je	.L41
	cmp	eax, 5
	je	.L42
	jmp	.L50
.L41:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int64@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jns	.L44
	movabs	rax, -9223372036854775808
	cmp	QWORD PTR -8[rbp], rax
	jne	.L45
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, -1
	lea	rcx, .LC0[rip]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3_result_error@PLT
	jmp	.L40
.L45:
	neg	QWORD PTR -8[rbp]
.L44:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_result_int64@PLT
	jmp	.L40
.L42:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3_result_null@PLT
	jmp	.L40
.L50:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_double@PLT
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR -16[rbp]
	jbe	.L47
	movsd	xmm0, QWORD PTR -16[rbp]
	movq	xmm1, QWORD PTR .LC2[rip]
	xorpd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
.L47:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rdx
	mov	rdi, rax
	call	sqlite3_result_double@PLT
	nop
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	absFunc, .-absFunc
	.type	instrFunc, @function
instrFunc:
.LFB14:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 96
	mov	QWORD PTR -72[rbp], rdi
	mov	DWORD PTR -76[rbp], esi
	mov	QWORD PTR -88[rbp], rdx
	mov	DWORD PTR -28[rbp], 1
	mov	QWORD PTR -40[rbp], 0
	mov	QWORD PTR -48[rbp], 0
	mov	rax, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	mov	DWORD PTR -52[rbp], eax
	mov	rax, QWORD PTR -88[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	mov	DWORD PTR -56[rbp], eax
	cmp	DWORD PTR -52[rbp], 5
	je	.L69
	cmp	DWORD PTR -56[rbp], 5
	je	.L69
	mov	rax, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -20[rbp], eax
	mov	rax, QWORD PTR -88[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -24[rbp], eax
	cmp	DWORD PTR -24[rbp], 0
	jle	.L55
	cmp	DWORD PTR -52[rbp], 4
	jne	.L56
	cmp	DWORD PTR -56[rbp], 4
	jne	.L56
	mov	rax, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_blob@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_blob@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	DWORD PTR -32[rbp], 0
	jmp	.L57
.L56:
	cmp	DWORD PTR -52[rbp], 4
	je	.L58
	cmp	DWORD PTR -56[rbp], 4
	je	.L58
	mov	rax, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	DWORD PTR -32[rbp], 1
	jmp	.L57
.L58:
	mov	rax, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_dup@PLT
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L70
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -20[rbp], eax
	mov	rax, QWORD PTR -88[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_dup@PLT
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L71
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -24[rbp], eax
	mov	DWORD PTR -32[rbp], 1
.L57:
	cmp	QWORD PTR -16[rbp], 0
	je	.L72
	cmp	DWORD PTR -20[rbp], 0
	je	.L63
	cmp	QWORD PTR -8[rbp], 0
	je	.L72
.L63:
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -57[rbp], al
	jmp	.L64
.L67:
	add	DWORD PTR -28[rbp], 1
.L65:
	sub	DWORD PTR -20[rbp], 1
	add	QWORD PTR -8[rbp], 1
	cmp	DWORD PTR -32[rbp], 0
	je	.L64
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	and	eax, 192
	cmp	eax, 128
	je	.L65
.L64:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jg	.L66
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	BYTE PTR -57[rbp], al
	jne	.L67
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memcmp@PLT
	test	eax, eax
	jne	.L67
.L66:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L55
	mov	DWORD PTR -28[rbp], 0
.L55:
	mov	edx, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3_result_int@PLT
.L68:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3_value_free@PLT
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	sqlite3_value_free@PLT
	jmp	.L51
.L70:
	nop
	jmp	.L60
.L71:
	nop
	jmp	.L60
.L72:
	nop
.L60:
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	sqlite3_result_error_nomem@PLT
	jmp	.L68
.L69:
	nop
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	instrFunc, .-instrFunc
	.type	printfFunc, @function
printfFunc:
.LFB15:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 112
	mov	QWORD PTR -88[rbp], rdi
	mov	DWORD PTR -92[rbp], esi
	mov	QWORD PTR -104[rbp], rdx
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	sqlite3_context_db_handle@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	DWORD PTR -92[rbp], 0
	jle	.L75
	mov	rax, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L75
	mov	eax, DWORD PTR -92[rbp]
	sub	eax, 1
	mov	DWORD PTR -48[rbp], eax
	mov	DWORD PTR -44[rbp], 0
	mov	rax, QWORD PTR -104[rbp]
	add	rax, 8
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR 136[rax]
	mov	rsi, QWORD PTR -8[rbp]
	lea	rax, -80[rbp]
	mov	r8d, edx
	mov	ecx, 0
	mov	edx, 0
	mov	rdi, rax
	call	sqlite3StrAccumInit@PLT
	mov	BYTE PTR -51[rbp], 2
	lea	rdx, -48[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	sqlite3_str_appendf@PLT
	mov	eax, DWORD PTR -56[rbp]
	mov	DWORD PTR -20[rbp], eax
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	sqlite3StrAccumFinish@PLT
	mov	rsi, rax
	mov	edx, DWORD PTR -20[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rcx, QWORD PTR sqlite3OomClear@GOTPCREL[rip]
	mov	rdi, rax
	call	sqlite3_result_text@PLT
.L75:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	printfFunc, .-printfFunc
	.type	substrFunc, @function
substrFunc:
.LFB16:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	QWORD PTR -72[rbp], rdx
	mov	DWORD PTR -44[rbp], 0
	mov	rax, QWORD PTR -72[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 5
	je	.L109
	cmp	DWORD PTR -60[rbp], 3
	jne	.L78
	mov	rax, QWORD PTR -72[rbp]
	add	rax, 16
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 5
	je	.L109
.L78:
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	mov	DWORD PTR -48[rbp], eax
	mov	rax, QWORD PTR -72[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int@PLT
	cdqe
	mov	QWORD PTR -32[rbp], rax
	cmp	DWORD PTR -48[rbp], 4
	jne	.L80
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -20[rbp], eax
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_blob@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L81
	jmp	.L76
.L80:
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L110
	mov	DWORD PTR -20[rbp], 0
	cmp	QWORD PTR -32[rbp], 0
	jns	.L81
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L83
.L87:
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -16[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, -65
	jbe	.L84
	jmp	.L85
.L86:
	add	QWORD PTR -16[rbp], 1
.L85:
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	and	eax, 192
	cmp	eax, 128
	je	.L86
.L84:
	add	DWORD PTR -20[rbp], 1
.L83:
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L87
.L81:
	cmp	DWORD PTR -60[rbp], 3
	jne	.L88
	mov	rax, QWORD PTR -72[rbp]
	add	rax, 16
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int@PLT
	cdqe
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	jns	.L89
	neg	QWORD PTR -40[rbp]
	mov	DWORD PTR -44[rbp], 1
	jmp	.L89
.L88:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	sqlite3_context_db_handle@PLT
	mov	eax, DWORD PTR 136[rax]
	cdqe
	mov	QWORD PTR -40[rbp], rax
.L89:
	cmp	QWORD PTR -32[rbp], 0
	jns	.L90
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	add	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	jns	.L91
	mov	rax, QWORD PTR -32[rbp]
	add	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	jns	.L92
	mov	QWORD PTR -40[rbp], 0
.L92:
	mov	QWORD PTR -32[rbp], 0
	jmp	.L91
.L90:
	cmp	QWORD PTR -32[rbp], 0
	jle	.L93
	sub	QWORD PTR -32[rbp], 1
	jmp	.L91
.L93:
	cmp	QWORD PTR -40[rbp], 0
	jle	.L91
	sub	QWORD PTR -40[rbp], 1
.L91:
	cmp	DWORD PTR -44[rbp], 0
	je	.L94
	mov	rax, QWORD PTR -40[rbp]
	sub	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	jns	.L94
	mov	rax, QWORD PTR -32[rbp]
	add	QWORD PTR -40[rbp], rax
	mov	QWORD PTR -32[rbp], 0
.L94:
	cmp	DWORD PTR -48[rbp], 4
	je	.L95
	jmp	.L96
.L101:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, -65
	jbe	.L97
	jmp	.L98
.L99:
	add	QWORD PTR -8[rbp], 1
.L98:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	and	eax, 192
	cmp	eax, 128
	je	.L99
.L97:
	sub	QWORD PTR -32[rbp], 1
.L96:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L100
	cmp	QWORD PTR -32[rbp], 0
	jne	.L101
.L100:
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L102
.L107:
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -16[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, -65
	jbe	.L103
	jmp	.L104
.L105:
	add	QWORD PTR -16[rbp], 1
.L104:
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	and	eax, 192
	cmp	eax, 128
	je	.L105
.L103:
	sub	QWORD PTR -40[rbp], 1
.L102:
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L106
	cmp	QWORD PTR -40[rbp], 0
	jne	.L107
.L106:
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -8[rbp]
	mov	rdx, rax
	mov	rsi, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r8d, 1
	mov	rcx, -1
	mov	rdi, rax
	call	sqlite3_result_text64@PLT
	jmp	.L76
.L95:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	cmp	rdx, rax
	jle	.L108
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sub	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	jns	.L108
	mov	QWORD PTR -40[rbp], 0
.L108:
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -8[rbp]
	lea	rsi, [rcx+rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, -1
	mov	rdi, rax
	call	sqlite3_result_blob64@PLT
	jmp	.L76
.L109:
	nop
	jmp	.L76
.L110:
	nop
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	substrFunc, .-substrFunc
	.section	.rodata
.LC7:
	.string	"%!.*f"
	.text
	.type	roundFunc, @function
roundFunc:
.LFB17:
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
	mov	DWORD PTR -4[rbp], 0
	cmp	DWORD PTR -44[rbp], 2
	jne	.L112
	mov	rax, QWORD PTR -56[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 5
	je	.L126
	mov	rax, QWORD PTR -56[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int@PLT
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 30
	jle	.L115
	mov	DWORD PTR -4[rbp], 30
.L115:
	cmp	DWORD PTR -4[rbp], 0
	jns	.L112
	mov	DWORD PTR -4[rbp], 0
.L112:
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 5
	je	.L127
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_double@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	movsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR .LC3[rip]
	comisd	xmm0, xmm1
	ja	.L117
	movsd	xmm0, QWORD PTR -24[rbp]
	comisd	xmm0, QWORD PTR .LC4[rip]
	ja	.L117
	cmp	DWORD PTR -4[rbp], 0
	jne	.L118
	movsd	xmm1, QWORD PTR -24[rbp]
	pxor	xmm0, xmm0
	comisd	xmm0, xmm1
	jbe	.L125
	movsd	xmm0, QWORD PTR .LC5[rip]
	jmp	.L121
.L125:
	movsd	xmm0, QWORD PTR .LC6[rip]
.L121:
	movsd	xmm1, QWORD PTR -24[rbp]
	addsd	xmm0, xmm1
	cvttsd2si	rax, xmm0
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	movsd	QWORD PTR -24[rbp], xmm0
	jmp	.L117
.L118:
	mov	rdx, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movq	xmm0, rdx
	mov	esi, eax
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 1
	call	sqlite3_mprintf@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L122
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3_result_error_nomem@PLT
	jmp	.L111
.L122:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	sqlite3Strlen30@PLT
	mov	edx, eax
	lea	rsi, -24[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, 1
	mov	rdi, rax
	call	sqlite3AtoF@PLT
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	sqlite3_free@PLT
.L117:
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	movq	xmm0, rdx
	mov	rdi, rax
	call	sqlite3_result_double@PLT
	jmp	.L111
.L126:
	nop
	jmp	.L111
.L127:
	nop
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	roundFunc, .-roundFunc
	.type	contextMalloc, @function
contextMalloc:
.LFB18:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3_context_db_handle@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 136[rax]
	cdqe
	cmp	QWORD PTR -32[rbp], rax
	jle	.L129
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3_result_error_toobig@PLT
	mov	QWORD PTR -8[rbp], 0
	jmp	.L130
.L129:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	sqlite3Malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L130
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3_result_error_nomem@PLT
.L130:
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	contextMalloc, .-contextMalloc
	.type	upperFunc, @function
upperFunc:
.LFB19:
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
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -20[rbp], eax
	cmp	QWORD PTR -16[rbp], 0
	je	.L136
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	contextMalloc
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	je	.L136
	mov	DWORD PTR -4[rbp], 0
	jmp	.L134
.L135:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movzx	ecx, BYTE PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cdqe
	lea	rdx, sqlite3CtypeMap[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	and	eax, 32
	not	eax
	mov	esi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	and	ecx, esi
	mov	edx, ecx
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -4[rbp], 1
.L134:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L135
	mov	edx, DWORD PTR -20[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR sqlite3_free@GOTPCREL[rip]
	mov	rdi, rax
	call	sqlite3_result_text@PLT
.L136:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	upperFunc, .-upperFunc
	.type	lowerFunc, @function
lowerFunc:
.LFB20:
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
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -20[rbp], eax
	cmp	QWORD PTR -16[rbp], 0
	je	.L141
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	contextMalloc
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	je	.L141
	mov	DWORD PTR -4[rbp], 0
	jmp	.L139
.L140:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cdqe
	lea	rdx, sqlite3UpperToLower[rip]
	movzx	ecx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	edx, ecx
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -4[rbp], 1
.L139:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L140
	mov	edx, DWORD PTR -20[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR sqlite3_free@GOTPCREL[rip]
	mov	rdi, rax
	call	sqlite3_result_text@PLT
.L141:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	lowerFunc, .-lowerFunc
	.type	randomFunc, @function
randomFunc:
.LFB21:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	lea	rax, -8[rbp]
	mov	rsi, rax
	mov	edi, 8
	call	sqlite3_randomness@PLT
	mov	rax, QWORD PTR -8[rbp]
	test	rax, rax
	jns	.L143
	mov	rax, QWORD PTR -8[rbp]
	movabs	rdx, 9223372036854775807
	and	rax, rdx
	neg	rax
	mov	QWORD PTR -8[rbp], rax
.L143:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_result_int64@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	randomFunc, .-randomFunc
	.type	randomBlob, @function
randomBlob:
.LFB22:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int64@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jg	.L145
	mov	QWORD PTR -8[rbp], 1
.L145:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	contextMalloc
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L147
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	mov	edi, edx
	call	sqlite3_randomness@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	edi, eax
	mov	rsi, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR sqlite3_free@GOTPCREL[rip]
	mov	rcx, rdx
	mov	edx, edi
	mov	rdi, rax
	call	sqlite3_result_blob@PLT
.L147:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	randomBlob, .-randomBlob
	.type	last_insert_rowid, @function
last_insert_rowid:
.LFB23:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3_context_db_handle@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3_last_insert_rowid@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_result_int64@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	last_insert_rowid, .-last_insert_rowid
	.type	changes, @function
changes:
.LFB24:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3_context_db_handle@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3_changes64@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_result_int64@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	changes, .-changes
	.type	total_changes, @function
total_changes:
.LFB25:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3_context_db_handle@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3_total_changes64@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_result_int64@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	total_changes, .-total_changes
	.section	.rodata
	.type	globInfo, @object
	.size	globInfo, 4
globInfo:
	.byte	42
	.byte	63
	.byte	91
	.byte	0
	.type	likeInfoNorm, @object
	.size	likeInfoNorm, 4
likeInfoNorm:
	.byte	37
	.byte	95
	.byte	0
	.byte	1
	.type	likeInfoAlt, @object
	.size	likeInfoAlt, 4
likeInfoAlt:
	.byte	37
	.byte	95
	.byte	0
	.byte	0
	.text
	.type	patternCompare, @function
patternCompare:
.LFB26:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 104
	.cfi_offset 3, -24
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	QWORD PTR -104[rbp], rdx
	mov	DWORD PTR -108[rbp], ecx
	mov	rax, QWORD PTR -104[rbp]
	movzx	eax, BYTE PTR 1[rax]
	movzx	eax, al
	mov	DWORD PTR -48[rbp], eax
	mov	rax, QWORD PTR -104[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	mov	DWORD PTR -52[rbp], eax
	mov	rax, QWORD PTR -104[rbp]
	movzx	eax, BYTE PTR 3[rax]
	mov	BYTE PTR -53[rbp], al
	mov	QWORD PTR -32[rbp], 0
	jmp	.L152
.L205:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -52[rbp]
	jne	.L153
	jmp	.L154
.L158:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -48[rbp]
	jne	.L154
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
	test	eax, eax
	jne	.L154
	mov	eax, 2
	jmp	.L155
.L154:
	mov	rax, QWORD PTR -88[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	js	.L156
	mov	rax, QWORD PTR -88[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -88[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	jmp	.L157
.L156:
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
.L157:
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -52[rbp]
	je	.L158
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -48[rbp]
	jne	.L159
	cmp	DWORD PTR -48[rbp], 0
	jne	.L158
.L159:
	cmp	DWORD PTR -20[rbp], 0
	jne	.L160
	mov	eax, 0
	jmp	.L155
.L160:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -108[rbp]
	jne	.L161
	mov	rax, QWORD PTR -104[rbp]
	movzx	eax, BYTE PTR 2[rax]
	test	al, al
	jne	.L163
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -20[rbp], 0
	jne	.L161
	mov	eax, 2
	jmp	.L155
.L167:
	mov	rax, QWORD PTR -96[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	lea	rdi, -1[rdx]
	mov	ecx, DWORD PTR -108[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	rsi, rax
	call	patternCompare
	mov	DWORD PTR -60[rbp], eax
	cmp	DWORD PTR -60[rbp], 1
	je	.L164
	mov	eax, DWORD PTR -60[rbp]
	jmp	.L155
.L164:
	mov	rax, QWORD PTR -96[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -96[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, -65
	jbe	.L163
	jmp	.L165
.L166:
	mov	rax, QWORD PTR -96[rbp]
	add	rax, 1
	mov	QWORD PTR -96[rbp], rax
.L165:
	mov	rax, QWORD PTR -96[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	and	eax, 192
	cmp	eax, 128
	je	.L166
.L163:
	mov	rax, QWORD PTR -96[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L167
	mov	eax, 2
	jmp	.L155
.L161:
	cmp	DWORD PTR -20[rbp], 127
	ja	.L177
	cmp	BYTE PTR -53[rbp], 0
	je	.L169
	mov	eax, DWORD PTR -20[rbp]
	movzx	eax, al
	cdqe
	lea	rdx, sqlite3CtypeMap[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	and	eax, 32
	not	eax
	mov	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	and	eax, edx
	mov	BYTE PTR -71[rbp], al
	mov	eax, DWORD PTR -20[rbp]
	movzx	eax, al
	cdqe
	lea	rdx, sqlite3UpperToLower[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	mov	BYTE PTR -70[rbp], al
	mov	BYTE PTR -69[rbp], 0
	jmp	.L175
.L169:
	mov	eax, DWORD PTR -20[rbp]
	mov	BYTE PTR -71[rbp], al
	mov	BYTE PTR -70[rbp], 0
.L175:
	mov	rbx, QWORD PTR -96[rbp]
	mov	rax, QWORD PTR -96[rbp]
	lea	rdx, -71[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcspn@PLT
	add	rax, rbx
	mov	QWORD PTR -96[rbp], rax
	mov	rax, QWORD PTR -96[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L206
	mov	rax, QWORD PTR -96[rbp]
	add	rax, 1
	mov	QWORD PTR -96[rbp], rax
	mov	rsi, QWORD PTR -96[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	ecx, DWORD PTR -108[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	patternCompare
	mov	DWORD PTR -68[rbp], eax
	cmp	DWORD PTR -68[rbp], 1
	je	.L175
	mov	eax, DWORD PTR -68[rbp]
	jmp	.L155
.L181:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	je	.L178
	jmp	.L177
.L178:
	mov	rsi, QWORD PTR -96[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	ecx, DWORD PTR -108[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	patternCompare
	mov	DWORD PTR -64[rbp], eax
	cmp	DWORD PTR -64[rbp], 1
	je	.L177
	mov	eax, DWORD PTR -64[rbp]
	jmp	.L155
.L177:
	mov	rax, QWORD PTR -96[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	js	.L179
	mov	rax, QWORD PTR -96[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -96[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	jmp	.L180
.L179:
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
.L180:
	mov	DWORD PTR -24[rbp], eax
	cmp	DWORD PTR -24[rbp], 0
	jne	.L181
	jmp	.L176
.L206:
	nop
.L176:
	mov	eax, 2
	jmp	.L155
.L153:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -108[rbp]
	jne	.L182
	mov	rax, QWORD PTR -104[rbp]
	movzx	eax, BYTE PTR 2[rax]
	test	al, al
	jne	.L183
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -20[rbp], 0
	jne	.L184
	mov	eax, 1
	jmp	.L155
.L184:
	mov	rax, QWORD PTR -88[rbp]
	mov	QWORD PTR -32[rbp], rax
	jmp	.L182
.L183:
	mov	DWORD PTR -36[rbp], 0
	mov	DWORD PTR -40[rbp], 0
	mov	DWORD PTR -44[rbp], 0
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -20[rbp], 0
	jne	.L185
	mov	eax, 1
	jmp	.L155
.L185:
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
	mov	DWORD PTR -24[rbp], eax
	cmp	DWORD PTR -24[rbp], 94
	jne	.L186
	mov	DWORD PTR -44[rbp], 1
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
	mov	DWORD PTR -24[rbp], eax
.L186:
	cmp	DWORD PTR -24[rbp], 93
	jne	.L189
	cmp	DWORD PTR -20[rbp], 93
	jne	.L188
	mov	DWORD PTR -40[rbp], 1
.L188:
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
	mov	DWORD PTR -24[rbp], eax
	jmp	.L189
.L195:
	cmp	DWORD PTR -24[rbp], 45
	jne	.L190
	mov	rax, QWORD PTR -88[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 93
	je	.L190
	mov	rax, QWORD PTR -88[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L190
	cmp	DWORD PTR -36[rbp], 0
	je	.L190
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jb	.L191
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jb	.L191
	mov	DWORD PTR -40[rbp], 1
.L191:
	mov	DWORD PTR -36[rbp], 0
	jmp	.L192
.L190:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jne	.L193
	mov	DWORD PTR -40[rbp], 1
.L193:
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -36[rbp], eax
.L192:
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
	mov	DWORD PTR -24[rbp], eax
.L189:
	cmp	DWORD PTR -24[rbp], 0
	je	.L194
	cmp	DWORD PTR -24[rbp], 93
	jne	.L195
.L194:
	cmp	DWORD PTR -24[rbp], 0
	je	.L196
	mov	eax, DWORD PTR -40[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jne	.L152
.L196:
	mov	eax, 1
	jmp	.L155
.L182:
	mov	rax, QWORD PTR -96[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	js	.L198
	mov	rax, QWORD PTR -96[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -96[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	jmp	.L199
.L198:
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
.L199:
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jne	.L200
	jmp	.L152
.L200:
	cmp	BYTE PTR -53[rbp], 0
	je	.L201
	mov	eax, DWORD PTR -20[rbp]
	movzx	eax, al
	cdqe
	lea	rdx, sqlite3UpperToLower[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -24[rbp]
	movzx	eax, al
	cdqe
	lea	rcx, sqlite3UpperToLower[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L201
	cmp	DWORD PTR -20[rbp], 127
	ja	.L201
	cmp	DWORD PTR -24[rbp], 127
	ja	.L201
	jmp	.L152
.L201:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -48[rbp]
	jne	.L202
	mov	rax, QWORD PTR -88[rbp]
	cmp	QWORD PTR -32[rbp], rax
	je	.L202
	cmp	DWORD PTR -24[rbp], 0
	je	.L202
	jmp	.L152
.L202:
	mov	eax, 1
	jmp	.L155
.L152:
	mov	rax, QWORD PTR -88[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	js	.L203
	mov	rax, QWORD PTR -88[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -88[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	jmp	.L204
.L203:
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
.L204:
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -20[rbp], 0
	jne	.L205
	mov	rax, QWORD PTR -96[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	setne	al
	movzx	eax, al
.L155:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	patternCompare, .-patternCompare
	.globl	sqlite3_strglob
	.type	sqlite3_strglob, @function
sqlite3_strglob:
.LFB27:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	cmp	QWORD PTR -16[rbp], 0
	jne	.L208
	cmp	QWORD PTR -8[rbp], 0
	setne	al
	movzx	eax, al
	jmp	.L209
.L208:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L210
	mov	eax, 1
	jmp	.L209
.L210:
	mov	rsi, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	ecx, 91
	lea	rdx, globInfo[rip]
	mov	rdi, rax
	call	patternCompare
.L209:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	sqlite3_strglob, .-sqlite3_strglob
	.globl	sqlite3_strlike
	.type	sqlite3_strlike, @function
sqlite3_strlike:
.LFB28:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	DWORD PTR -20[rbp], edx
	cmp	QWORD PTR -16[rbp], 0
	jne	.L212
	cmp	QWORD PTR -8[rbp], 0
	setne	al
	movzx	eax, al
	jmp	.L213
.L212:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L214
	mov	eax, 1
	jmp	.L213
.L214:
	mov	edx, DWORD PTR -20[rbp]
	mov	rsi, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	ecx, edx
	lea	rdx, likeInfoNorm[rip]
	mov	rdi, rax
	call	patternCompare
.L213:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	sqlite3_strlike, .-sqlite3_strlike
	.section	.rodata
	.align 8
.LC8:
	.string	"LIKE or GLOB pattern too complex"
	.align 8
.LC9:
	.string	"ESCAPE expression must be a single character"
	.text
	.type	likeFunc, @function
likeFunc:
.LFB29:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 96
	mov	QWORD PTR -72[rbp], rdi
	mov	DWORD PTR -76[rbp], esi
	mov	QWORD PTR -88[rbp], rdx
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	sqlite3_context_db_handle@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	sqlite3_user_data@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -28[rbp], eax
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 168[rax]
	cmp	DWORD PTR -28[rbp], eax
	jle	.L216
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, -1
	lea	rcx, .LC8[rip]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3_result_error@PLT
	jmp	.L215
.L216:
	cmp	DWORD PTR -76[rbp], 3
	jne	.L218
	mov	rax, QWORD PTR -88[rbp]
	add	rax, 16
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	test	rax, rax
	je	.L228
	mov	rax, QWORD PTR -64[rbp]
	mov	esi, -1
	mov	rdi, rax
	call	sqlite3Utf8CharLen@PLT
	cmp	eax, 1
	je	.L221
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, -1
	lea	rcx, .LC9[rip]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3_result_error@PLT
	jmp	.L215
.L221:
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR -4[rbp], eax
	je	.L222
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 1[rax]
	movzx	eax, al
	cmp	DWORD PTR -4[rbp], eax
	jne	.L225
.L222:
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -52[rbp], eax
	lea	rax, -52[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR -4[rbp], eax
	jne	.L224
	mov	rax, QWORD PTR -16[rbp]
	mov	BYTE PTR [rax], 0
.L224:
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 1[rax]
	movzx	eax, al
	cmp	DWORD PTR -4[rbp], eax
	jne	.L225
	mov	rax, QWORD PTR -16[rbp]
	mov	BYTE PTR 1[rax], 0
	jmp	.L225
.L218:
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 2[rax]
	movzx	eax, al
	mov	DWORD PTR -4[rbp], eax
.L225:
	mov	rax, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -48[rbp], 0
	je	.L215
	cmp	QWORD PTR -40[rbp], 0
	je	.L215
	mov	ecx, DWORD PTR -4[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	patternCompare
	test	eax, eax
	sete	al
	movzx	edx, al
	mov	rax, QWORD PTR -72[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3_result_int@PLT
	jmp	.L215
.L228:
	nop
.L215:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	likeFunc, .-likeFunc
	.type	nullifFunc, @function
nullifFunc:
.LFB30:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3GetFuncCollSeq
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, 8
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3MemCompare@PLT
	test	eax, eax
	je	.L231
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_result_value@PLT
.L231:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	nullifFunc, .-nullifFunc
	.type	versionFunc, @function
versionFunc:
.LFB31:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	QWORD PTR -24[rbp], rdx
	call	sqlite3_libversion@PLT
	mov	rsi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	ecx, 0
	mov	edx, -1
	mov	rdi, rax
	call	sqlite3_result_text@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	versionFunc, .-versionFunc
	.type	sourceidFunc, @function
sourceidFunc:
.LFB32:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	QWORD PTR -24[rbp], rdx
	call	sqlite3_sourceid@PLT
	mov	rsi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	ecx, 0
	mov	edx, -1
	mov	rdi, rax
	call	sqlite3_result_text@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	sourceidFunc, .-sourceidFunc
	.section	.rodata
.LC10:
	.string	"%s"
	.text
	.type	errlogFunc, @function
errlogFunc:
.LFB33:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	rbx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int@PLT
	mov	ecx, eax
	mov	rdx, rbx
	lea	rax, .LC10[rip]
	mov	rsi, rax
	mov	edi, ecx
	mov	eax, 0
	call	sqlite3_log@PLT
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	errlogFunc, .-errlogFunc
	.type	compileoptionusedFunc, @function
compileoptionusedFunc:
.LFB34:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L237
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3_compileoption_used@PLT
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3_result_int@PLT
.L237:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	compileoptionusedFunc, .-compileoptionusedFunc
	.type	compileoptiongetFunc, @function
compileoptiongetFunc:
.LFB35:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int@PLT
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	sqlite3_compileoption_get@PLT
	mov	rsi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	ecx, 0
	mov	edx, -1
	mov	rdi, rax
	call	sqlite3_result_text@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	compileoptiongetFunc, .-compileoptiongetFunc
	.section	.rodata
	.align 16
	.type	hexdigits, @object
	.size	hexdigits, 16
hexdigits:
	.ascii	"0123456789ABCDEF"
.LC11:
	.string	"%!.15g"
.LC12:
	.string	"%!.20e"
.LC13:
	.string	"%lld"
.LC14:
	.string	"%Q"
.LC15:
	.string	"NULL"
	.text
	.globl	sqlite3QuoteValue
	.type	sqlite3QuoteValue, @function
sqlite3QuoteValue:
.LFB36:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 4
	je	.L240
	cmp	eax, 4
	jg	.L241
	cmp	eax, 3
	je	.L242
	cmp	eax, 3
	jg	.L241
	cmp	eax, 1
	je	.L243
	cmp	eax, 2
	jne	.L241
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	sqlite3_value_double@PLT
	movq	rax, xmm0
	mov	QWORD PTR -48[rbp], rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -72[rbp]
	movq	xmm0, rdx
	lea	rdx, .LC11[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 1
	call	sqlite3_str_appendf@PLT
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	sqlite3_str_value@PLT
	mov	QWORD PTR -56[rbp], rax
	cmp	QWORD PTR -56[rbp], 0
	je	.L251
	mov	rax, QWORD PTR -72[rbp]
	mov	eax, DWORD PTR 24[rax]
	mov	edx, eax
	lea	rsi, -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	ecx, 1
	mov	rdi, rax
	call	sqlite3AtoF@PLT
	movsd	xmm0, QWORD PTR -64[rbp]
	ucomisd	xmm0, QWORD PTR -48[rbp]
	jp	.L250
	ucomisd	xmm0, QWORD PTR -48[rbp]
	je	.L251
.L250:
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	sqlite3_str_reset@PLT
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -72[rbp]
	movq	xmm0, rdx
	lea	rdx, .LC12[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 1
	call	sqlite3_str_appendf@PLT
	jmp	.L251
.L243:
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	sqlite3_value_int64@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	lea	rcx, .LC13[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	sqlite3_str_appendf@PLT
	jmp	.L246
.L240:
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	sqlite3_value_blob@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	cdqe
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 2
	lea	rdx, [rax+rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3StrAccumEnlarge@PLT
	mov	rax, QWORD PTR -72[rbp]
	movzx	eax, BYTE PTR 28[rax]
	test	al, al
	jne	.L252
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L248
.L249:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	sar	al, 4
	movsx	eax, al
	and	eax, 15
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, eax
	cdqe
	lea	rdx, 2[rax]
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	movsx	rax, ecx
	lea	rcx, hexdigits[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	mov	BYTE PTR [rdx], al
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	and	eax, 15
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, eax
	cdqe
	lea	rdx, 3[rax]
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	movsx	rax, ecx
	lea	rcx, hexdigits[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR -4[rbp], 1
.L248:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	cmp	QWORD PTR -24[rbp], rax
	jg	.L249
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rax
	lea	rdx, 2[rax]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 39
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rax
	lea	rdx, 3[rax]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR -32[rbp]
	mov	BYTE PTR [rax], 88
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 1
	mov	BYTE PTR [rax], 39
	mov	rax, QWORD PTR -24[rbp]
	add	eax, eax
	lea	edx, 3[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	DWORD PTR 24[rax], edx
	jmp	.L252
.L242:
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -40[rbp], rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -72[rbp]
	lea	rcx, .LC14[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	sqlite3_str_appendf@PLT
	jmp	.L246
.L241:
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, 4
	lea	rcx, .LC15[rip]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3_str_append@PLT
	jmp	.L246
.L251:
	nop
	jmp	.L253
.L252:
	nop
.L246:
.L253:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	sqlite3QuoteValue, .-sqlite3QuoteValue
	.type	quoteFunc, @function
quoteFunc:
.LFB37:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 88
	.cfi_offset 3, -24
	mov	QWORD PTR -72[rbp], rdi
	mov	DWORD PTR -76[rbp], esi
	mov	QWORD PTR -88[rbp], rdx
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	sqlite3_context_db_handle@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, DWORD PTR 136[rax]
	mov	rsi, QWORD PTR -24[rbp]
	lea	rax, -64[rbp]
	mov	r8d, edx
	mov	ecx, 0
	mov	edx, 0
	mov	rdi, rax
	call	sqlite3StrAccumInit@PLT
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR [rax]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3QuoteValue
	mov	eax, DWORD PTR -40[rbp]
	mov	ebx, eax
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	sqlite3StrAccumFinish@PLT
	mov	rsi, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR sqlite3OomClear@GOTPCREL[rip]
	mov	rcx, rdx
	mov	edx, ebx
	mov	rdi, rax
	call	sqlite3_result_text@PLT
	movzx	eax, BYTE PTR -36[rbp]
	test	al, al
	je	.L256
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	sqlite3_result_null@PLT
	movzx	eax, BYTE PTR -36[rbp]
	movzx	edx, al
	mov	rax, QWORD PTR -72[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3_result_error_code@PLT
.L256:
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	quoteFunc, .-quoteFunc
	.type	unicodeFunc, @function
unicodeFunc:
.LFB38:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	test	rax, rax
	je	.L259
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L259
	lea	rax, -8[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3_result_int@PLT
.L259:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	unicodeFunc, .-unicodeFunc
	.type	charFunc, @function
charFunc:
.LFB39:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	QWORD PTR -72[rbp], rdx
	mov	eax, DWORD PTR -60[rbp]
	sal	eax, 2
	add	eax, 1
	cdqe
	mov	rdi, rax
	call	sqlite3_malloc64@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	jne	.L261
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	sqlite3_result_error_nomem@PLT
	jmp	.L260
.L261:
	mov	DWORD PTR -12[rbp], 0
	jmp	.L263
.L270:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int64@PLT
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	js	.L264
	cmp	QWORD PTR -24[rbp], 1114111
	jle	.L265
.L264:
	mov	QWORD PTR -24[rbp], 65533
.L265:
	mov	rax, QWORD PTR -24[rbp]
	and	eax, 2097151
	mov	DWORD PTR -36[rbp], eax
	cmp	DWORD PTR -36[rbp], 127
	ja	.L266
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	mov	edx, DWORD PTR -36[rbp]
	mov	BYTE PTR [rax], dl
	jmp	.L267
.L266:
	cmp	DWORD PTR -36[rbp], 2047
	ja	.L268
	mov	eax, DWORD PTR -36[rbp]
	shr	eax, 6
	and	eax, 31
	mov	ecx, eax
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	lea	edx, -64[rcx]
	mov	BYTE PTR [rax], dl
	mov	eax, DWORD PTR -36[rbp]
	and	eax, 63
	mov	ecx, eax
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	lea	edx, -128[rcx]
	mov	BYTE PTR [rax], dl
	jmp	.L267
.L268:
	cmp	DWORD PTR -36[rbp], 65535
	ja	.L269
	mov	eax, DWORD PTR -36[rbp]
	shr	eax, 12
	and	eax, 15
	mov	ecx, eax
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	lea	edx, -32[rcx]
	mov	BYTE PTR [rax], dl
	mov	eax, DWORD PTR -36[rbp]
	shr	eax, 6
	and	eax, 63
	mov	ecx, eax
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	lea	edx, -128[rcx]
	mov	BYTE PTR [rax], dl
	mov	eax, DWORD PTR -36[rbp]
	and	eax, 63
	mov	ecx, eax
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	lea	edx, -128[rcx]
	mov	BYTE PTR [rax], dl
	jmp	.L267
.L269:
	mov	eax, DWORD PTR -36[rbp]
	shr	eax, 18
	and	eax, 7
	mov	ecx, eax
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	lea	edx, -16[rcx]
	mov	BYTE PTR [rax], dl
	mov	eax, DWORD PTR -36[rbp]
	shr	eax, 12
	and	eax, 63
	mov	ecx, eax
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	lea	edx, -128[rcx]
	mov	BYTE PTR [rax], dl
	mov	eax, DWORD PTR -36[rbp]
	shr	eax, 6
	and	eax, 63
	mov	ecx, eax
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	lea	edx, -128[rcx]
	mov	BYTE PTR [rax], dl
	mov	eax, DWORD PTR -36[rbp]
	and	eax, 63
	mov	ecx, eax
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	lea	edx, -128[rcx]
	mov	BYTE PTR [rax], dl
.L267:
	add	DWORD PTR -12[rbp], 1
.L263:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L270
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r8d, 1
	mov	rdx, QWORD PTR sqlite3_free@GOTPCREL[rip]
	mov	rcx, rdx
	mov	rdx, rdi
	mov	rdi, rax
	call	sqlite3_result_text64@PLT
.L260:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	charFunc, .-charFunc
	.type	hexFunc, @function
hexFunc:
.LFB40:
	.cfi_startproc
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
cmp dword ptr [rbp + 0x10], 2
cmp qword ptr [rbp - 0x10], rax
	sub	rsp, 160
mov eax, dword ptr [rbp - 0x14]
	mov	QWORD PTR -136[rbp], rdi
	mov	DWORD PTR -140[rbp], esi
	mov	QWORD PTR -152[rbp], rdx
	mov	DWORD PTR -32[rbp], -2
mov rdx, qword ptr [rbp - 8]
mov rdx, qword ptr [rbp - 8]
mov qword ptr [rbp - 0x10], 0
	mov	eax, DWORD PTR __merger_cond_true_24413873[rip]
movzx eax, byte ptr [rax]
	test	eax, eax
	jne	.L272
add rax, rdx
	mov	DWORD PTR -36[rbp], 3
.L272:
	mov	rax, QWORD PTR -152[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_blob@PLT
	mov	QWORD PTR -16[rbp], rax
movzx eax, byte ptr [rax]
cmp dword ptr [rbp + 0x10], 2
mov qword ptr [rbp - 8], rax
add rax, rdx
	mov	rax, QWORD PTR -152[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
add rax, rdx
mov rdx, qword ptr [rbp - 8]
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
mov rdx, qword ptr [rbp - 0x10]
	cdqe
	add	rax, rax
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	rsi, rdx
	mov	rdi, rax
mov rax, qword ptr [rbp - 0x40]
	call	contextMalloc
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
mov rsi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
cmp al,0x100
add rdx, rax
mov eax, 0
	mov	QWORD PTR -56[rbp], rax
	mov	DWORD PTR -28[rbp], 1
mov rax, qword ptr [rbp - 0x40]
	jmp	.L273
.L285:
	mov	DWORD PTR -60[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_24413873[rip]
	test	eax, eax
	je	.L274
	mov	DWORD PTR -28[rbp], 0
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -4[rbp], 0
	jmp	.L275
sub rdx, rax
.L278:
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -64[rbp], -2
add rdx, rax
	mov	eax, DWORD PTR __merger_cond_true_24413873[rip]
mov rax, qword ptr [rbp - 0x48]
	test	eax, eax
mov eax, 0
	je	.L276
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -65[rbp], al
add rax, rdx
	movzx	eax, BYTE PTR -65[rbp]
add rax, rdx
mov rsi, rcx
movzx eax, byte ptr [rax]
add rax, rdx
cmp al,0x100
movzx eax, byte ptr [rax]
add rdx, rax
	shr	al, 4
mov rax, qword ptr [rbp - 0x48]
	movzx	eax, al
mov rax, qword ptr [rbp - 0x48]
mov rax, qword ptr [rbp - 8]
	and	eax, 15
movzx eax, byte ptr [rax]
add rax, rdx
movzx eax, byte ptr [rax]
	mov	ecx, eax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
add rax, rdx
	movsx	rdx, ecx
cmp rax, qword ptr [rbp - 0x50]
mov eax, dword ptr [rbp - 0x14]
	lea	rcx, hexdigits[rip]
	movzx	edx, BYTE PTR [rdx+rcx]
cmp rax, qword ptr [rbp - 0x50]
	mov	BYTE PTR [rax], dl
	movzx	eax, BYTE PTR -65[rbp]
mov rax, qword ptr [rbp - 0x48]
	and	eax, 15
	mov	ecx, eax
mov rdx, qword ptr [rbp - 8]
	mov	rax, QWORD PTR -24[rbp]
mov rax, qword ptr [rbp - 0x10]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
mov rdx, qword ptr [rbp - 8]
	movsx	rdx, ecx
mov rax, qword ptr [rbp - 0x40]
	lea	rcx, hexdigits[rip]
	movzx	edx, BYTE PTR [rdx+rcx]
mov rax, qword ptr [rbp - 0x10]
mov rax, qword ptr [rbp - 0x10]
	mov	BYTE PTR [rax], dl
mov rdx, qword ptr [rbp - 8]
mov rdi, rax
	add	DWORD PTR -4[rbp], 1
cmp al,0x100
	add	QWORD PTR -16[rbp], 1
mov rax, qword ptr [rbp - 0x10]
add rdx, rax
add rax, rdx
.L276:
	mov	DWORD PTR -72[rbp], 3
mov rax, qword ptr [rbp - 0x40]
add rax, rdx
mov rax, qword ptr [rbp - 0x48]
add rax, rdx
	mov	DWORD PTR -76[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_24413873[rip]
	test	eax, eax
	jne	.L277
mov rax, qword ptr [rbp - 0x48]
	mov	DWORD PTR -80[rbp], 3
.L277:
mov rdx, qword ptr [rbp - 8]
	mov	DWORD PTR -84[rbp], 3
mov dword ptr [rbp - 0x14],0x100
.L275:
	mov	eax, DWORD PTR -4[rbp]
mov rax, qword ptr [rbp - 8]
	cmp	eax, DWORD PTR -40[rbp]
	jl	.L278
mov rax, qword ptr [rbp - 0x10]
	mov	rax, QWORD PTR -24[rbp]
	mov	BYTE PTR [rax], 0
	mov	eax, DWORD PTR -40[rbp]
	lea	edx, [rax+rax]
	mov	rsi, QWORD PTR -48[rbp]
add rax, rdx
	mov	rax, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR sqlite3_free@GOTPCREL[rip]
mov rdx, qword ptr [rbp - 8]
	mov	rdi, rax
mov eax, dword ptr [rbp - 0x14]
	call	sqlite3_result_text@PLT
.L274:
	mov	DWORD PTR -88[rbp], 3
	mov	DWORD PTR -92[rbp], -2
	jmp	.L279
.L283:
	mov	DWORD PTR -96[rbp], 3
	mov	DWORD PTR -100[rbp], -2
add rax, rdx
mov rax, qword ptr [rbp - 0x10]
	mov	eax, DWORD PTR __merger_cond_true_24413873[rip]
call 0x100
	test	eax, eax
	jne	.L280
	mov	DWORD PTR -120[rbp], 3
	jmp	.L281
add rax, rdx
.L280:
mov eax, 0
mov rax, qword ptr [rbp - 0x40]
add rax, rdx
	mov	DWORD PTR -104[rbp], 3
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -108[rbp], -2
cmp rax, qword ptr [rbp - 0x50]
movzx eax, byte ptr [rax]
	mov	eax, DWORD PTR __merger_cond_true_24413873[rip]
	test	eax, eax
	jne	.L282
	mov	DWORD PTR -116[rbp], 3
	jmp	.L281
mov rdx, qword ptr [rbp - 8]
mov rax, qword ptr [rbp - 0x10]
cmp al,0x100
.L282:
	mov	DWORD PTR -112[rbp], 3
.L279:
	mov	eax, DWORD PTR __merger_cond_true_24413873[rip]
	test	eax, eax
mov eax, dword ptr [rbp - 0x14]
	je	.L283
.L281:
mov rdx, qword ptr [rbp - 8]
mov rdx, qword ptr [rbp - 8]
mov rdx, qword ptr [rbp - 8]
cmp rax, qword ptr [rbp - 0x50]
call 0x100
	mov	DWORD PTR -124[rbp], 3
.L273:
	cmp	QWORD PTR -56[rbp], 0
	je	.L286
mov rax, qword ptr [rbp - 0x10]
cmp al,0x100
	cmp	DWORD PTR -28[rbp], 0
mov rax, qword ptr [rbp - 0x48]
add rax, 2
call 0x100
add qword ptr [rbp - 0x10], 1
	jne	.L285
add rax, rdx
.L286:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	hexFunc, .-hexFunc
	.type	strContainsChar, @function
strContainsChar:
.LFB41:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	DWORD PTR -48[rbp], edx
	mov	eax, DWORD PTR -44[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L288
.L292:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	js	.L289
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	jmp	.L290
.L289:
	lea	rax, -24[rbp]
	mov	rdi, rax
	call	sqlite3Utf8Read@PLT
.L290:
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -48[rbp]
	jne	.L288
	mov	eax, 1
	jmp	.L293
.L288:
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -8[rbp]
	jb	.L292
	mov	eax, 0
.L293:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	strContainsChar, .-strContainsChar
	.section	.rodata
.LC16:
	.string	""
	.text
	.type	unhexFunc, @function
unhexFunc:
.LFB42:
	.cfi_endproc
.LFE42:
	.size	unhexFunc, .-unhexFunc
	.type	zeroblobFunc, @function
zeroblobFunc:
.LFB43:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int64@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jns	.L316
	mov	QWORD PTR -8[rbp], 0
.L316:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_result_zeroblob64@PLT
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	je	.L318
	mov	edx, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3_result_error_code@PLT
.L318:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	zeroblobFunc, .-zeroblobFunc
	.type	replaceFunc, @function
replaceFunc:
.LFB44:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	add	rsp, -128
	mov	QWORD PTR -104[rbp], rdi
	mov	DWORD PTR -108[rbp], esi
	mov	QWORD PTR -120[rbp], rdx
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	sqlite3_context_db_handle@PLT
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -48[rbp], 0
	je	.L333
	mov	rax, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -52[rbp], eax
	mov	rax, QWORD PTR -120[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -64[rbp], rax
	cmp	QWORD PTR -64[rbp], 0
	je	.L334
	mov	rax, QWORD PTR -64[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L323
	mov	rax, QWORD PTR -120[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_result_value@PLT
	jmp	.L319
.L323:
	mov	rax, QWORD PTR -120[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -68[rbp], eax
	mov	rax, QWORD PTR -120[rbp]
	add	rax, 16
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -80[rbp], rax
	cmp	QWORD PTR -80[rbp], 0
	je	.L335
	mov	rax, QWORD PTR -120[rbp]
	add	rax, 16
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -84[rbp], eax
	mov	eax, DWORD PTR -52[rbp]
	add	eax, 1
	cdqe
	mov	QWORD PTR -16[rbp], rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	contextMalloc
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L336
	mov	eax, DWORD PTR -52[rbp]
	sub	eax, DWORD PTR -68[rbp]
	mov	DWORD PTR -88[rbp], eax
	mov	DWORD PTR -28[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -20[rbp], eax
	jmp	.L326
.L332:
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L327
	mov	eax, DWORD PTR -68[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -48[rbp]
	add	rcx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	memcmp@PLT
	test	eax, eax
	je	.L328
.L327:
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -48[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -24[rbp], edx
	movsx	rdx, eax
	mov	rax, QWORD PTR -8[rbp]
	add	rdx, rax
	movzx	eax, BYTE PTR [rcx]
	mov	BYTE PTR [rdx], al
	jmp	.L329
.L328:
	mov	eax, DWORD PTR -84[rbp]
	cmp	eax, DWORD PTR -68[rbp]
	jle	.L330
	mov	eax, DWORD PTR -84[rbp]
	sub	eax, DWORD PTR -68[rbp]
	cdqe
	add	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 136[rax]
	cdqe
	cmp	rdx, rax
	jle	.L331
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	sqlite3_result_error_toobig@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3_free@PLT
	jmp	.L319
.L331:
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	and	eax, DWORD PTR -28[rbp]
	test	eax, eax
	jne	.L330
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -96[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	rcx, QWORD PTR -16[rbp]
	sub	rcx, rax
	lea	rax, -1[rcx]
	add	rax, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3Realloc@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L330
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	sqlite3_result_error_nomem@PLT
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	call	sqlite3_free@PLT
	jmp	.L319
.L330:
	mov	eax, DWORD PTR -84[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -8[rbp]
	add	rcx, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	memcpy@PLT
	mov	eax, DWORD PTR -84[rbp]
	add	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -68[rbp]
	sub	eax, 1
	add	DWORD PTR -20[rbp], eax
.L329:
	add	DWORD PTR -20[rbp], 1
.L326:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -88[rbp]
	jle	.L332
	mov	eax, DWORD PTR -52[rbp]
	sub	eax, DWORD PTR -20[rbp]
	cdqe
	mov	edx, DWORD PTR -20[rbp]
	movsx	rcx, edx
	mov	rdx, QWORD PTR -48[rbp]
	lea	rsi, [rcx+rdx]
	mov	edx, DWORD PTR -24[rbp]
	movsx	rcx, edx
	mov	rdx, QWORD PTR -8[rbp]
	add	rcx, rdx
	mov	rdx, rax
	mov	rdi, rcx
	call	memcpy@PLT
	mov	eax, DWORD PTR -52[rbp]
	sub	eax, DWORD PTR -20[rbp]
	add	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	edx, DWORD PTR -24[rbp]
	mov	rsi, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rcx, QWORD PTR sqlite3_free@GOTPCREL[rip]
	mov	rdi, rax
	call	sqlite3_result_text@PLT
	jmp	.L319
.L333:
	nop
	jmp	.L319
.L334:
	nop
	jmp	.L319
.L335:
	nop
	jmp	.L319
.L336:
	nop
.L319:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	replaceFunc, .-replaceFunc
	.type	trimFunc, @function
trimFunc:
.LFB45:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 112
	mov	QWORD PTR -88[rbp], rdi
	mov	DWORD PTR -92[rbp], esi
	mov	QWORD PTR -104[rbp], rdx
	mov	QWORD PTR -32[rbp], 0
	mov	QWORD PTR -40[rbp], 0
	mov	rax, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 5
	je	.L372
	mov	rax, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L373
	mov	rax, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -92[rbp], 1
	jne	.L341
	mov	DWORD PTR -44[rbp], 1
	lea	rax, lenOne.2[rip]
	mov	QWORD PTR -32[rbp], rax
	lea	rax, azOne.1[rip]
	mov	QWORD PTR -40[rbp], rax
	mov	QWORD PTR -16[rbp], 0
	jmp	.L342
.L341:
	mov	rax, QWORD PTR -104[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L374
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -56[rbp], rax
	mov	DWORD PTR -44[rbp], 0
	jmp	.L344
.L348:
	mov	rax, QWORD PTR -56[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -56[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, -65
	jbe	.L345
	jmp	.L346
.L347:
	add	QWORD PTR -56[rbp], 1
.L346:
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	and	eax, 192
	cmp	eax, 128
	je	.L347
.L345:
	add	DWORD PTR -44[rbp], 1
.L344:
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L348
	cmp	DWORD PTR -44[rbp], 0
	jle	.L342
	mov	eax, DWORD PTR -44[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	contextMalloc
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	je	.L375
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -56[rbp], rax
	mov	DWORD PTR -44[rbp], 0
	jmp	.L350
.L354:
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -56[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -56[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, -65
	jbe	.L351
	jmp	.L352
.L353:
	add	QWORD PTR -56[rbp], 1
.L352:
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	and	eax, 192
	cmp	eax, 128
	je	.L353
.L351:
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, rdx
	sub	rcx, rax
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	edx, ecx
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -44[rbp], 1
.L350:
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L354
.L342:
	cmp	DWORD PTR -44[rbp], 0
	jle	.L355
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	sqlite3_user_data@PLT
	mov	DWORD PTR -68[rbp], eax
	mov	eax, DWORD PTR -68[rbp]
	and	eax, 1
	test	eax, eax
	je	.L356
	jmp	.L357
.L363:
	mov	DWORD PTR -60[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L358
.L361:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -60[rbp], eax
	mov	eax, DWORD PTR -60[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jb	.L359
	mov	edx, DWORD PTR -60[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memcmp@PLT
	test	eax, eax
	je	.L376
.L359:
	add	DWORD PTR -24[rbp], 1
.L358:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L361
	jmp	.L360
.L376:
	nop
.L360:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jge	.L377
	mov	eax, DWORD PTR -60[rbp]
	add	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -60[rbp]
	sub	DWORD PTR -20[rbp], eax
.L357:
	cmp	DWORD PTR -20[rbp], 0
	jne	.L363
	jmp	.L356
.L377:
	nop
.L356:
	mov	eax, DWORD PTR -68[rbp]
	and	eax, 2
	test	eax, eax
	je	.L364
	jmp	.L365
.L371:
	mov	DWORD PTR -64[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L366
.L369:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jb	.L367
	mov	edx, DWORD PTR -64[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	mov	rax, QWORD PTR [rax]
	mov	ecx, DWORD PTR -20[rbp]
	sub	ecx, DWORD PTR -64[rbp]
	mov	esi, ecx
	mov	rcx, QWORD PTR -8[rbp]
	add	rcx, rsi
	mov	rsi, rax
	mov	rdi, rcx
	call	memcmp@PLT
	test	eax, eax
	je	.L378
.L367:
	add	DWORD PTR -24[rbp], 1
.L366:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L369
	jmp	.L368
.L378:
	nop
.L368:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jge	.L379
	mov	eax, DWORD PTR -64[rbp]
	sub	DWORD PTR -20[rbp], eax
.L365:
	cmp	DWORD PTR -20[rbp], 0
	jne	.L371
	jmp	.L364
.L379:
	nop
.L364:
	cmp	QWORD PTR -16[rbp], 0
	je	.L355
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3_free@PLT
.L355:
	mov	edx, DWORD PTR -20[rbp]
	mov	rsi, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rcx, -1
	mov	rdi, rax
	call	sqlite3_result_text@PLT
	jmp	.L337
.L372:
	nop
	jmp	.L337
.L373:
	nop
	jmp	.L337
.L374:
	nop
	jmp	.L337
.L375:
	nop
.L337:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	trimFunc, .-trimFunc
	.type	concatFuncCore, @function
concatFuncCore:
.LFB46:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	QWORD PTR -72[rbp], rdx
	mov	DWORD PTR -64[rbp], ecx
	mov	QWORD PTR -80[rbp], r8
	mov	QWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L381
.L382:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	cdqe
	add	QWORD PTR -16[rbp], rax
	add	DWORD PTR -20[rbp], 1
.L381:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L382
	mov	eax, DWORD PTR -60[rbp]
	sub	eax, 1
	imul	eax, DWORD PTR -64[rbp]
	cdqe
	add	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 1
	mov	rdi, rax
	call	sqlite3_malloc64@PLT
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	jne	.L383
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	sqlite3_result_error_nomem@PLT
	jmp	.L380
.L383:
	mov	QWORD PTR -8[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L385
.L388:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	cdqe
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	jle	.L386
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -48[rbp], 0
	je	.L386
	cmp	QWORD PTR -8[rbp], 0
	jle	.L387
	cmp	DWORD PTR -64[rbp], 0
	jle	.L387
	mov	eax, DWORD PTR -64[rbp]
	movsx	rdx, eax
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -32[rbp]
	add	rcx, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	memcpy@PLT
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	add	QWORD PTR -8[rbp], rax
.L387:
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -32[rbp]
	add	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	memcpy@PLT
	mov	rax, QWORD PTR -40[rbp]
	add	QWORD PTR -8[rbp], rax
.L386:
	add	DWORD PTR -20[rbp], 1
.L385:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L388
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r8d, 1
	mov	rcx, QWORD PTR sqlite3_free@GOTPCREL[rip]
	mov	rdi, rax
	call	sqlite3_result_text64@PLT
.L380:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	concatFuncCore, .-concatFuncCore
	.type	concatFunc, @function
concatFunc:
.LFB47:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	esi, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	lea	r8, .LC16[rip]
	mov	ecx, 0
	mov	rdi, rax
	call	concatFuncCore
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	concatFunc, .-concatFunc
	.type	concatwsFunc, @function
concatwsFunc:
.LFB48:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L393
	mov	rax, QWORD PTR -40[rbp]
	lea	rdi, 8[rax]
	mov	eax, DWORD PTR -28[rbp]
	lea	esi, -1[rax]
	mov	rcx, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r8, rcx
	mov	ecx, edx
	mov	rdx, rdi
	mov	rdi, rax
	call	concatFuncCore
	jmp	.L390
.L393:
	nop
.L390:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	concatwsFunc, .-concatwsFunc
	.section	.rodata
.LC17:
	.string	"not authorized"
	.text
	.type	loadExt, @function
loadExt:
.LFB49:
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
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3_context_db_handle@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	QWORD PTR -32[rbp], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 48[rax]
	and	eax, 131072
	test	rax, rax
	jne	.L395
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, -1
	lea	rcx, .LC17[rip]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3_result_error@PLT
	jmp	.L394
.L395:
	cmp	DWORD PTR -44[rbp], 2
	jne	.L397
	mov	rax, QWORD PTR -56[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -8[rbp], rax
	jmp	.L398
.L397:
	mov	QWORD PTR -8[rbp], 0
.L398:
	cmp	QWORD PTR -16[rbp], 0
	je	.L394
	lea	rcx, -32[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3_load_extension@PLT
	test	eax, eax
	je	.L394
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, -1
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3_result_error@PLT
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	sqlite3_free@PLT
.L394:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	loadExt, .-loadExt
	.type	kahanBabuskaNeumaierStep, @function
kahanBabuskaNeumaierStep:
.LFB50:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	movsd	QWORD PTR -32[rbp], xmm0
	mov	rax, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm1, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	movq	xmm1, QWORD PTR .LC18[rip]
	andpd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -32[rbp]
	movq	xmm2, QWORD PTR .LC18[rip]
	andpd	xmm1, xmm2
	comisd	xmm0, xmm1
	jbe	.L405
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	xmm2, QWORD PTR -16[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm1, xmm0
	mov	rax, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR 8[rax]
	addsd	xmm0, xmm1
	mov	rax, QWORD PTR -24[rbp]
	movsd	QWORD PTR 8[rax], xmm0
	jmp	.L403
.L405:
	movsd	xmm0, QWORD PTR -32[rbp]
	movsd	xmm2, QWORD PTR -16[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR -8[rbp]
	addsd	xmm1, xmm0
	mov	rax, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR 8[rax]
	addsd	xmm0, xmm1
	mov	rax, QWORD PTR -24[rbp]
	movsd	QWORD PTR 8[rax], xmm0
.L403:
	movsd	xmm0, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	movsd	QWORD PTR [rax], xmm0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	kahanBabuskaNeumaierStep, .-kahanBabuskaNeumaierStep
	.type	kahanBabuskaNeumaierStepInt64, @function
kahanBabuskaNeumaierStepInt64:
.LFB51:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	movabs	rax, -4503599627370495
	cmp	QWORD PTR -32[rbp], rax
	jl	.L407
	movabs	rax, 4503599627370495
	cmp	QWORD PTR -32[rbp], rax
	jle	.L408
.L407:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, rdx
	sar	rax, 63
	shr	rax, 50
	add	rdx, rax
	and	edx, 16383
	sub	rdx, rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, QWORD PTR -16[rbp]
	movq	rdx, xmm1
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rdx
	mov	rdi, rax
	call	kahanBabuskaNeumaierStep
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, QWORD PTR -8[rbp]
	movq	rdx, xmm2
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rdx
	mov	rdi, rax
	call	kahanBabuskaNeumaierStep
	jmp	.L409
.L408:
	pxor	xmm3, xmm3
	cvtsi2sd	xmm3, QWORD PTR -32[rbp]
	movq	rdx, xmm3
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rdx
	mov	rdi, rax
	call	kahanBabuskaNeumaierStep
	nop
.L409:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	kahanBabuskaNeumaierStepInt64, .-kahanBabuskaNeumaierStepInt64
	.type	kahanBabuskaNeumaierInit, @function
kahanBabuskaNeumaierInit:
.LFB52:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	movabs	rax, -4503599627370495
	cmp	QWORD PTR -32[rbp], rax
	jl	.L411
	movabs	rax, 4503599627370495
	cmp	QWORD PTR -32[rbp], rax
	jle	.L412
.L411:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, rdx
	sar	rax, 63
	shr	rax, 50
	add	rdx, rax
	and	edx, 16383
	sub	rdx, rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -8[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mov	rax, QWORD PTR -24[rbp]
	movsd	QWORD PTR [rax], xmm0
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	movsd	QWORD PTR 8[rax], xmm0
	jmp	.L413
.L412:
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	movsd	QWORD PTR [rax], xmm0
	mov	rax, QWORD PTR -24[rbp]
	pxor	xmm0, xmm0
	movsd	QWORD PTR 8[rax], xmm0
	nop
.L413:
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	kahanBabuskaNeumaierInit, .-kahanBabuskaNeumaierInit
	.type	sumStep, @function
sumStep:
.LFB53:
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
	mov	esi, 40
	mov	rdi, rax
	call	sqlite3_aggregate_context@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_numeric_type@PLT
	mov	DWORD PTR -12[rbp], eax
	cmp	QWORD PTR -8[rbp], 0
	je	.L421
	cmp	DWORD PTR -12[rbp], 5
	je	.L421
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 32[rax]
	test	al, al
	jne	.L416
	cmp	DWORD PTR -12[rbp], 1
	je	.L417
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	kahanBabuskaNeumaierInit
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 32[rax], 1
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_double@PLT
	movq	rax, xmm0
	mov	rdx, QWORD PTR -8[rbp]
	movq	xmm0, rax
	mov	rdi, rdx
	call	kahanBabuskaNeumaierStep
	jmp	.L421
.L417:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int64@PLT
	mov	rdx, rax
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3AddInt64@PLT
	test	eax, eax
	jne	.L418
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L421
.L418:
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 33[rax], 1
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	kahanBabuskaNeumaierInit
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 32[rax], 1
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int64@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	kahanBabuskaNeumaierStepInt64
	jmp	.L421
.L416:
	cmp	DWORD PTR -12[rbp], 1
	jne	.L420
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int64@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	kahanBabuskaNeumaierStepInt64
	jmp	.L421
.L420:
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 33[rax], 0
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_double@PLT
	movq	rax, xmm0
	mov	rdx, QWORD PTR -8[rbp]
	movq	xmm0, rax
	mov	rdi, rdx
	call	kahanBabuskaNeumaierStep
.L421:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	sumStep, .-sumStep
	.type	sumInverse, @function
sumInverse:
.LFB54:
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
	mov	esi, 40
	mov	rdi, rax
	call	sqlite3_aggregate_context@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_numeric_type@PLT
	mov	DWORD PTR -12[rbp], eax
	cmp	QWORD PTR -8[rbp], 0
	je	.L427
	cmp	DWORD PTR -12[rbp], 5
	je	.L427
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 32[rax]
	test	al, al
	jne	.L424
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int64@PLT
	mov	rdx, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rdx]
	sub	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L427
.L424:
	cmp	DWORD PTR -12[rbp], 1
	jne	.L425
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int64@PLT
	mov	QWORD PTR -24[rbp], rax
	movabs	rax, -9223372036854775808
	cmp	QWORD PTR -24[rbp], rax
	je	.L426
	mov	rax, QWORD PTR -24[rbp]
	neg	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	kahanBabuskaNeumaierStepInt64
	jmp	.L427
.L426:
	mov	rax, QWORD PTR -8[rbp]
	movabs	rdx, 9223372036854775807
	mov	rsi, rdx
	mov	rdi, rax
	call	kahanBabuskaNeumaierStepInt64
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	kahanBabuskaNeumaierStepInt64
	jmp	.L427
.L425:
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_double@PLT
	movq	rax, xmm0
	movq	xmm0, QWORD PTR .LC2[rip]
	movq	xmm1, rax
	xorpd	xmm1, xmm0
	movq	rdx, xmm1
	mov	rax, QWORD PTR -8[rbp]
	movq	xmm0, rdx
	mov	rdi, rax
	call	kahanBabuskaNeumaierStep
.L427:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	sumInverse, .-sumInverse
	.type	sumFinalize, @function
sumFinalize:
.LFB55:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	sqlite3_aggregate_context@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L433
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jle	.L433
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 32[rax]
	test	al, al
	je	.L430
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 33[rax]
	test	al, al
	je	.L431
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, -1
	lea	rcx, .LC0[rip]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3_result_error@PLT
	jmp	.L433
.L431:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	movq	xmm0, rax
	call	sqlite3IsNaN@PLT
	test	eax, eax
	jne	.L432
	mov	rax, QWORD PTR -8[rbp]
	movsd	xmm1, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR 8[rax]
	addsd	xmm1, xmm0
	movq	rdx, xmm1
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rdx
	mov	rdi, rax
	call	sqlite3_result_double@PLT
	jmp	.L433
.L432:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rdx
	mov	rdi, rax
	call	sqlite3_result_double@PLT
	jmp	.L433
.L430:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_result_int64@PLT
.L433:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	sumFinalize, .-sumFinalize
	.type	avgFinalize, @function
avgFinalize:
.LFB56:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	sqlite3_aggregate_context@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L438
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jle	.L438
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 32[rax]
	test	al, al
	je	.L436
	mov	rax, QWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	movq	xmm0, rax
	call	sqlite3IsNaN@PLT
	test	eax, eax
	jne	.L437
	mov	rax, QWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR 8[rax]
	movsd	xmm1, QWORD PTR -8[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	jmp	.L437
.L436:
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 16[rax]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	movsd	QWORD PTR -8[rbp], xmm0
.L437:
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 24[rax]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	movsd	xmm0, QWORD PTR -8[rbp]
	divsd	xmm0, xmm1
	movq	rdx, xmm0
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rdx
	mov	rdi, rax
	call	sqlite3_result_double@PLT
.L438:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	avgFinalize, .-avgFinalize
	.type	totalFinalize, @function
totalFinalize:
.LFB57:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	pxor	xmm0, xmm0
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	sqlite3_aggregate_context@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L440
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 32[rax]
	test	al, al
	je	.L441
	mov	rax, QWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	movq	xmm0, rax
	call	sqlite3IsNaN@PLT
	test	eax, eax
	jne	.L440
	mov	rax, QWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR 8[rax]
	movsd	xmm1, QWORD PTR -8[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	jmp	.L440
.L441:
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 16[rax]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	movsd	QWORD PTR -8[rbp], xmm0
.L440:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rdx
	mov	rdi, rax
	call	sqlite3_result_double@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	totalFinalize, .-totalFinalize
	.type	countStep, @function
countStep:
.LFB58:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 8
	mov	rdi, rax
	call	sqlite3_aggregate_context@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	DWORD PTR -28[rbp], 0
	je	.L443
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 5
	je	.L445
.L443:
	cmp	QWORD PTR -8[rbp], 0
	je	.L445
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
.L445:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	countStep, .-countStep
	.type	countFinalize, @function
countFinalize:
.LFB59:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	sqlite3_aggregate_context@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L447
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	jmp	.L448
.L447:
	mov	eax, 0
.L448:
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	sqlite3_result_int64@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	countFinalize, .-countFinalize
	.type	countInverse, @function
countInverse:
.LFB60:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 8
	mov	rdi, rax
	call	sqlite3_aggregate_context@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	DWORD PTR -28[rbp], 0
	je	.L450
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 5
	je	.L452
.L450:
	cmp	QWORD PTR -8[rbp], 0
	je	.L452
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
.L452:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	countInverse, .-countInverse
	.type	minmaxStep, @function
minmaxStep:
.LFB61:
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
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	esi, 56
	mov	rdi, rax
	call	sqlite3_aggregate_context@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L462
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 5
	jne	.L456
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, WORD PTR 20[rax]
	test	ax, ax
	je	.L453
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3SkipAccumulatorLoad
	jmp	.L453
.L456:
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, WORD PTR 20[rax]
	test	ax, ax
	je	.L457
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3GetFuncCollSeq
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3_user_data@PLT
	test	rax, rax
	setne	al
	movzx	eax, al
	mov	DWORD PTR -28[rbp], eax
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3MemCompare@PLT
	mov	DWORD PTR -32[rbp], eax
	cmp	DWORD PTR -28[rbp], 0
	je	.L458
	cmp	DWORD PTR -32[rbp], 0
	js	.L459
.L458:
	cmp	DWORD PTR -28[rbp], 0
	jne	.L460
	cmp	DWORD PTR -32[rbp], 0
	jle	.L460
.L459:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3VdbeMemCopy@PLT
	jmp	.L453
.L460:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3SkipAccumulatorLoad
	jmp	.L453
.L457:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3_context_db_handle@PLT
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 24[rdx], rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3VdbeMemCopy@PLT
	jmp	.L453
.L462:
	nop
.L453:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	minmaxStep, .-minmaxStep
	.type	minMaxValueFinalize, @function
minMaxValueFinalize:
.LFB62:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	sqlite3_aggregate_context@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L466
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, WORD PTR 20[rax]
	test	ax, ax
	je	.L465
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_result_value@PLT
.L465:
	cmp	DWORD PTR -28[rbp], 0
	jne	.L466
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3VdbeMemRelease@PLT
.L466:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	minMaxValueFinalize, .-minMaxValueFinalize
	.type	minMaxValue, @function
minMaxValue:
.LFB63:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	minMaxValueFinalize
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	minMaxValue, .-minMaxValue
	.type	minMaxFinalize, @function
minMaxFinalize:
.LFB64:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	minMaxValueFinalize
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	minMaxFinalize, .-minMaxFinalize
	.type	groupConcatStep, @function
groupConcatStep:
.LFB65:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 112
	mov	QWORD PTR -88[rbp], rdi
	mov	DWORD PTR -92[rbp], esi
	mov	QWORD PTR -104[rbp], rdx
	mov	rax, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 5
	je	.L485
	mov	rax, QWORD PTR -88[rbp]
	mov	esi, 48
	mov	rdi, rax
	call	sqlite3_aggregate_context@PLT
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	je	.L469
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	sqlite3_context_db_handle@PLT
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 20[rax]
	test	eax, eax
	sete	al
	movzx	eax, al
	mov	DWORD PTR -44[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 136[rax]
	mov	edx, eax
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR 20[rax], edx
	cmp	DWORD PTR -92[rbp], 1
	jne	.L472
	cmp	DWORD PTR -44[rbp], 0
	jne	.L473
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, 44
	mov	esi, 1
	mov	rdi, rax
	call	sqlite3_str_appendchar@PLT
	jmp	.L474
.L473:
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR 36[rax], 1
	jmp	.L474
.L472:
	cmp	DWORD PTR -44[rbp], 0
	jne	.L475
	mov	rax, QWORD PTR -104[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -104[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -4[rbp], eax
	cmp	QWORD PTR -56[rbp], 0
	je	.L476
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	rcx, QWORD PTR -56[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3_str_append@PLT
	jmp	.L477
.L476:
	mov	DWORD PTR -4[rbp], 0
.L477:
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 36[rax]
	cmp	DWORD PTR -4[rbp], eax
	jne	.L478
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 40[rax]
	test	rax, rax
	je	.L474
.L478:
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L479
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 32[rax]
	add	eax, 1
	cdqe
	sal	rax, 2
	mov	rdi, rax
	call	sqlite3_malloc64@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L480
	mov	DWORD PTR -20[rbp], 0
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 32[rax]
	sub	eax, 1
	mov	DWORD PTR -60[rbp], eax
	jmp	.L481
.L482:
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -20[rbp], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 36[rax]
	mov	DWORD PTR [rdx], eax
.L481:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L482
	jmp	.L480
.L479:
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 32[rax]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_realloc64@PLT
	mov	QWORD PTR -16[rbp], rax
.L480:
	cmp	QWORD PTR -16[rbp], 0
	je	.L483
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 32[rax]
	test	eax, eax
	jle	.L484
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 32[rax]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rdx], eax
.L484:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L474
.L483:
	mov	rax, QWORD PTR -32[rbp]
	mov	esi, 7
	mov	rdi, rax
	call	sqlite3StrAccumSetError@PLT
	jmp	.L474
.L475:
	mov	rax, QWORD PTR -104[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	rdx, QWORD PTR -32[rbp]
	mov	DWORD PTR 36[rdx], eax
.L474:
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 32[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR 32[rax], edx
	mov	rax, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -76[rbp], eax
	cmp	QWORD PTR -72[rbp], 0
	je	.L469
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -76[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3_str_append@PLT
	jmp	.L469
.L485:
	nop
.L469:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	groupConcatStep, .-groupConcatStep
	.type	groupConcatInverse, @function
groupConcatInverse:
.LFB66:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_type@PLT
	cmp	eax, 5
	je	.L493
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 48
	mov	rdi, rax
	call	sqlite3_aggregate_context@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L486
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_text@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_bytes@PLT
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 32[rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR 32[rax], edx
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 40[rax]
	test	rax, rax
	je	.L489
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 32[rax]
	test	eax, eax
	jle	.L490
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 32[rax]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 40[rax]
	lea	rcx, 4[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	memmove@PLT
	jmp	.L490
.L489:
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 36[rax]
	add	DWORD PTR -4[rbp], eax
.L490:
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 24[rax]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L491
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR 24[rax], 0
	jmp	.L492
.L491:
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR 24[rax]
	mov	eax, DWORD PTR -4[rbp]
	sub	edx, eax
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR 24[rax], edx
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 24[rax]
	mov	esi, eax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, [rdx+rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, rsi
	mov	rsi, rcx
	mov	rdi, rax
	call	memmove@PLT
.L492:
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 24[rax]
	test	eax, eax
	jne	.L486
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR 20[rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	rdi, rax
	call	sqlite3_free@PLT
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 40[rax], 0
	jmp	.L486
.L493:
	nop
.L486:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	groupConcatInverse, .-groupConcatInverse
	.type	groupConcatFinalize, @function
groupConcatFinalize:
.LFB67:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	sqlite3_aggregate_context@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L496
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3ResultStrAccum@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	rdi, rax
	call	sqlite3_free@PLT
.L496:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	groupConcatFinalize, .-groupConcatFinalize
	.type	groupConcatValue, @function
groupConcatValue:
.LFB68:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	sqlite3_aggregate_context@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L501
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 28[rax]
	cmp	al, 18
	jne	.L499
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3_result_error_toobig@PLT
	jmp	.L501
.L499:
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 28[rax]
	cmp	al, 7
	jne	.L500
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3_result_error_nomem@PLT
	jmp	.L501
.L500:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	sqlite3_str_value@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 24[rax]
	mov	edx, eax
	mov	rsi, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, -1
	mov	rdi, rax
	call	sqlite3_result_text@PLT
.L501:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	groupConcatValue, .-groupConcatValue
	.section	.rodata
.LC19:
	.string	"MATCH"
	.text
	.globl	sqlite3RegisterPerConnectionBuiltinFunctions
	.type	sqlite3RegisterPerConnectionBuiltinFunctions, @function
sqlite3RegisterPerConnectionBuiltinFunctions:
.LFB69:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, 2
	lea	rcx, .LC19[rip]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3_overload_function@PLT
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 7
	jne	.L504
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3OomFault@PLT
.L504:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	sqlite3RegisterPerConnectionBuiltinFunctions, .-sqlite3RegisterPerConnectionBuiltinFunctions
	.section	.rodata
.LC20:
	.string	"like"
	.text
	.globl	sqlite3RegisterLikeFunctions
	.type	sqlite3RegisterLikeFunctions, @function
sqlite3RegisterLikeFunctions:
.LFB70:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	cmp	DWORD PTR -44[rbp], 0
	je	.L506
	lea	rax, likeInfoAlt[rip]
	mov	QWORD PTR -8[rbp], rax
	mov	DWORD PTR -12[rbp], 12
	jmp	.L507
.L506:
	lea	rax, likeInfoNorm[rip]
	mov	QWORD PTR -8[rbp], rax
	mov	DWORD PTR -12[rbp], 4
.L507:
	mov	DWORD PTR -16[rbp], 2
	jmp	.L508
.L509:
	mov	rcx, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	rax, QWORD PTR -40[rbp]
	sub	rsp, 8
	push	0
	push	0
	push	0
	push	0
	push	0
	lea	r9, likeFunc[rip]
	mov	r8, rcx
	mov	ecx, 1
	lea	rsi, .LC20[rip]
	mov	rdi, rax
	call	sqlite3CreateFunc@PLT
	add	rsp, 48
	mov	edx, DWORD PTR -16[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r8d, 0
	mov	ecx, 1
	lea	rsi, .LC20[rip]
	mov	rdi, rax
	call	sqlite3FindFunction@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, DWORD PTR 4[rax]
	mov	eax, DWORD PTR -12[rbp]
	or	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR 4[rax], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	and	eax, -2097153
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR 4[rax], edx
	add	DWORD PTR -16[rbp], 1
.L508:
	cmp	DWORD PTR -16[rbp], 3
	jle	.L509
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	sqlite3RegisterLikeFunctions, .-sqlite3RegisterLikeFunctions
	.globl	sqlite3IsLikeFunction
	.type	sqlite3IsLikeFunction, @function
sqlite3IsLikeFunction:
.LFB71:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR 32[rax]
	test	rax, rax
	jne	.L511
	mov	eax, 0
	jmp	.L512
.L511:
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR 32[rax]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, QWORD PTR 8[rax]
	mov	edx, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r8d, 0
	mov	ecx, 1
	mov	rdi, rax
	call	sqlite3FindFunction@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L513
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 4[rax]
	and	eax, 4
	test	eax, eax
	jne	.L514
.L513:
	mov	eax, 0
	jmp	.L512
.L514:
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, 3
	mov	rsi, rcx
	mov	rdi, rax
	call	memcpy@PLT
	cmp	DWORD PTR -4[rbp], 2
	jg	.L515
	mov	rax, QWORD PTR -64[rbp]
	add	rax, 3
	mov	BYTE PTR [rax], 0
	jmp	.L516
.L515:
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR 32[rax]
	mov	rax, QWORD PTR 56[rax]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 117
	je	.L517
	mov	eax, 0
	jmp	.L512
.L517:
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L518
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 1
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L519
.L518:
	mov	eax, 0
	jmp	.L512
.L519:
	mov	rax, QWORD PTR -32[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L520
	mov	eax, 0
	jmp	.L512
.L520:
	mov	rax, QWORD PTR -32[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	add	rax, 1
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L521
	mov	eax, 0
	jmp	.L512
.L521:
	mov	rax, QWORD PTR -64[rbp]
	lea	rdx, 3[rax]
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
.L516:
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 4[rax]
	and	eax, 8
	test	eax, eax
	sete	al
	movzx	edx, al
	mov	rax, QWORD PTR -56[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, 1
.L512:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	sqlite3IsLikeFunction, .-sqlite3IsLikeFunction
	.type	ceilingFunc, @function
ceilingFunc:
.LFB72:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_numeric_type@PLT
	cmp	eax, 1
	je	.L523
	cmp	eax, 2
	je	.L524
	jmp	.L526
.L523:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_int64@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_result_int64@PLT
	jmp	.L526
.L524:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3_user_data@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_double@PLT
	movq	rax, xmm0
	mov	rdx, QWORD PTR -8[rbp]
	movq	xmm0, rax
	call	rdx
	movq	rax, xmm0
	mov	rdx, QWORD PTR -24[rbp]
	movq	xmm0, rax
	mov	rdi, rdx
	call	sqlite3_result_double@PLT
	nop
.L526:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	ceilingFunc, .-ceilingFunc
	.type	xCeil, @function
xCeil:
.LFB73:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -8[rbp]
	movq	xmm0, rax
	call	ceil@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	xCeil, .-xCeil
	.type	xFloor, @function
xFloor:
.LFB74:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -8[rbp]
	movq	xmm0, rax
	call	floor@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	xFloor, .-xFloor
	.type	logFunc, @function
logFunc:
.LFB75:
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
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_numeric_type@PLT
	sub	eax, 1
	cmp	eax, 1
	ja	.L549
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_double@PLT
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR -16[rbp]
	jnb	.L550
	nop
	cmp	DWORD PTR -44[rbp], 2
	jne	.L537
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_numeric_type@PLT
	sub	eax, 1
	cmp	eax, 1
	ja	.L551
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	call	log@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR -24[rbp]
	jnb	.L552
	mov	rax, QWORD PTR -56[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_double@PLT
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR -16[rbp]
	jnb	.L553
	nop
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	call	log@PLT
	movq	rax, xmm0
	movq	xmm0, rax
	divsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	jmp	.L544
.L537:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3_user_data@PLT
	cmp	eax, 1
	je	.L545
	cmp	eax, 2
	je	.L546
	jmp	.L548
.L545:
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	call	log10@PLT
	movq	rax, xmm0
	mov	QWORD PTR -8[rbp], rax
	jmp	.L544
.L546:
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	call	log2@PLT
	movq	rax, xmm0
	mov	QWORD PTR -8[rbp], rax
	jmp	.L544
.L548:
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	call	log@PLT
	movq	rax, xmm0
	mov	QWORD PTR -8[rbp], rax
	nop
.L544:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -40[rbp]
	movq	xmm0, rdx
	mov	rdi, rax
	call	sqlite3_result_double@PLT
	jmp	.L531
.L549:
	nop
	jmp	.L531
.L550:
	nop
	jmp	.L531
.L551:
	nop
	jmp	.L531
.L552:
	nop
	jmp	.L531
.L553:
	nop
.L531:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	logFunc, .-logFunc
	.type	degToRad, @function
degToRad:
.LFB76:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm1, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR .LC21[rip]
	mulsd	xmm0, xmm1
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	degToRad, .-degToRad
	.type	radToDeg, @function
radToDeg:
.LFB77:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm1, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR .LC22[rip]
	mulsd	xmm0, xmm1
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	radToDeg, .-radToDeg
	.type	math1Func, @function
math1Func:
.LFB78:
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
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_numeric_type@PLT
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 1
	je	.L559
	cmp	DWORD PTR -4[rbp], 2
	jne	.L561
.L559:
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_double@PLT
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3_user_data@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	rdx
	movq	rax, xmm0
	mov	QWORD PTR -32[rbp], rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -40[rbp]
	movq	xmm0, rdx
	mov	rdi, rax
	call	sqlite3_result_double@PLT
	jmp	.L558
.L561:
	nop
.L558:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	math1Func, .-math1Func
	.type	math2Func, @function
math2Func:
.LFB79:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_numeric_type@PLT
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 1
	je	.L563
	cmp	DWORD PTR -4[rbp], 2
	jne	.L566
.L563:
	mov	rax, QWORD PTR -72[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_numeric_type@PLT
	mov	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -8[rbp], 1
	je	.L565
	cmp	DWORD PTR -8[rbp], 2
	jne	.L567
.L565:
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_double@PLT
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_double@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	sqlite3_user_data@PLT
	mov	QWORD PTR -32[rbp], rax
	movsd	xmm0, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	rdx
	movq	rax, xmm0
	mov	QWORD PTR -40[rbp], rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -56[rbp]
	movq	xmm0, rdx
	mov	rdi, rax
	call	sqlite3_result_double@PLT
	jmp	.L562
.L566:
	nop
	jmp	.L562
.L567:
	nop
.L562:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	math2Func, .-math2Func
	.type	piFunc, @function
piFunc:
.LFB80:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR .LC23[rip]
	mov	rax, QWORD PTR -8[rbp]
	movq	xmm0, rdx
	mov	rdi, rax
	call	sqlite3_result_double@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	piFunc, .-piFunc
	.type	signFunc, @function
signFunc:
.LFB81:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_numeric_type@PLT
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 1
	je	.L570
	cmp	DWORD PTR -4[rbp], 2
	jne	.L577
.L570:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	sqlite3_value_double@PLT
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR -16[rbp]
	jbe	.L576
	mov	eax, -1
	jmp	.L574
.L576:
	movsd	xmm0, QWORD PTR -16[rbp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	seta	al
	movzx	eax, al
.L574:
	mov	rdx, QWORD PTR -24[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	sqlite3_result_int@PLT
	jmp	.L569
.L577:
	nop
.L569:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	signFunc, .-signFunc
	.globl	sqlite3RegisterBuiltinFunctions
	.type	sqlite3RegisterBuiltinFunctions, @function
sqlite3RegisterBuiltinFunctions:
.LFB82:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	call	sqlite3AlterFunctions@PLT
	call	sqlite3WindowFunctions@PLT
	call	sqlite3RegisterDateTimeFunctions@PLT
	call	sqlite3RegisterJsonFunctions@PLT
	mov	esi, 107
	lea	rax, aBuiltinFunc.0[rip]
	mov	rdi, rax
	call	sqlite3InsertBuiltinFuncs@PLT
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	sqlite3RegisterBuiltinFunctions, .-sqlite3RegisterBuiltinFunctions
	.section	.rodata
.LC24:
	.string	"integer"
.LC25:
	.string	"real"
.LC26:
	.string	"text"
.LC27:
	.string	"blob"
.LC28:
	.string	"null"
	.section	.data.rel.local,"aw"
	.align 32
	.type	azType.3, @object
	.size	azType.3, 40
azType.3:
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.section	.rodata
	.align 4
	.type	lenOne.2, @object
	.size	lenOne.2, 4
lenOne.2:
	.long	1
.LC29:
	.string	" "
	.section	.data.rel.ro.local,"aw"
	.align 8
	.type	azOne.1, @object
	.size	azOne.1, 8
azOne.1:
	.quad	.LC29
	.section	.rodata
.LC30:
	.string	"implies_nonnull_row"
.LC31:
	.string	"expr_compare"
.LC32:
	.string	"expr_implies_expr"
.LC33:
	.string	"affinity"
.LC34:
	.string	"load_extension"
.LC35:
	.string	"sqlite_compileoption_used"
.LC36:
	.string	"sqlite_compileoption_get"
.LC37:
	.string	"unlikely"
.LC38:
	.string	"likelihood"
.LC39:
	.string	"likely"
.LC40:
	.string	"ltrim"
.LC41:
	.string	"rtrim"
.LC42:
	.string	"trim"
.LC43:
	.string	"min"
.LC44:
	.string	"max"
.LC45:
	.string	"typeof"
.LC46:
	.string	"subtype"
.LC47:
	.string	"length"
.LC48:
	.string	"octet_length"
.LC49:
	.string	"instr"
.LC50:
	.string	"printf"
.LC51:
	.string	"format"
.LC52:
	.string	"unicode"
.LC53:
	.string	"char"
.LC54:
	.string	"abs"
.LC55:
	.string	"round"
.LC56:
	.string	"upper"
.LC57:
	.string	"lower"
.LC58:
	.string	"hex"
.LC59:
	.string	"unhex"
.LC60:
	.string	"concat"
.LC61:
	.string	"concat_ws"
.LC62:
	.string	"ifnull"
.LC63:
	.string	"random"
.LC64:
	.string	"randomblob"
.LC65:
	.string	"nullif"
.LC66:
	.string	"sqlite_version"
.LC67:
	.string	"sqlite_source_id"
.LC68:
	.string	"sqlite_log"
.LC69:
	.string	"quote"
.LC70:
	.string	"last_insert_rowid"
.LC71:
	.string	"changes"
.LC72:
	.string	"total_changes"
.LC73:
	.string	"replace"
.LC74:
	.string	"zeroblob"
.LC75:
	.string	"substr"
.LC76:
	.string	"substring"
.LC77:
	.string	"sum"
.LC78:
	.string	"total"
.LC79:
	.string	"avg"
.LC80:
	.string	"count"
.LC81:
	.string	"group_concat"
.LC82:
	.string	"glob"
.LC83:
	.string	"coalesce"
.LC84:
	.string	"ceil"
.LC85:
	.string	"ceiling"
.LC86:
	.string	"floor"
.LC87:
	.string	"trunc"
.LC88:
	.string	"ln"
.LC89:
	.string	"log"
.LC90:
	.string	"log10"
.LC91:
	.string	"log2"
.LC92:
	.string	"exp"
.LC93:
	.string	"pow"
.LC94:
	.string	"power"
.LC95:
	.string	"mod"
.LC96:
	.string	"acos"
.LC97:
	.string	"asin"
.LC98:
	.string	"atan"
.LC99:
	.string	"atan2"
.LC100:
	.string	"cos"
.LC101:
	.string	"sin"
.LC102:
	.string	"tan"
.LC103:
	.string	"cosh"
.LC104:
	.string	"sinh"
.LC105:
	.string	"tanh"
.LC106:
	.string	"acosh"
.LC107:
	.string	"asinh"
.LC108:
	.string	"atanh"
.LC109:
	.string	"sqrt"
.LC110:
	.string	"radians"
.LC111:
	.string	"degrees"
.LC112:
	.string	"pi"
.LC113:
	.string	"sign"
.LC114:
	.string	"iif"
	.section	.data.rel,"aw"
	.align 32
	.type	aBuiltinFunc.0, @object
	.size	aBuiltinFunc.0, 7704
aBuiltinFunc.0:
	.byte	2
	.zero	3
	.long	12863489
	.quad	1
	.quad	0
	.quad	versionFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC30
	.quad	0
	.byte	2
	.zero	3
	.long	12863489
	.quad	3
	.quad	0
	.quad	versionFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC31
	.quad	0
	.byte	2
	.zero	3
	.long	12863489
	.quad	2
	.quad	0
	.quad	versionFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC32
	.quad	0
	.byte	1
	.zero	3
	.long	12863489
	.quad	4
	.quad	0
	.quad	versionFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC33
	.quad	0
	.byte	1
	.zero	3
	.long	11010049
	.quad	0
	.quad	0
	.quad	loadExt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC34
	.quad	0
	.byte	2
	.zero	3
	.long	11010049
	.quad	0
	.quad	0
	.quad	loadExt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC34
	.quad	0
	.byte	1
	.zero	3
	.long	8396801
	.quad	0
	.quad	0
	.quad	compileoptionusedFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC35
	.quad	0
	.byte	1
	.zero	3
	.long	8396801
	.quad	0
	.quad	0
	.quad	compileoptiongetFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC36
	.quad	0
	.byte	1
	.zero	3
	.long	12585985
	.quad	99
	.quad	0
	.quad	versionFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC37
	.quad	0
	.byte	2
	.zero	3
	.long	12585985
	.quad	99
	.quad	0
	.quad	versionFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC38
	.quad	0
	.byte	1
	.zero	3
	.long	12585985
	.quad	99
	.quad	0
	.quad	versionFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC39
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	1
	.quad	0
	.quad	trimFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC40
	.quad	0
	.byte	2
	.zero	3
	.long	8390657
	.quad	1
	.quad	0
	.quad	trimFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC40
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	2
	.quad	0
	.quad	trimFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC41
	.quad	0
	.byte	2
	.zero	3
	.long	8390657
	.quad	2
	.quad	0
	.quad	trimFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC41
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	3
	.quad	0
	.quad	trimFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC42
	.quad	0
	.byte	2
	.zero	3
	.long	8390657
	.quad	3
	.quad	0
	.quad	trimFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC42
	.quad	0
	.byte	-1
	.zero	3
	.long	8390689
	.quad	0
	.quad	0
	.quad	minmaxFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC43
	.quad	0
	.byte	0
	.zero	3
	.long	8390689
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC43
	.quad	0
	.byte	1
	.zero	3
	.long	142610465
	.quad	0
	.quad	0
	.quad	minmaxStep
	.quad	minMaxFinalize
	.quad	minMaxValue
	.quad	0
	.quad	.LC43
	.quad	0
	.byte	-1
	.zero	3
	.long	8390689
	.quad	1
	.quad	0
	.quad	minmaxFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC44
	.quad	0
	.byte	0
	.zero	3
	.long	8390689
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC44
	.quad	0
	.byte	1
	.zero	3
	.long	142610465
	.quad	1
	.quad	0
	.quad	minmaxStep
	.quad	minMaxFinalize
	.quad	minMaxValue
	.quad	0
	.quad	.LC44
	.quad	0
	.byte	1
	.zero	3
	.long	8390785
	.quad	0
	.quad	0
	.quad	typeofFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC45
	.quad	0
	.byte	1
	.zero	3
	.long	8390785
	.quad	0
	.quad	0
	.quad	subtypeFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC46
	.quad	0
	.byte	1
	.zero	3
	.long	8390721
	.quad	0
	.quad	0
	.quad	lengthFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC47
	.quad	0
	.byte	1
	.zero	3
	.long	8390849
	.quad	0
	.quad	0
	.quad	bytelengthFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC48
	.quad	0
	.byte	2
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	instrFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC49
	.quad	0
	.byte	-1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	printfFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC50
	.quad	0
	.byte	-1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	printfFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC51
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	unicodeFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC52
	.quad	0
	.byte	-1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	charFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC53
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	absFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC54
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	roundFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC55
	.quad	0
	.byte	2
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	roundFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC55
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	upperFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC56
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	lowerFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC57
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	hexFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC58
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	unhexFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC59
	.quad	0
	.byte	2
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	unhexFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC59
	.quad	0
	.byte	-1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	concatFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC60
	.quad	0
	.byte	0
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC60
	.quad	0
	.byte	-1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	concatwsFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC61
	.quad	0
	.byte	0
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC61
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC61
	.quad	0
	.byte	2
	.zero	3
	.long	12584961
	.quad	0
	.quad	0
	.quad	versionFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC62
	.quad	0
	.byte	0
	.zero	3
	.long	8388609
	.quad	0
	.quad	0
	.quad	randomFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC63
	.quad	0
	.byte	1
	.zero	3
	.long	8388609
	.quad	0
	.quad	0
	.quad	randomBlob
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC64
	.quad	0
	.byte	2
	.zero	3
	.long	8390689
	.quad	0
	.quad	0
	.quad	nullifFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC65
	.quad	0
	.byte	0
	.zero	3
	.long	8396801
	.quad	0
	.quad	0
	.quad	versionFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC66
	.quad	0
	.byte	0
	.zero	3
	.long	8396801
	.quad	0
	.quad	0
	.quad	sourceidFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC67
	.quad	0
	.byte	2
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	errlogFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC68
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	quoteFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC69
	.quad	0
	.byte	0
	.zero	3
	.long	8388609
	.quad	0
	.quad	0
	.quad	last_insert_rowid
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC70
	.quad	0
	.byte	0
	.zero	3
	.long	8388609
	.quad	0
	.quad	0
	.quad	changes
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC71
	.quad	0
	.byte	0
	.zero	3
	.long	8388609
	.quad	0
	.quad	0
	.quad	total_changes
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC72
	.quad	0
	.byte	3
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	replaceFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC73
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	zeroblobFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC74
	.quad	0
	.byte	2
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	substrFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC75
	.quad	0
	.byte	3
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	substrFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC75
	.quad	0
	.byte	2
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	substrFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC76
	.quad	0
	.byte	3
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	substrFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC76
	.quad	0
	.byte	1
	.zero	3
	.long	8388609
	.quad	0
	.quad	0
	.quad	sumStep
	.quad	sumFinalize
	.quad	sumFinalize
	.quad	sumInverse
	.quad	.LC77
	.quad	0
	.byte	1
	.zero	3
	.long	8388609
	.quad	0
	.quad	0
	.quad	sumStep
	.quad	totalFinalize
	.quad	totalFinalize
	.quad	sumInverse
	.quad	.LC78
	.quad	0
	.byte	1
	.zero	3
	.long	8388609
	.quad	0
	.quad	0
	.quad	sumStep
	.quad	avgFinalize
	.quad	avgFinalize
	.quad	sumInverse
	.quad	.LC79
	.quad	0
	.byte	0
	.zero	3
	.long	142606593
	.quad	0
	.quad	0
	.quad	countStep
	.quad	countFinalize
	.quad	countFinalize
	.quad	countInverse
	.quad	.LC80
	.quad	0
	.byte	1
	.zero	3
	.long	142606337
	.quad	0
	.quad	0
	.quad	countStep
	.quad	countFinalize
	.quad	countFinalize
	.quad	countInverse
	.quad	.LC80
	.quad	0
	.byte	1
	.zero	3
	.long	8388609
	.quad	0
	.quad	0
	.quad	groupConcatStep
	.quad	groupConcatFinalize
	.quad	groupConcatValue
	.quad	groupConcatInverse
	.quad	.LC81
	.quad	0
	.byte	2
	.zero	3
	.long	8388609
	.quad	0
	.quad	0
	.quad	groupConcatStep
	.quad	groupConcatFinalize
	.quad	groupConcatValue
	.quad	groupConcatInverse
	.quad	.LC81
	.quad	0
	.byte	2
	.zero	3
	.long	8390669
	.quad	globInfo
	.quad	0
	.quad	likeFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC82
	.quad	0
	.byte	2
	.zero	3
	.long	8390661
	.quad	likeInfoNorm
	.quad	0
	.quad	likeFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC20
	.quad	0
	.byte	3
	.zero	3
	.long	8390661
	.quad	likeInfoNorm
	.quad	0
	.quad	likeFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC20
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC83
	.quad	0
	.byte	0
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC83
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	xCeil
	.quad	0
	.quad	ceilingFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC84
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	xCeil
	.quad	0
	.quad	ceilingFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC85
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	xFloor
	.quad	0
	.quad	ceilingFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC86
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	trunc
	.quad	0
	.quad	ceilingFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC87
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	logFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC88
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	1
	.quad	0
	.quad	logFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC89
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	1
	.quad	0
	.quad	logFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC90
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	2
	.quad	0
	.quad	logFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC91
	.quad	0
	.byte	2
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	logFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC89
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	exp
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC92
	.quad	0
	.byte	2
	.zero	3
	.long	8390657
	.quad	pow
	.quad	0
	.quad	math2Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC93
	.quad	0
	.byte	2
	.zero	3
	.long	8390657
	.quad	pow
	.quad	0
	.quad	math2Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC94
	.quad	0
	.byte	2
	.zero	3
	.long	8390657
	.quad	fmod
	.quad	0
	.quad	math2Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC95
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	acos
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC96
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	asin
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC97
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	atan
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC98
	.quad	0
	.byte	2
	.zero	3
	.long	8390657
	.quad	atan2
	.quad	0
	.quad	math2Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC99
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	cos
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC100
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	sin
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC101
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	tan
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC102
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	cosh
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC103
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	sinh
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC104
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	tanh
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC105
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	acosh
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC106
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	asinh
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC107
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	atanh
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC108
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	sqrt
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC109
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	degToRad
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC110
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	radToDeg
	.quad	0
	.quad	math1Func
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC111
	.quad	0
	.byte	0
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	piFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC112
	.quad	0
	.byte	1
	.zero	3
	.long	8390657
	.quad	0
	.quad	0
	.quad	signFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC113
	.quad	0
	.byte	-1
	.zero	3
	.long	12584961
	.quad	0
	.quad	0
	.quad	versionFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC83
	.quad	0
	.byte	3
	.zero	3
	.long	12584961
	.quad	5
	.quad	0
	.quad	versionFunc
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC114
	.quad	0
	.section	.rodata
	.align 16
.LC2:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC3:
	.long	0
	.long	-1020264448
	.align 8
.LC4:
	.long	0
	.long	1127219200
	.align 8
.LC5:
	.long	0
	.long	-1075838976
	.align 8
.LC6:
	.long	0
	.long	1071644672
	.align 16
.LC18:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC21:
	.long	-1571644103
	.long	1066524486
	.align 8
.LC22:
	.long	442745336
	.long	1078765020
	.align 8
.LC23:
	.long	1413754136
	.long	1074340347
	.ident	"GCC: (Debian 13.2.0-6) 13.2.0"
	.section	.note.GNU-stack,"",@progbits