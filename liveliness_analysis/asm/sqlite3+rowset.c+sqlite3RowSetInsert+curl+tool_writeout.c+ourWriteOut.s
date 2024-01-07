	.file	"rowset.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_1028105526
	.data
	.align 4
	.type	__merger_cond_true_1028105526, @object
	.size	__merger_cond_true_1028105526, 4
__merger_cond_true_1028105526:
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
	sub	rsp, 432
	mov	QWORD PTR -424[rbp], rdi
	mov	QWORD PTR -432[rbp], rsi
	mov	rax, QWORD PTR -424[rbp]
	mov	rdi, rax
	call	rowSetEntryAlloc
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	sete	al
	movzx	eax, al
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	jne	.L55
	mov	DWORD PTR -28[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L15
	mov	DWORD PTR -32[rbp], 3
.L15:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L16
.L54:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -432[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -424[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -56[rbp], rax
	cmp	QWORD PTR -56[rbp], 0
	je	.L17
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -432[rbp], rax
	setle	al
	movzx	eax, al
	mov	QWORD PTR -64[rbp], rax
	cmp	QWORD PTR -64[rbp], 0
	je	.L18
	mov	rax, QWORD PTR -424[rbp]
	movzx	eax, WORD PTR 50[rax]
	and	eax, -2
	mov	edx, eax
	mov	rax, QWORD PTR -424[rbp]
	mov	WORD PTR 50[rax], dx
.L18:
	mov	DWORD PTR -68[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	je	.L19
	mov	DWORD PTR -72[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	je	.L20
	mov	DWORD PTR -76[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L21
	mov	DWORD PTR -236[rbp], 3
	jmp	.L16
.L21:
	mov	DWORD PTR -8[rbp], 0
	jmp	.L22
.L36:
	mov	DWORD PTR -80[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L23
	mov	DWORD PTR -84[rbp], 3
	mov	DWORD PTR -88[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L24
	mov	DWORD PTR -92[rbp], 3
	mov	DWORD PTR -96[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L25
	mov	DWORD PTR -100[rbp], 3
.L25:
	mov	DWORD PTR -104[rbp], 3
.L24:
	mov	DWORD PTR -108[rbp], 3
	mov	DWORD PTR -112[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L26
	mov	DWORD PTR -116[rbp], 3
	mov	DWORD PTR -120[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L27
	mov	DWORD PTR -124[rbp], 3
.L27:
	mov	DWORD PTR -128[rbp], 3
	mov	DWORD PTR -132[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L28
	mov	DWORD PTR -136[rbp], 3
	mov	DWORD PTR -140[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L29
	mov	DWORD PTR -144[rbp], 3
.L29:
	mov	DWORD PTR -148[rbp], 3
	mov	DWORD PTR -152[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L30
	mov	DWORD PTR -156[rbp], 3
	mov	DWORD PTR -160[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L31
	mov	DWORD PTR -164[rbp], 3
.L31:
	mov	DWORD PTR -168[rbp], 3
	mov	DWORD PTR -172[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L32
	mov	DWORD PTR -176[rbp], 3
	mov	DWORD PTR -180[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L33
	mov	DWORD PTR -184[rbp], 3
.L33:
	mov	DWORD PTR -188[rbp], 3
	mov	DWORD PTR -192[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L34
	mov	DWORD PTR -196[rbp], 3
.L34:
	mov	DWORD PTR -200[rbp], 3
.L32:
	mov	DWORD PTR -204[rbp], 3
.L30:
	mov	DWORD PTR -208[rbp], 3
.L28:
	mov	DWORD PTR -212[rbp], 3
.L26:
	mov	DWORD PTR -216[rbp], 3
	jmp	.L35
.L23:
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], rdx
.L22:
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	test	eax, eax
	je	.L36
.L35:
	mov	DWORD PTR -220[rbp], 3
	mov	DWORD PTR -224[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L37
	mov	DWORD PTR -228[rbp], 3
.L37:
	mov	DWORD PTR -232[rbp], 3
.L20:
	mov	DWORD PTR -240[rbp], 3
	mov	DWORD PTR -244[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L38
	mov	DWORD PTR -248[rbp], 3
	mov	DWORD PTR -252[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L39
	mov	DWORD PTR -256[rbp], 3
	mov	DWORD PTR -260[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L40
	mov	DWORD PTR -264[rbp], 3
	mov	DWORD PTR -268[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L41
	mov	DWORD PTR -272[rbp], 3
	mov	DWORD PTR -276[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L42
	mov	DWORD PTR -280[rbp], 3
.L42:
	mov	DWORD PTR -284[rbp], 3
.L41:
	mov	DWORD PTR -288[rbp], 3
.L40:
	mov	DWORD PTR -292[rbp], 3
	mov	DWORD PTR -296[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L43
	mov	DWORD PTR -300[rbp], 3
.L43:
	mov	DWORD PTR -304[rbp], 3
.L39:
	mov	DWORD PTR -308[rbp], 3
	mov	DWORD PTR -312[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L44
	mov	DWORD PTR -316[rbp], 3
.L44:
	mov	DWORD PTR -320[rbp], 3
.L38:
	mov	DWORD PTR -324[rbp], 3
.L19:
	mov	DWORD PTR -328[rbp], 3
.L17:
	cmp	QWORD PTR -56[rbp], 0
	jne	.L45
	mov	DWORD PTR -332[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	je	.L46
	mov	DWORD PTR -336[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	je	.L47
	mov	rax, QWORD PTR -424[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rax], rdx
.L47:
	mov	DWORD PTR -340[rbp], 3
	mov	DWORD PTR -344[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L48
	mov	DWORD PTR -348[rbp], 3
	mov	DWORD PTR -352[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L49
	mov	DWORD PTR -356[rbp], 3
.L49:
	mov	DWORD PTR -360[rbp], 3
	mov	DWORD PTR -364[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L50
	mov	DWORD PTR -368[rbp], 3
	mov	DWORD PTR -372[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L51
	mov	DWORD PTR -376[rbp], 3
.L51:
	mov	DWORD PTR -380[rbp], 3
	mov	DWORD PTR -384[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L52
	mov	DWORD PTR -388[rbp], 3
.L52:
	mov	DWORD PTR -392[rbp], 3
.L50:
	mov	DWORD PTR -396[rbp], 3
.L48:
	mov	DWORD PTR -400[rbp], 3
.L46:
	mov	DWORD PTR -404[rbp], 3
	mov	DWORD PTR -408[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]
	test	eax, eax
	jne	.L53
	mov	DWORD PTR -412[rbp], 3
.L53:
	mov	DWORD PTR -416[rbp], 3
.L45:
	mov	rax, QWORD PTR -424[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 24[rax], rdx
.L16:
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	test	eax, eax
	je	.L54
	mov	DWORD PTR -36[rbp], 3
	jmp	.L12
.L55:
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
.L61:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jg	.L57
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jge	.L58
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
.L58:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	jne	.L61
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L60
.L57:
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
	jne	.L61
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
.L60:
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
	jmp	.L64
.L67:
	mov	rax, QWORD PTR -344[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -344[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L65
.L66:
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
.L65:
	mov	eax, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -336[rbp+rax*8]
	test	rax, rax
	jne	.L66
	mov	eax, DWORD PTR -4[rbp]
	mov	rdx, QWORD PTR -344[rbp]
	mov	QWORD PTR -336[rbp+rax*8], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -344[rbp], rax
.L64:
	cmp	QWORD PTR -344[rbp], 0
	jne	.L67
	mov	rax, QWORD PTR -336[rbp]
	mov	QWORD PTR -344[rbp], rax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L68
.L73:
	mov	eax, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -336[rbp+rax*8]
	test	rax, rax
	je	.L75
	cmp	QWORD PTR -344[rbp], 0
	je	.L71
	mov	eax, DWORD PTR -4[rbp]
	mov	rdx, QWORD PTR -336[rbp+rax*8]
	mov	rax, QWORD PTR -344[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	rowSetEntryMerge
	jmp	.L72
.L71:
	mov	eax, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -336[rbp+rax*8]
.L72:
	mov	QWORD PTR -344[rbp], rax
	jmp	.L70
.L75:
	nop
.L70:
	add	DWORD PTR -4[rbp], 1
.L68:
	cmp	DWORD PTR -4[rbp], 39
	jbe	.L73
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
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L77
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	lea	rdx, -8[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	rowSetTreeToList
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L78
.L77:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
.L78:
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	je	.L79
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	rowSetTreeToList
	jmp	.L81
.L79:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
.L81:
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
	jne	.L83
	mov	eax, 0
	jmp	.L84
.L83:
	cmp	DWORD PTR -28[rbp], 1
	jle	.L85
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
	jne	.L86
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L84
.L86:
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
	jmp	.L87
.L85:
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
.L87:
	mov	rax, QWORD PTR -8[rbp]
.L84:
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
	jmp	.L89
.L90:
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
.L89:
	mov	rax, QWORD PTR -40[rbp]
	test	rax, rax
	jne	.L90
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
	jne	.L93
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, WORD PTR 50[rax]
	movzx	eax, ax
	and	eax, 1
	test	eax, eax
	jne	.L94
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdi, rax
	call	rowSetEntrySort
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rdx], rax
.L94:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, WORD PTR 50[rax]
	or	eax, 3
	mov	edx, eax
	mov	rax, QWORD PTR -8[rbp]
	mov	WORD PTR 50[rax], dx
.L93:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L95
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
	jne	.L96
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3RowSetClear
.L96:
	mov	eax, 1
	jmp	.L97
.L95:
	mov	eax, 0
.L97:
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
	je	.L99
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L100
	mov	rax, QWORD PTR -56[rbp]
	add	rax, 40
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, WORD PTR 50[rax]
	movzx	eax, ax
	and	eax, 1
	test	eax, eax
	jne	.L101
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	rowSetEntrySort
	mov	QWORD PTR -8[rbp], rax
.L101:
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L102
.L105:
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 8
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	jne	.L103
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	rowSetListToTree
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rdx], rax
	jmp	.L104
.L103:
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
.L102:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L105
.L104:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L106
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	rowSetEntryAlloc
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	cmp	QWORD PTR -16[rbp], 0
	je	.L106
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	rowSetListToTree
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rdx], rax
.L106:
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
.L100:
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -60[rbp]
	mov	DWORD PTR 52[rax], edx
.L99:
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L107
.L113:
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L108
.L112:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -72[rbp], rax
	jle	.L109
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L108
.L109:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -72[rbp], rax
	jge	.L110
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L108
.L110:
	mov	eax, 1
	jmp	.L111
.L108:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L112
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
.L107:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L113
	mov	eax, 0
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	sqlite3RowSetTest, .-sqlite3RowSetTest
	.ident	"GCC: (Debian 13.2.0-6) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
