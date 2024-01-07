	.file	"hash.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_267822970
	.data
	.align 4
	.type	__merger_cond_true_267822970, @object
	.size	__merger_cond_true_267822970, 4
__merger_cond_true_267822970:
	.long	1
	.text
	.globl	sqlite3HashInit
	.type	sqlite3HashInit, @function
sqlite3HashInit:
.LFB6:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 4[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], 0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	sqlite3HashInit, .-sqlite3HashInit
	.globl	sqlite3HashClear
	.type	sqlite3HashClear, @function
sqlite3HashClear:
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
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdi, rax
	call	sqlite3_free@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], 0
	jmp	.L3
.L4:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3_free@PLT
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -8[rbp], rax
.L3:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L4
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR 4[rax], 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	sqlite3HashClear, .-sqlite3HashClear
	.type	strHash, @function
strHash:
.LFB8:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
.L7:
	movzx	eax, BYTE PTR -5[rbp]
	cdqe
	lea	rdx, sqlite3UpperToLower[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, eax, -1640531535
	mov	DWORD PTR -4[rbp], eax
.L6:
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -5[rbp], al
	cmp	BYTE PTR -5[rbp], 0
	jne	.L7
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	strHash, .-strHash
	.type	insertElement, @function
insertElement:
.LFB9:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
mov rax, qword ptr [rbp - 8]
	sub	rsp, 48
	mov	QWORD PTR -152[rbp], rdi
	mov	QWORD PTR -160[rbp], rsi
	mov	QWORD PTR -168[rbp], rdx
test rax, rax
	mov	rax, QWORD PTR -160[rbp]
	mov	QWORD PTR -32[rbp], rax
call 0x100
	cmp	QWORD PTR -32[rbp], 0
	je	.L10
	mov	rax, QWORD PTR -160[rbp]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L11
mov qword ptr [rbp - 8], rax
	mov	rax, QWORD PTR -160[rbp]
	mov	rax, QWORD PTR 8[rax]
	jmp	.L12
.L11:
	mov	eax, 0
mov rsi, rcx
.L12:
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -160[rbp]
	mov	eax, DWORD PTR [rax]
cmp qword ptr [rbp - 0x28], 0
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -160[rbp]
	mov	DWORD PTR [rax], edx
test rax, rax
mov rdx, qword ptr [rax]
	mov	rax, QWORD PTR -160[rbp]
	mov	rdx, QWORD PTR -168[rbp]
	mov	QWORD PTR 8[rax], rdx
mov rdx, qword ptr [rax]
.L10:
	cmp	QWORD PTR -32[rbp], 0
mov rdi, rax
	jne	.L13
	mov	QWORD PTR -8[rbp], 0
.L13:
call 0x100
	mov	DWORD PTR -36[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_267822970[rip]
	test	eax, eax
cmp qword ptr [rbp - 8], 0
mov eax, 0
mov rsi, rdx
	jne	.L14
	mov	DWORD PTR -40[rbp], 3
.L14:
	mov	DWORD PTR -44[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_267822970[rip]
add dword ptr [rbp - 0x18], 1
mov rsi, rcx
	test	eax, eax
mov rdi, rax
mov qword ptr [rbp - 8], rax
	je	.L15
	mov	DWORD PTR -48[rbp], -2
	jmp	.L16
.L17:
mov eax, 0
mov rdx, qword ptr [rax]
	mov	DWORD PTR -140[rbp], 3
mov rdx, qword ptr [rbp - 0x28]
call 0x100
.L16:
call 0x100
mov eax, 0
mov rax, qword ptr [rbp - 0x20]
	mov	eax, DWORD PTR __merger_cond_true_267822970[rip]
	test	eax, eax
	je	.L17
	mov	DWORD PTR -52[rbp], -2
mov rax, qword ptr [rbp - 0x10]
mov rax, qword ptr [rbp - 0x10]
mov rdi, rax
mov eax, 0
	mov	eax, DWORD PTR __merger_cond_true_267822970[rip]
call 0x100
mov rax, qword ptr [rbp - 0x38]
mov eax, 0
test rax, rax
mov rax, qword ptr [rax]
	test	eax, eax
	jne	.L18
	mov	DWORD PTR -56[rbp], 3
	mov	DWORD PTR -60[rbp], -2
	jmp	.L19
.L20:
	mov	DWORD PTR -68[rbp], 3
.L19:
	mov	eax, DWORD PTR __merger_cond_true_267822970[rip]
	test	eax, eax
mov rax, qword ptr [rbp - 0x10]
mov eax, 0
	je	.L20
mov rax, qword ptr [rdx + rax]
call 0x100
	mov	DWORD PTR -64[rbp], 3
.L18:
	mov	DWORD PTR -72[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_267822970[rip]
	test	eax, eax
	jne	.L21
	mov	DWORD PTR -76[rbp], 3
	mov	DWORD PTR -80[rbp], -2
cmp qword ptr [rbp - 8], 0
call 0x100
mov eax, dword ptr [rbp - 0x18]
	jmp	.L22
.L23:
call 0x100
	mov	DWORD PTR -88[rbp], 3
.L22:
	mov	eax, DWORD PTR __merger_cond_true_267822970[rip]
	test	eax, eax
mov rsi, rdx
mov rdi, rax
	je	.L23
	mov	DWORD PTR -84[rbp], 3
.L21:
mov rsi, rdx
mov qword ptr [rbp - 0x28], rax
mov rax, qword ptr [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -96[rbp], rax
	cmp	QWORD PTR -96[rbp], 0
	je	.L24
	mov	DWORD PTR -12[rbp], 0
mov rax, qword ptr [rbp - 0x10]
call 0x100
mov rax, qword ptr [rbp - 0x10]
	jmp	.L25
.L28:
	mov	rax, QWORD PTR -168[rbp]
mov rax, qword ptr [rbp - 8]
mov rsi, rcx
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
mov rdi, rax
	mov	rax, QWORD PTR -168[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
mov rdi, rax
	mov	rax, QWORD PTR 8[rax]
mov qword ptr [rbp - 8], rax
	mov	QWORD PTR -112[rbp], rax
	cmp	QWORD PTR -112[rbp], 0
	je	.L26
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -168[rbp]
	mov	QWORD PTR [rax], rdx
.L26:
	cmp	QWORD PTR -112[rbp], 0
	jne	.L27
	mov	rax, QWORD PTR -152[rbp]
mov rax, qword ptr [rbp - 0x10]
	mov	rdx, QWORD PTR -168[rbp]
	mov	QWORD PTR 8[rax], rdx
mov rsi, rcx
.L27:
	mov	rax, QWORD PTR -8[rbp]
mov rdi, rax
	mov	rdx, QWORD PTR -168[rbp]
	mov	QWORD PTR 8[rax], rdx
lea rdx, [rax*8]
.L25:
	mov	eax, DWORD PTR -12[rbp]
call 0x100
mov qword ptr [rbp - 8], rax
call 0x100
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
mov rdi, rax
	test	eax, eax
mov eax, 0
	je	.L28
	mov	DWORD PTR -100[rbp], 3
.L24:
	cmp	QWORD PTR -96[rbp], 0
	jne	.L29
	mov	rax, QWORD PTR -152[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -168[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -152[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -120[rbp], rax
	mov	DWORD PTR -16[rbp], 1
mov rdi, rax
mov eax, 0
call 0x100
	jmp	.L30
.L32:
	mov	DWORD PTR -16[rbp], 0
mov qword ptr [rbp - 8], rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rax, QWORD PTR 8[rax]
mov rdi, rax
	mov	rdx, QWORD PTR -168[rbp]
mov rax, qword ptr [rax]
cdqe
	mov	QWORD PTR 8[rax], rdx
.L30:
cmp qword ptr [rbp - 8], 0
	cmp	QWORD PTR -120[rbp], 0
mov rax, qword ptr [rbp - 8]
mov rax, qword ptr [rbp - 0x10]
	je	.L31
	cmp	DWORD PTR -16[rbp], 0
	jne	.L32
.L31:
	mov	rax, QWORD PTR -168[rbp]
mov rsi, rcx
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -152[rbp]
	mov	rdx, QWORD PTR -168[rbp]
	mov	QWORD PTR 8[rax], rdx
.L29:
	mov	DWORD PTR -20[rbp], 0
	nop
.L33:
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
mov eax, 0
	mov	DWORD PTR -20[rbp], edx
mov rax, qword ptr [rax]
	test	eax, eax
	je	.L33
	mov	DWORD PTR -124[rbp], 3
mov qword ptr [rbp - 0x10], rax
	mov	DWORD PTR -128[rbp], -2
call 0x100
	mov	eax, DWORD PTR __merger_cond_true_267822970[rip]
mov rsi, rcx
	test	eax, eax
	jne	.L34
	mov	DWORD PTR -132[rbp], 3
mov rdi, rax
.L34:
mov rax, qword ptr [rbp - 0x10]
mov rax, qword ptr [rbp - 8]
mov dword ptr [rbp - 0x18], 0
	mov	DWORD PTR -136[rbp], 3
mov rsi, rdx
mov rdi, rax
.L15:
mov qword ptr [rbp - 8], rax
mov rax, qword ptr [rbp - 0x10]
mov qword ptr [rbp - 8], rax
	mov	DWORD PTR -144[rbp], 3
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	insertElement, .-insertElement
	.type	rehash, @function
rehash:
.LFB10:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	eax, DWORD PTR -44[rbp]
	sal	rax, 4
	cmp	rax, 1024
	jbe	.L36
	mov	DWORD PTR -44[rbp], 64
.L36:
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -44[rbp], eax
	jne	.L37
	mov	eax, 0
	jmp	.L38
.L37:
	call	sqlite3BeginBenignMalloc@PLT
	mov	eax, DWORD PTR -44[rbp]
	sal	rax, 4
	mov	rdi, rax
	call	sqlite3Malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	call	sqlite3EndBenignMalloc@PLT
	cmp	QWORD PTR -16[rbp], 0
	jne	.L39
	mov	eax, 0
	jmp	.L38
.L39:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdi, rax
	call	sqlite3_free@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	sqlite3MallocSize@PLT
	cdqe
	shr	rax, 4
	mov	DWORD PTR -44[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -44[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -44[rbp]
	sal	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L40
.L41:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	rdi, rax
	call	strHash
	mov	edx, 0
	div	DWORD PTR -44[rbp]
	mov	DWORD PTR -20[rbp], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -32[rbp], rax
	mov	eax, DWORD PTR -20[rbp]
	sal	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	insertElement
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -8[rbp], rax
.L40:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L41
	mov	eax, 1
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	rehash, .-rehash
	.type	findElementWithHash, @function
findElementWithHash:
.LFB11:
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
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L43
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	strHash
	mov	rdx, QWORD PTR -40[rbp]
	mov	ecx, DWORD PTR [rdx]
	mov	edx, 0
	div	ecx
	mov	DWORD PTR -16[rbp], edx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	edx, DWORD PTR -16[rbp]
	sal	rdx, 4
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L44
.L43:
	mov	DWORD PTR -16[rbp], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR -12[rbp], eax
.L44:
	cmp	QWORD PTR -56[rbp], 0
	je	.L46
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	DWORD PTR [rax], edx
	jmp	.L46
.L49:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3StrICmp@PLT
	test	eax, eax
	jne	.L47
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L48
.L47:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	sub	DWORD PTR -12[rbp], 1
.L46:
	cmp	DWORD PTR -12[rbp], 0
	jne	.L49
	lea	rax, nullElement.0[rip]
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	findElementWithHash, .-findElementWithHash
	.type	removeElementGivenHash, @function
removeElementGivenHash:
.LFB12:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	DWORD PTR -36[rbp], edx
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	je	.L51
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR [rax], rdx
	jmp	.L52
.L51:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
.L52:
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L53
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR 8[rdx]
	mov	QWORD PTR 8[rax], rdx
.L53:
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L54
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	edx, DWORD PTR -36[rbp]
	sal	rdx, 4
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	cmp	QWORD PTR -32[rbp], rax
	jne	.L55
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
.L55:
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
.L54:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	sqlite3_free@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR 4[rax], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	test	eax, eax
	jne	.L57
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3HashClear
.L57:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	removeElementGivenHash, .-removeElementGivenHash
	.globl	sqlite3HashFind
	.type	sqlite3HashFind, @function
sqlite3HashFind:
.LFB13:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	findElementWithHash
	mov	rax, QWORD PTR 16[rax]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	sqlite3HashFind, .-sqlite3HashFind
	.globl	sqlite3HashInsert
	.type	sqlite3HashInsert, @function
sqlite3HashInsert:
.LFB14:
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
	lea	rdx, -28[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	findElementWithHash
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L61
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -56[rbp], 0
	jne	.L62
	mov	edx, DWORD PTR -28[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	removeElementGivenHash
	jmp	.L63
.L62:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 24[rax], rdx
.L63:
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L70
.L61:
	cmp	QWORD PTR -56[rbp], 0
	jne	.L65
	mov	eax, 0
	jmp	.L70
.L65:
	mov	edi, 32
	call	sqlite3Malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L66
	mov	rax, QWORD PTR -56[rbp]
	jmp	.L70
.L66:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	DWORD PTR 4[rax], edx
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 4[rax]
	cmp	eax, 9
	jbe	.L67
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 4[rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR [rdx]
	add	edx, edx
	cmp	edx, eax
	jnb	.L67
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, [rax+rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	rehash
	test	eax, eax
	je	.L67
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	strHash
	mov	rdx, QWORD PTR -40[rbp]
	mov	esi, DWORD PTR [rdx]
	mov	edx, 0
	div	esi
	mov	ecx, edx
	mov	eax, ecx
	mov	DWORD PTR -28[rbp], eax
.L67:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L68
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	edx, DWORD PTR -28[rbp]
	mov	edx, edx
	sal	rdx, 4
	lea	rcx, [rax+rdx]
	jmp	.L69
.L68:
	mov	ecx, 0
.L69:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	insertElement
	mov	eax, 0
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	sqlite3HashInsert, .-sqlite3HashInsert
	.local	nullElement.0
	.comm	nullElement.0,32,32
	.ident	"GCC: (Debian 13.2.0-6) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
