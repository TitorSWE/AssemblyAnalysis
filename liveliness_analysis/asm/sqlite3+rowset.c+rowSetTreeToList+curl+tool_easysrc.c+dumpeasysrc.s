	.file	"rowset.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_255379035
	.data
	.align 4
	.type	__merger_cond_true_255379035, @object
	.size	__merger_cond_true_255379035, 4
__merger_cond_true_255379035:
	.long	1
	.text
	.globl	sqlite3RowSetInit
	.type	sqlite3RowSetInit, @function
sqlite3RowSetInit:
.LFB6:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 56
	mov	rdi, rax
	call	sqlite3DbMallocRawNN@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L2
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbMallocSize@PLT
	mov	DWORD PTR -12[rbp], eax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 24[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 40[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 56[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sub	rax, 56
	movabs	rdx, -6148914691236517205
	mul	rdx
	mov	rax, rdx
	shr	rax, 4
	mov	edx, eax
	mov	rax, QWORD PTR -8[rbp]
	mov	WORD PTR 48[rax], dx
	mov	rax, QWORD PTR -8[rbp]
	mov	WORD PTR 50[rax], 1
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 52[rax], 0
.L2:
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	sqlite3RowSetInit, .-sqlite3RowSetInit
	.globl	sqlite3RowSetClear
	.type	sqlite3RowSetClear, @function
sqlite3RowSetClear:
.LFB7:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L5
.L6:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbFree@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
.L5:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L6
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	WORD PTR 48[rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 24[rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 40[rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	WORD PTR 50[rax], 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	sqlite3RowSetClear, .-sqlite3RowSetClear
	.globl	sqlite3RowSetDelete
	.type	sqlite3RowSetDelete, @function
sqlite3RowSetDelete:
.LFB8:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3RowSetClear
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbFree@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	sqlite3RowSetDelete, .-sqlite3RowSetDelete
	.type	rowSetEntryAlloc, @function
rowSetEntryAlloc:
.LFB9:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, WORD PTR 48[rax]
	test	ax, ax
	jne	.L9
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	esi, 1016
	mov	rdi, rax
	call	sqlite3DbMallocRawNN@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L10
	mov	eax, 0
	jmp	.L11
.L10:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	WORD PTR 48[rax], 42
.L9:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, WORD PTR 48[rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	WORD PTR 48[rax], dx
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 32[rax]
	lea	rcx, 24[rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 32[rdx], rcx
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	rowSetEntryAlloc, .-rowSetEntryAlloc
	.globl	sqlite3RowSetInsert
	.type	sqlite3RowSetInsert, @function
sqlite3RowSetInsert:
.LFB10:
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
	call	rowSetEntryAlloc
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L18
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L15
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -32[rbp], rax
	jg	.L16
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, WORD PTR 50[rax]
	and	eax, -2
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	WORD PTR 50[rax], dx
.L16:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L17
.L15:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
.L17:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 24[rax], rdx
	jmp	.L12
.L18:
	nop
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	sqlite3RowSetInsert, .-sqlite3RowSetInsert
	.type	rowSetEntryMerge, @function
rowSetEntryMerge:
.LFB11:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	lea	rax, -32[rbp]
	mov	QWORD PTR -8[rbp], rax
.L24:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jg	.L20
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jge	.L21
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
.L21:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	jne	.L24
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L23
.L20:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -48[rbp], 0
	jne	.L24
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
.L23:
	mov	rax, QWORD PTR -24[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	rowSetEntryMerge, .-rowSetEntryMerge
	.type	rowSetEntrySort, @function
rowSetEntrySort:
.LFB12:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 352
	mov	QWORD PTR -344[rbp], rdi
	lea	rax, -336[rbp]
	mov	edx, 320
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	jmp	.L27
.L30:
	mov	rax, QWORD PTR -344[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -344[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L28
.L29:
	mov	eax, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -336[rbp+rax*8]
	mov	rdx, QWORD PTR -344[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	rowSetEntryMerge
	mov	QWORD PTR -344[rbp], rax
	mov	eax, DWORD PTR -4[rbp]
	mov	QWORD PTR -336[rbp+rax*8], 0
	add	DWORD PTR -4[rbp], 1
.L28:
	mov	eax, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -336[rbp+rax*8]
	test	rax, rax
	jne	.L29
	mov	eax, DWORD PTR -4[rbp]
	mov	rdx, QWORD PTR -344[rbp]
	mov	QWORD PTR -336[rbp+rax*8], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -344[rbp], rax
.L27:
	cmp	QWORD PTR -344[rbp], 0
	jne	.L30
	mov	rax, QWORD PTR -336[rbp]
	mov	QWORD PTR -344[rbp], rax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L31
.L36:
	mov	eax, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -336[rbp+rax*8]
	test	rax, rax
	je	.L38
	cmp	QWORD PTR -344[rbp], 0
	je	.L34
	mov	eax, DWORD PTR -4[rbp]
	mov	rdx, QWORD PTR -336[rbp+rax*8]
	mov	rax, QWORD PTR -344[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	rowSetEntryMerge
	jmp	.L35
.L34:
	mov	eax, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -336[rbp+rax*8]
.L35:
	mov	QWORD PTR -344[rbp], rax
	jmp	.L33
.L38:
	nop
.L33:
	add	DWORD PTR -4[rbp], 1
.L31:
	cmp	DWORD PTR -4[rbp], 39
	jbe	.L36
	mov	rax, QWORD PTR -344[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	rowSetEntrySort, .-rowSetEntrySort
	.type	rowSetTreeToList, @function
rowSetTreeToList:
.LFB13:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 224
	mov	QWORD PTR -200[rbp], rdi
	mov	QWORD PTR -208[rbp], rsi
	mov	QWORD PTR -216[rbp], rdx
	mov	rax, QWORD PTR -200[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L40
	mov	rax, QWORD PTR -200[rbp]
	mov	rax, QWORD PTR 16[rax]
	lea	rdx, -184[rbp]
	mov	rcx, QWORD PTR -208[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	rowSetTreeToList
	mov	rax, QWORD PTR -184[rbp]
	mov	rdx, QWORD PTR -200[rbp]
	mov	QWORD PTR 8[rax], rdx
.L40:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L41
	mov	rax, QWORD PTR -208[rbp]
	mov	rdx, QWORD PTR -200[rbp]
	mov	QWORD PTR [rax], rdx
.L41:
	mov	rax, QWORD PTR -200[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	je	.L42
	mov	rax, QWORD PTR -200[rbp]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -200[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -216[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	rowSetTreeToList
.L42:
	cmp	QWORD PTR -24[rbp], 0
	jne	.L63
	mov	DWORD PTR -4[rbp], 0
	jmp	.L44
.L45:
	mov	rax, QWORD PTR -216[rbp]
	mov	rdx, QWORD PTR -200[rbp]
	mov	QWORD PTR [rax], rdx
.L44:
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	test	eax, eax
	je	.L45
	mov	DWORD PTR -28[rbp], 3
	mov	DWORD PTR -32[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_255379035[rip]
	test	eax, eax
	jne	.L46
	mov	DWORD PTR -36[rbp], 3
	mov	DWORD PTR -40[rbp], -2
	jmp	.L47
.L48:
	mov	DWORD PTR -48[rbp], 3
.L47:
	mov	eax, DWORD PTR __merger_cond_true_255379035[rip]
	test	eax, eax
	je	.L48
	mov	DWORD PTR -44[rbp], 3
.L46:
	mov	DWORD PTR -52[rbp], 3
	mov	DWORD PTR -56[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_255379035[rip]
	test	eax, eax
	jne	.L49
	mov	DWORD PTR -60[rbp], 3
	mov	DWORD PTR -64[rbp], -2
	jmp	.L50
.L51:
	mov	DWORD PTR -72[rbp], 3
.L50:
	mov	eax, DWORD PTR __merger_cond_true_255379035[rip]
	test	eax, eax
	je	.L51
	mov	DWORD PTR -68[rbp], 3
.L49:
	mov	DWORD PTR -76[rbp], 3
	mov	DWORD PTR -80[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_255379035[rip]
	test	eax, eax
	jne	.L52
	mov	DWORD PTR -84[rbp], 3
	mov	DWORD PTR -88[rbp], -2
	jmp	.L53
.L56:
	mov	DWORD PTR -96[rbp], 3
	mov	DWORD PTR -100[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_255379035[rip]
	test	eax, eax
	jne	.L54
	mov	DWORD PTR -104[rbp], 3
.L54:
	mov	DWORD PTR -108[rbp], 3
	mov	DWORD PTR -112[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_255379035[rip]
	test	eax, eax
	jne	.L55
	mov	DWORD PTR -116[rbp], 3
.L55:
	mov	DWORD PTR -120[rbp], 3
.L53:
	mov	eax, DWORD PTR __merger_cond_true_255379035[rip]
	test	eax, eax
	je	.L56
	mov	DWORD PTR -92[rbp], 3
.L52:
	mov	DWORD PTR -124[rbp], 3
	mov	DWORD PTR -128[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_255379035[rip]
	test	eax, eax
	jne	.L57
	mov	DWORD PTR -132[rbp], 3
	mov	DWORD PTR -136[rbp], -2
	jmp	.L58
.L59:
	mov	DWORD PTR -144[rbp], 3
.L58:
	mov	eax, DWORD PTR __merger_cond_true_255379035[rip]
	test	eax, eax
	je	.L59
	mov	DWORD PTR -140[rbp], 3
.L57:
	mov	DWORD PTR -148[rbp], 3
	mov	DWORD PTR -152[rbp], -2
	jmp	.L60
.L61:
	mov	DWORD PTR -172[rbp], 3
.L60:
	mov	eax, DWORD PTR __merger_cond_true_255379035[rip]
	test	eax, eax
	je	.L61
	mov	DWORD PTR -156[rbp], 3
	mov	DWORD PTR -160[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_255379035[rip]
	test	eax, eax
	jne	.L62
	mov	DWORD PTR -164[rbp], 3
.L62:
	mov	DWORD PTR -168[rbp], 3
.L63:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	rowSetTreeToList, .-rowSetTreeToList
	.type	rowSetNDeepTree, @function
rowSetNDeepTree:
.LFB14:
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
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	jne	.L65
	mov	eax, 0
	jmp	.L66
.L65:
	cmp	DWORD PTR -28[rbp], 1
	jle	.L67
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	rowSetNDeepTree
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L68
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L66
.L68:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	rowSetNDeepTree
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rdx], rax
	jmp	.L69
.L67:
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
.L69:
	mov	rax, QWORD PTR -8[rbp]
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	rowSetNDeepTree, .-rowSetNDeepTree
	.type	rowSetListToTree, @function
rowSetListToTree:
.LFB15:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	DWORD PTR -4[rbp], 1
	jmp	.L71
.L72:
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	edx, DWORD PTR -4[rbp]
	lea	rax, -40[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	rowSetNDeepTree
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rdx], rax
	add	DWORD PTR -4[rbp], 1
.L71:
	mov	rax, QWORD PTR -40[rbp]
	test	rax, rax
	jne	.L72
	mov	rax, QWORD PTR -16[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	rowSetListToTree, .-rowSetListToTree
	.globl	sqlite3RowSetNext
	.type	sqlite3RowSetNext, @function
sqlite3RowSetNext:
.LFB16:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, WORD PTR 50[rax]
	movzx	eax, ax
	and	eax, 2
	test	eax, eax
	jne	.L75
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, WORD PTR 50[rax]
	movzx	eax, ax
	and	eax, 1
	test	eax, eax
	jne	.L76
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdi, rax
	call	rowSetEntrySort
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rdx], rax
.L76:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, WORD PTR 50[rax]
	or	eax, 3
	mov	edx, eax
	mov	rax, QWORD PTR -8[rbp]
	mov	WORD PTR 50[rax], dx
.L75:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L77
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	jne	.L78
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3RowSetClear
.L78:
	mov	eax, 1
	jmp	.L79
.L77:
	mov	eax, 0
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	sqlite3RowSetNext, .-sqlite3RowSetNext
	.globl	sqlite3RowSetTest
	.type	sqlite3RowSetTest, @function
sqlite3RowSetTest:
.LFB17:
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
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR 52[rax]
	cmp	DWORD PTR -60[rbp], eax
	je	.L81
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L82
	mov	rax, QWORD PTR -56[rbp]
	add	rax, 40
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, WORD PTR 50[rax]
	movzx	eax, ax
	and	eax, 1
	test	eax, eax
	jne	.L83
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	rowSetEntrySort
	mov	QWORD PTR -8[rbp], rax
.L83:
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L84
.L87:
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 8
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	jne	.L85
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	rowSetListToTree
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rdx], rax
	jmp	.L86
.L85:
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 16[rax]
	lea	rdx, -40[rbp]
	lea	rcx, -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	rowSetTreeToList
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	rowSetEntryMerge
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
.L84:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L87
.L86:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L88
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	rowSetEntryAlloc
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	cmp	QWORD PTR -16[rbp], 0
	je	.L88
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	rowSetListToTree
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rdx], rax
.L88:
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 24[rax], 0
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, WORD PTR 50[rax]
	or	eax, 1
	mov	edx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	WORD PTR 50[rax], dx
.L82:
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -60[rbp]
	mov	DWORD PTR 52[rax], edx
.L81:
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L89
.L95:
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L90
.L94:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -72[rbp], rax
	jle	.L91
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L90
.L91:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -72[rbp], rax
	jge	.L92
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L90
.L92:
	mov	eax, 1
	jmp	.L93
.L90:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L94
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
.L89:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L95
	mov	eax, 0
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	sqlite3RowSetTest, .-sqlite3RowSetTest
	.ident	"GCC: (Debian 13.2.0-6) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
