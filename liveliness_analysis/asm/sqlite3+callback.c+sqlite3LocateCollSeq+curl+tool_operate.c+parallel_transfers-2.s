	.file	"callback.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_723286491
	.data
	.align 4
	.type	__merger_cond_true_723286491, @object
	.size	__merger_cond_true_723286491, 4
__merger_cond_true_723286491:
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
	sub	rsp, 336
	mov	QWORD PTR -328[rbp], rdi
mov rdi, rax
mov byte ptr [rbp - 0x21], 1
mov dword ptr [rbp - 8], eax
	mov	QWORD PTR -336[rbp], rsi
	mov	DWORD PTR -20[rbp], -2
call 0x100
test al, al
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
mov rax, qword ptr [rbp - 0x98]
	jne	.L31
call 0x100
mov rax, qword ptr [rbp - 0x98]
call 0x100
	mov	DWORD PTR -316[rbp], 3
	mov	eax, 12
movzx eax, byte ptr [rax + 0x30]
mov rdi, rax
cmp dword ptr [rbp - 4], 0
	jmp	.L32
call 0x100
mov rax, qword ptr [rbp - 0x98]
mov rdi, rax
.L31:
	mov	DWORD PTR -24[rbp], -2
mov rax, qword ptr [rax + 0x1d8]
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
	jne	.L33
mov rax, qword ptr [rbp - 0x90]
	mov	DWORD PTR -312[rbp], 3
mov rax, qword ptr [rbp - 0x98]
	mov	eax, 12
	jmp	.L32
.L33:
	mov	rax, QWORD PTR -328[rbp]
	mov	rax, QWORD PTR [rax]
mov rax, qword ptr [rbp - 0x90]
cmp dword ptr [rbp - 8], 0
	mov	QWORD PTR -32[rbp], rax
mov rdi, rax
	mov	rax, QWORD PTR -32[rbp]
mov rdi, rax
mov edi, 0
	movzx	eax, BYTE PTR 100[rax]
cmp qword ptr [rbp - 0x38], 0
mov edi, 0
	mov	BYTE PTR -33[rbp], al
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, BYTE PTR 197[rax]
mov rax, qword ptr [rbp - 0x30]
	mov	BYTE PTR -34[rbp], al
test al, al
	movzx	ecx, BYTE PTR -34[rbp]
	movzx	esi, BYTE PTR -33[rbp]
	mov	rdx, QWORD PTR -336[rbp]
	mov	rax, QWORD PTR -32[rbp]
mov edi, eax
	mov	rdi, rax
	call	sqlite3FindCollSeq
test al, al
	mov	QWORD PTR -8[rbp], rax
	cmp	BYTE PTR -34[rbp], 0
	jne	.L34
	cmp	QWORD PTR -8[rbp], 0
	je	.L35
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L34
mov rax, qword ptr [rbp - 0x38]
test al, al
.L35:
	mov	eax, 1
	jmp	.L36
mov dword ptr [rbp - 0x44], eax
lea rcx, [rbp - 0x71]
.L34:
	mov	eax, 0
.L36:
	cdqe
	mov	QWORD PTR -48[rbp], rax
	mov	DWORD PTR -12[rbp], 1
mov rax, qword ptr [rbp - 0x98]
mov rdi, rax
	jmp	.L37
mov rax, qword ptr [rbp - 0x30]
mov rax, qword ptr [rbp - 0x98]
.L64:
	mov	DWORD PTR -52[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
	je	.L38
mov rax, qword ptr [rbp - 0x90]
call 0x100
	mov	DWORD PTR -56[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
	jne	.L39
	mov	DWORD PTR -80[rbp], 3
	jmp	.L40
.L39:
	mov	DWORD PTR -60[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
call 0x100
cmp byte ptr [rbp - 9], 0
	test	eax, eax
mov rax, rcx
	je	.L41
	mov	DWORD PTR -16[rbp], 0
	jmp	.L42
.L44:
	mov	DWORD PTR -68[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
mov eax, dword ptr [rbp - 8]
	je	.L43
	mov	DWORD PTR -12[rbp], 0
call 0x100
mov rdi, rax
	movzx	esi, BYTE PTR -33[rbp]
mov rax, qword ptr [rbp - 0x90]
	mov	rcx, QWORD PTR -336[rbp]
	mov	rdx, QWORD PTR -8[rbp]
mov r8, rdi
	mov	rax, QWORD PTR -328[rbp]
	mov	rdi, rax
	call	sqlite3GetCollSeq
	mov	QWORD PTR -8[rbp], rax
mov dword ptr [rbp - 8], eax
mov qword ptr [rbp - 0x18], rax
.L43:
mov rdi, rax
	mov	DWORD PTR -72[rbp], 3
.L42:
mov eax, dword ptr [rbp - 0x58]
	mov	eax, DWORD PTR -16[rbp]
call 0x100
mov rax, qword ptr [rbp - 0x90]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	test	eax, eax
	je	.L44
	mov	DWORD PTR -64[rbp], 3
.L41:
	mov	DWORD PTR -76[rbp], 3
.L38:
	mov	DWORD PTR -84[rbp], 3
	mov	DWORD PTR -88[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
	jne	.L45
	mov	DWORD PTR -92[rbp], 3
mov rdi, rax
mov rax, qword ptr [rbp - 0x30]
test al, al
test al, al
.L45:
	mov	DWORD PTR -96[rbp], 3
	mov	DWORD PTR -100[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
	jne	.L46
	mov	DWORD PTR -104[rbp], 3
mov rsi, qword ptr [rbp - 0x30]
	mov	DWORD PTR -108[rbp], -2
	jmp	.L47
mov rdi, rax
.L54:
	mov	DWORD PTR -224[rbp], 3
call 0x100
call 0x100
	mov	DWORD PTR -228[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
	jne	.L48
	mov	DWORD PTR -232[rbp], 3
	mov	DWORD PTR -236[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
call 0x100
	jne	.L49
	mov	DWORD PTR -240[rbp], 3
.L49:
mov rax, qword ptr [rbp - 0x30]
	mov	DWORD PTR -244[rbp], 3
	mov	DWORD PTR -248[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
mov dword ptr [rbp - 4], eax
	test	eax, eax
	jne	.L50
	mov	DWORD PTR -252[rbp], 3
.L50:
mov byte ptr [rbp - 9], 1
	mov	DWORD PTR -256[rbp], 3
	mov	DWORD PTR -260[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
	jne	.L51
	mov	DWORD PTR -264[rbp], 3
	mov	DWORD PTR -268[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
	jne	.L52
	mov	DWORD PTR -272[rbp], 3
call 0x100
mov r8, rdi
.L52:
mov rsi, rcx
mov edx, 0
	mov	DWORD PTR -276[rbp], 3
	mov	DWORD PTR -280[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
	jne	.L53
	mov	DWORD PTR -284[rbp], 3
mov rax, qword ptr [rbp - 0x90]
.L53:
cmp dword ptr [rbp - 8], 0
call 0x100
	mov	DWORD PTR -288[rbp], 3
.L51:
xor eax, 1
mov rdx, qword ptr [rbp - 0xa0]
	mov	DWORD PTR -292[rbp], 3
mov eax, dword ptr [rbp - 8]
.L48:
	mov	DWORD PTR -296[rbp], 3
mov rsi, rdx
.L47:
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
	je	.L54
nop
	mov	DWORD PTR -112[rbp], 3
	mov	DWORD PTR -116[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
test al, al
	test	eax, eax
call 0x100
test al, al
	jne	.L55
	mov	DWORD PTR -120[rbp], 3
	mov	DWORD PTR -124[rbp], -2
mov rdi, rax
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
call 0x100
	jne	.L56
	mov	DWORD PTR -144[rbp], 3
cmp dword ptr [rbp - 4], 0
lea rcx, [rbp - 0x70]
	jmp	.L37
call 0x100
.L56:
	mov	DWORD PTR -128[rbp], 3
lea rdi, [rbp - 0x72]
	mov	DWORD PTR -132[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
mov rdi, rax
	jne	.L57
	mov	DWORD PTR -140[rbp], 3
	jmp	.L40
.L57:
	mov	DWORD PTR -136[rbp], 3
.L55:
	mov	DWORD PTR -148[rbp], 3
	mov	DWORD PTR -152[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
	jne	.L58
	mov	DWORD PTR -156[rbp], 3
	mov	DWORD PTR -160[rbp], -2
cmp dword ptr [rbp - 4], 0
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
movzx eax, byte ptr [rax + 0x190]
mov rdi, rax
	jne	.L59
mov rax, qword ptr [rbp - 0x90]
	mov	DWORD PTR -164[rbp], 3
.L59:
	mov	DWORD PTR -168[rbp], 3
test rax, rax
.L58:
cmp dword ptr [rbp - 8], 0
	mov	DWORD PTR -172[rbp], 3
	mov	DWORD PTR -176[rbp], -2
test al, al
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
	jne	.L60
xor eax, 1
mov eax,0x100
	mov	DWORD PTR -180[rbp], 3
	mov	DWORD PTR -184[rbp], -2
test al, al
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
call 0x100
test al, al
	test	eax, eax
	jne	.L61
mov dword ptr [rbp - 0x58], 1
	mov	DWORD PTR -188[rbp], 3
call 0x100
.L61:
	mov	DWORD PTR -192[rbp], 3
mov dword ptr [rbp - 8], eax
	mov	DWORD PTR -196[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
mov edx, 0
	test	eax, eax
	jne	.L62
	mov	DWORD PTR -200[rbp], 3
.L62:
	mov	DWORD PTR -204[rbp], 3
.L60:
	mov	DWORD PTR -208[rbp], 3
mov rsi, rdx
	mov	DWORD PTR -212[rbp], -2
mov eax, 0
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
	jne	.L63
	mov	DWORD PTR -216[rbp], 3
.L63:
	mov	DWORD PTR -220[rbp], 3
.L46:
	mov	DWORD PTR -300[rbp], 3
call 0x100
.L37:
	cmp	QWORD PTR -48[rbp], 0
	je	.L40
call 0x100
mov eax, dword ptr [rbp - 0x58]
	cmp	DWORD PTR -12[rbp], 0
	jne	.L64
mov qword ptr [rbp - 0x20], rax
mov rax, qword ptr [rbp - 0x30]
.L40:
	mov	DWORD PTR -304[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_723286491[rip]
	test	eax, eax
mov eax, dword ptr [rbp - 8]
	jne	.L65
	mov	DWORD PTR -308[rbp], 3
.L65:
	mov	rax, QWORD PTR -8[rbp]
.L32:
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
	je	.L67
	cmp	DWORD PTR -28[rbp], -2
	jne	.L68
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L69
	mov	eax, 0
	jmp	.L71
.L69:
	mov	eax, 6
	jmp	.L71
.L68:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	js	.L67
	mov	eax, 0
	jmp	.L71
.L67:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cmp	DWORD PTR -28[rbp], eax
	jne	.L72
	mov	DWORD PTR -4[rbp], 4
	jmp	.L73
.L72:
	mov	DWORD PTR -4[rbp], 1
.L73:
	movzx	edx, BYTE PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	and	eax, 3
	cmp	edx, eax
	jne	.L74
	add	DWORD PTR -4[rbp], 2
	jmp	.L75
.L74:
	movzx	edx, BYTE PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	and	eax, edx
	and	eax, 2
	test	eax, eax
	je	.L75
	add	DWORD PTR -4[rbp], 1
.L75:
	mov	eax, DWORD PTR -4[rbp]
.L71:
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
	jmp	.L77
.L80:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 56[rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3StrICmp@PLT
	test	eax, eax
	jne	.L78
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L79
.L78:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 64[rax]
	mov	QWORD PTR -8[rbp], rax
.L77:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L80
	mov	eax, 0
.L79:
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
	jmp	.L82
.L85:
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
	je	.L83
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
	jmp	.L84
.L83:
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
.L84:
	add	DWORD PTR -4[rbp], 1
.L82:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L85
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
	jmp	.L87
.L89:
	movzx	edx, BYTE PTR -88[rbp]
	mov	ecx, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	matchQuality
	mov	DWORD PTR -60[rbp], eax
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L88
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -60[rbp]
	mov	DWORD PTR -20[rbp], eax
.L88:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
.L87:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L89
	cmp	BYTE PTR -92[rbp], 0
	jne	.L90
	cmp	QWORD PTR -16[rbp], 0
	je	.L91
	mov	rax, QWORD PTR -72[rbp]
	mov	eax, DWORD PTR 44[rax]
	and	eax, 2
	test	eax, eax
	je	.L90
.L91:
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
	jmp	.L92
.L94:
	movzx	edx, BYTE PTR -88[rbp]
	mov	ecx, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	matchQuality
	mov	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L93
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR -20[rbp], eax
.L93:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
.L92:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L94
.L90:
	cmp	BYTE PTR -92[rbp], 0
	je	.L95
	cmp	DWORD PTR -20[rbp], 5
	jg	.L95
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 73[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbMallocZero@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L95
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
	jmp	.L96
.L97:
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cdqe
	lea	rdx, sqlite3UpperToLower[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	rax, QWORD PTR -32[rbp]
	mov	BYTE PTR [rax], dl
	add	QWORD PTR -32[rbp], 1
.L96:
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L97
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
	jne	.L98
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbFree@PLT
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	sqlite3OomFault@PLT
	mov	eax, 0
	jmp	.L99
.L98:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
.L95:
	cmp	QWORD PTR -16[rbp], 0
	je	.L100
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L101
	cmp	BYTE PTR -92[rbp], 0
	je	.L100
.L101:
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L99
.L100:
	mov	eax, 0
.L99:
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
	jmp	.L103
.L104:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	lea	rax, -864[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DeleteTrigger@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
.L103:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L104
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	sqlite3HashClear@PLT
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 8
	mov	rdi, rax
	call	sqlite3HashInit@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L105
.L106:
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
.L105:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L106
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
	je	.L107
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR 4[rax], edx
.L107:
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
	je	.L109
	mov	rax, QWORD PTR -32[rbp]
	lea	rdx, sqlite3SchemaClear[rip]
	mov	esi, 120
	mov	rdi, rax
	call	sqlite3BtreeSchema@PLT
	mov	QWORD PTR -8[rbp], rax
	jmp	.L110
.L109:
	mov	esi, 120
	mov	edi, 0
	call	sqlite3DbMallocZero@PLT
	mov	QWORD PTR -8[rbp], rax
.L110:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L111
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3OomFault@PLT
	jmp	.L112
.L111:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 112[rax]
	test	al, al
	jne	.L112
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
.L112:
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
