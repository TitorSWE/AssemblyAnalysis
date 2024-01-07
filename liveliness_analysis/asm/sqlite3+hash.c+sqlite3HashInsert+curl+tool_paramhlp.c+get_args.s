	.file	"hash.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_149127693
	.data
	.align 4
	.type	__merger_cond_true_149127693, @object
	.size	__merger_cond_true_149127693, 4
__merger_cond_true_149127693:
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
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	cmp	QWORD PTR -32[rbp], 0
	je	.L10
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L11
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 8[rax]
	jmp	.L12
.L11:
	mov	eax, 0
.L12:
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L13
.L10:
	mov	QWORD PTR -8[rbp], 0
.L13:
	cmp	QWORD PTR -8[rbp], 0
	je	.L14
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	je	.L15
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	jmp	.L16
.L15:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
.L16:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L19
.L14:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	je	.L18
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
.L18:
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
.L19:
	nop
	pop	rbp
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
	jbe	.L21
	mov	DWORD PTR -44[rbp], 64
.L21:
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -44[rbp], eax
	jne	.L22
	mov	eax, 0
	jmp	.L23
.L22:
	call	sqlite3BeginBenignMalloc@PLT
	mov	eax, DWORD PTR -44[rbp]
	sal	rax, 4
	mov	rdi, rax
	call	sqlite3Malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	call	sqlite3EndBenignMalloc@PLT
	cmp	QWORD PTR -16[rbp], 0
	jne	.L24
	mov	eax, 0
	jmp	.L23
.L24:
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
	jmp	.L25
.L26:
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
.L25:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L26
	mov	eax, 1
.L23:
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
	je	.L28
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
	jmp	.L29
.L28:
	mov	DWORD PTR -16[rbp], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR -12[rbp], eax
.L29:
	cmp	QWORD PTR -56[rbp], 0
	je	.L31
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	DWORD PTR [rax], edx
	jmp	.L31
.L34:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3StrICmp@PLT
	test	eax, eax
	jne	.L32
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L33
.L32:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	sub	DWORD PTR -12[rbp], 1
.L31:
	cmp	DWORD PTR -12[rbp], 0
	jne	.L34
	lea	rax, nullElement.0[rip]
.L33:
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
	je	.L36
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR [rax], rdx
	jmp	.L37
.L36:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
.L37:
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L38
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR 8[rdx]
	mov	QWORD PTR 8[rax], rdx
.L38:
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L39
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	edx, DWORD PTR -36[rbp]
	sal	rdx, 4
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	cmp	QWORD PTR -32[rbp], rax
	jne	.L40
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
.L40:
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
.L39:
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
	jne	.L42
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3HashClear
.L42:
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
	sub	rsp, 144
	mov	QWORD PTR -120[rbp], rdi
	mov	QWORD PTR -128[rbp], rsi
	mov	QWORD PTR -136[rbp], rdx
	lea	rdx, -100[rbp]
	mov	rcx, QWORD PTR -128[rbp]
	mov	rax, QWORD PTR -120[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	findElementWithHash
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L46
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -136[rbp], 0
	sete	al
	movzx	eax, al
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	je	.L47
	mov	edx, DWORD PTR -100[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -120[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	removeElementGivenHash
.L47:
	cmp	QWORD PTR -32[rbp], 0
	jne	.L48
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -136[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -128[rbp]
	mov	QWORD PTR 24[rax], rdx
.L48:
	mov	DWORD PTR -36[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_149127693[rip]
	test	eax, eax
	je	.L49
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L60
.L49:
	mov	DWORD PTR -40[rbp], 3
.L46:
	cmp	QWORD PTR -136[rbp], 0
	sete	al
	movzx	eax, al
	mov	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -48[rbp], 0
	je	.L51
	mov	DWORD PTR -52[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_149127693[rip]
	test	eax, eax
	je	.L52
	mov	eax, 0
	jmp	.L60
.L52:
	mov	DWORD PTR -56[rbp], 3
.L51:
	mov	edi, 32
	call	sqlite3Malloc@PLT
	mov	QWORD PTR -64[rbp], rax
	cmp	QWORD PTR -64[rbp], 0
	sete	al
	movzx	eax, al
	mov	QWORD PTR -72[rbp], rax
	cmp	QWORD PTR -72[rbp], 0
	je	.L53
	mov	DWORD PTR -76[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_149127693[rip]
	test	eax, eax
	je	.L54
	mov	rax, QWORD PTR -136[rbp]
	jmp	.L60
.L54:
	mov	DWORD PTR -80[rbp], 3
.L53:
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -128[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -136[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -120[rbp]
	mov	DWORD PTR 4[rax], edx
	mov	rax, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR 4[rax]
	cmp	eax, 9
	jbe	.L55
	mov	rax, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR 4[rax]
	mov	rdx, QWORD PTR -120[rbp]
	mov	edx, DWORD PTR [rdx]
	add	edx, edx
	cmp	edx, eax
	jnb	.L55
	mov	eax, 1
	jmp	.L56
.L55:
	mov	eax, 0
.L56:
	cdqe
	mov	QWORD PTR -88[rbp], rax
	cmp	QWORD PTR -88[rbp], 0
	je	.L57
	mov	rax, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, [rax+rax]
	mov	rax, QWORD PTR -120[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	rehash
	cdqe
	mov	QWORD PTR -96[rbp], rax
	cmp	QWORD PTR -96[rbp], 0
	je	.L57
	mov	rax, QWORD PTR -128[rbp]
	mov	rdi, rax
	call	strHash
	mov	rdx, QWORD PTR -120[rbp]
	mov	esi, DWORD PTR [rdx]
	mov	edx, 0
	div	esi
	mov	ecx, edx
	mov	eax, ecx
	mov	DWORD PTR -100[rbp], eax
.L57:
	mov	rax, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L58
	mov	rax, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	edx, DWORD PTR -100[rbp]
	mov	edx, edx
	sal	rdx, 4
	lea	rcx, [rax+rdx]
	jmp	.L59
.L58:
	mov	ecx, 0
.L59:
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -120[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	insertElement
	mov	eax, 0
.L60:
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
