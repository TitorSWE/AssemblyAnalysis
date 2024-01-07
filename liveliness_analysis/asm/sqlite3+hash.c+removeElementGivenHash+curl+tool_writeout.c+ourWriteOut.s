	.file	"hash.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_635132075
	.data
	.align 4
	.type	__merger_cond_true_635132075, @object
	.size	__merger_cond_true_635132075, 4
__merger_cond_true_635132075:
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
	sub	rsp, 432
	mov	QWORD PTR -408[rbp], rdi
	mov	QWORD PTR -416[rbp], rsi
	mov	DWORD PTR -420[rbp], edx
	mov	DWORD PTR -12[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L36
	mov	DWORD PTR -396[rbp], 3
	jmp	.L35
.L36:
	mov	rax, QWORD PTR -416[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	je	.L38
	mov	rax, QWORD PTR -416[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -416[rbp]
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR [rax], rdx
.L38:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L39
.L76:
	mov	DWORD PTR -32[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	je	.L40
	cmp	QWORD PTR -24[rbp], 0
	jne	.L41
	mov	rax, QWORD PTR -416[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -408[rbp]
	mov	QWORD PTR 8[rax], rdx
.L41:
	mov	DWORD PTR -36[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	je	.L42
	mov	rax, QWORD PTR -416[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -48[rbp], 0
	je	.L43
	mov	DWORD PTR -52[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L44
	mov	DWORD PTR -212[rbp], 3
	jmp	.L39
.L44:
	mov	DWORD PTR -8[rbp], 0
	jmp	.L45
.L59:
	mov	DWORD PTR -56[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L46
	mov	DWORD PTR -60[rbp], 3
	mov	DWORD PTR -64[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L47
	mov	DWORD PTR -68[rbp], 3
	mov	DWORD PTR -72[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L48
	mov	DWORD PTR -76[rbp], 3
.L48:
	mov	DWORD PTR -80[rbp], 3
.L47:
	mov	DWORD PTR -84[rbp], 3
	mov	DWORD PTR -88[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L49
	mov	DWORD PTR -92[rbp], 3
	mov	DWORD PTR -96[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L50
	mov	DWORD PTR -100[rbp], 3
.L50:
	mov	DWORD PTR -104[rbp], 3
	mov	DWORD PTR -108[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L51
	mov	DWORD PTR -112[rbp], 3
	mov	DWORD PTR -116[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L52
	mov	DWORD PTR -120[rbp], 3
.L52:
	mov	DWORD PTR -124[rbp], 3
	mov	DWORD PTR -128[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L53
	mov	DWORD PTR -132[rbp], 3
	mov	DWORD PTR -136[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L54
	mov	DWORD PTR -140[rbp], 3
.L54:
	mov	DWORD PTR -144[rbp], 3
	mov	DWORD PTR -148[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L55
	mov	DWORD PTR -152[rbp], 3
	mov	DWORD PTR -156[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L56
	mov	DWORD PTR -160[rbp], 3
.L56:
	mov	DWORD PTR -164[rbp], 3
	mov	DWORD PTR -168[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L57
	mov	DWORD PTR -172[rbp], 3
.L57:
	mov	DWORD PTR -176[rbp], 3
.L55:
	mov	DWORD PTR -180[rbp], 3
.L53:
	mov	DWORD PTR -184[rbp], 3
.L51:
	mov	DWORD PTR -188[rbp], 3
.L49:
	mov	DWORD PTR -192[rbp], 3
	jmp	.L58
.L46:
	mov	rax, QWORD PTR -416[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -416[rbp]
	mov	rdx, QWORD PTR 8[rdx]
	mov	QWORD PTR 8[rax], rdx
.L45:
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	test	eax, eax
	je	.L59
.L58:
	mov	DWORD PTR -196[rbp], 3
	mov	DWORD PTR -200[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L60
	mov	DWORD PTR -204[rbp], 3
.L60:
	mov	DWORD PTR -208[rbp], 3
.L43:
	mov	DWORD PTR -216[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	je	.L61
	mov	rax, QWORD PTR -408[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -224[rbp], rax
	cmp	QWORD PTR -224[rbp], 0
	je	.L62
	mov	rax, QWORD PTR -408[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	edx, DWORD PTR -420[rbp]
	sal	rdx, 4
	add	rax, rdx
	mov	QWORD PTR -232[rbp], rax
	mov	rax, QWORD PTR -232[rbp]
	mov	rax, QWORD PTR 8[rax]
	cmp	QWORD PTR -416[rbp], rax
	sete	al
	movzx	eax, al
	mov	QWORD PTR -240[rbp], rax
	cmp	QWORD PTR -240[rbp], 0
	je	.L63
	mov	DWORD PTR -244[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	je	.L64
	mov	DWORD PTR -248[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	je	.L65
	mov	rax, QWORD PTR -416[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -232[rbp]
	mov	QWORD PTR 8[rax], rdx
.L65:
	mov	DWORD PTR -252[rbp], 3
.L64:
	mov	DWORD PTR -256[rbp], 3
.L63:
	mov	DWORD PTR -260[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	je	.L66
	mov	rax, QWORD PTR -232[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -232[rbp]
	mov	DWORD PTR [rax], edx
.L66:
	mov	DWORD PTR -264[rbp], 3
.L62:
	mov	rax, QWORD PTR -416[rbp]
	mov	rdi, rax
	call	sqlite3_free@PLT
	mov	rax, QWORD PTR -408[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -408[rbp]
	mov	DWORD PTR 4[rax], edx
	mov	rax, QWORD PTR -408[rbp]
	mov	eax, DWORD PTR 4[rax]
	test	eax, eax
	sete	al
	movzx	eax, al
	mov	QWORD PTR -272[rbp], rax
	cmp	QWORD PTR -272[rbp], 0
	je	.L61
	mov	rax, QWORD PTR -408[rbp]
	mov	rdi, rax
	call	sqlite3HashClear
.L61:
	mov	DWORD PTR -276[rbp], 3
.L42:
	mov	DWORD PTR -280[rbp], 3
.L40:
	mov	DWORD PTR -284[rbp], 3
	mov	DWORD PTR -288[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L67
	mov	DWORD PTR -292[rbp], 3
	mov	DWORD PTR -296[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L68
	mov	DWORD PTR -300[rbp], 3
	mov	DWORD PTR -304[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L69
	mov	DWORD PTR -308[rbp], 3
.L69:
	mov	DWORD PTR -312[rbp], 3
	mov	DWORD PTR -316[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L70
	mov	DWORD PTR -320[rbp], 3
	mov	DWORD PTR -324[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L71
	mov	DWORD PTR -328[rbp], 3
.L71:
	mov	DWORD PTR -332[rbp], 3
	mov	DWORD PTR -336[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L72
	mov	DWORD PTR -340[rbp], 3
	mov	DWORD PTR -344[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L73
	mov	DWORD PTR -348[rbp], 3
.L73:
	mov	DWORD PTR -352[rbp], 3
	mov	DWORD PTR -356[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L74
	mov	DWORD PTR -360[rbp], 3
.L74:
	mov	DWORD PTR -364[rbp], 3
.L72:
	mov	DWORD PTR -368[rbp], 3
.L70:
	mov	DWORD PTR -372[rbp], 3
.L68:
	mov	DWORD PTR -376[rbp], 3
	mov	DWORD PTR -380[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_635132075[rip]
	test	eax, eax
	jne	.L75
	mov	DWORD PTR -384[rbp], 3
.L75:
	mov	DWORD PTR -388[rbp], 3
.L67:
	mov	DWORD PTR -392[rbp], 3
.L39:
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	test	eax, eax
	je	.L76
	mov	DWORD PTR -28[rbp], 3
.L35:
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
	je	.L80
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -56[rbp], 0
	jne	.L81
	mov	edx, DWORD PTR -28[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	removeElementGivenHash
	jmp	.L82
.L81:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 24[rax], rdx
.L82:
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L89
.L80:
	cmp	QWORD PTR -56[rbp], 0
	jne	.L84
	mov	eax, 0
	jmp	.L89
.L84:
	mov	edi, 32
	call	sqlite3Malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L85
	mov	rax, QWORD PTR -56[rbp]
	jmp	.L89
.L85:
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
	jbe	.L86
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 4[rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR [rdx]
	add	edx, edx
	cmp	edx, eax
	jnb	.L86
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, [rax+rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	rehash
	test	eax, eax
	je	.L86
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
.L86:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L87
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	edx, DWORD PTR -28[rbp]
	mov	edx, edx
	sal	rdx, 4
	lea	rcx, [rax+rdx]
	jmp	.L88
.L87:
	mov	ecx, 0
.L88:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	insertElement
	mov	eax, 0
.L89:
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
