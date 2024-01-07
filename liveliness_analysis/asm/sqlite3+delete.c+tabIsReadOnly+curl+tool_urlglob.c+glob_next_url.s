	.file	"delete.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_169916065
	.data
	.align 4
	.type	__merger_cond_true_169916065, @object
	.size	__merger_cond_true_169916065, 4
__merger_cond_true_169916065:
	.long	1
	.text
	.globl	sqlite3SrcListLookup
	.type	sqlite3SrcListLookup, @function
sqlite3SrcListLookup:
.LFB6:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 8
	mov	QWORD PTR -16[rbp], rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	sqlite3LocateTableItem@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 32[rax]
	test	rax, rax
	je	.L2
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 32[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DeleteTable@PLT
.L2:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	movzx	edx, BYTE PTR 62[rax]
	or	edx, 2
	mov	BYTE PTR 62[rax], dl
	cmp	QWORD PTR -8[rbp], 0
	je	.L3
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 44[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 44[rax], edx
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 61[rax]
	and	eax, 2
	test	al, al
	je	.L3
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3IndexedByLookup@PLT
	test	eax, eax
	je	.L3
	mov	QWORD PTR -8[rbp], 0
.L3:
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	sqlite3SrcListLookup, .-sqlite3SrcListLookup
	.globl	sqlite3CodeChangeCount
	.type	sqlite3CodeChangeCount, @function
sqlite3CodeChangeCount:
.LFB7:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 83
	mov	rdi, rax
	call	sqlite3VdbeAddOp0@PLT
	mov	edx, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	ecx, 1
	mov	esi, 84
	mov	rdi, rax
	call	sqlite3VdbeAddOp2@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	sqlite3VdbeSetNumCols@PLT
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	r8d, 0
	mov	rcx, rdx
	mov	edx, 0
	mov	esi, 0
	mov	rdi, rax
	call	sqlite3VdbeSetColName@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	sqlite3CodeChangeCount, .-sqlite3CodeChangeCount
	.section	.rodata
	.align 8
.LC0:
	.string	"unsafe use of virtual table \"%s\""
	.text
	.type	vtabIsReadOnly, @function
vtabIsReadOnly:
.LFB8:
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
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3GetVTable@PLT
	mov	rax, QWORD PTR 8[rax]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 104[rax]
	test	rax, rax
	jne	.L7
	mov	eax, 1
	jmp	.L8
.L7:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 176[rax]
	test	rax, rax
	je	.L9
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 80[rax]
	movzx	eax, BYTE PTR 30[rax]
	movzx	edx, al
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 48[rax]
	and	eax, 128
	test	rax, rax
	setne	al
	movzx	eax, al
	cmp	edx, eax
	jle	.L9
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, .LC0[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	sqlite3ErrorMsg@PLT
.L9:
	mov	eax, 0
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	vtabIsReadOnly, .-vtabIsReadOnly
	.type	tabIsReadOnly, @function
tabIsReadOnly:
.LFB9:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 256
	mov	QWORD PTR -248[rbp], rdi
	mov	QWORD PTR -256[rbp], rsi
	mov	DWORD PTR -8[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	jne	.L11
	mov	DWORD PTR -12[rbp], 3
.L11:
	mov	rax, QWORD PTR -256[rbp]
	movzx	eax, BYTE PTR 63[rax]
	cmp	al, 1
	sete	al
	movzx	eax, al
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	je	.L12
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
.L24:
	mov	DWORD PTR -44[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	jne	.L14
	mov	DWORD PTR -48[rbp], 3
	mov	DWORD PTR -52[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	jne	.L15
	mov	DWORD PTR -56[rbp], 3
.L15:
	mov	DWORD PTR -60[rbp], 3
.L14:
	mov	DWORD PTR -64[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	je	.L16
	mov	DWORD PTR -68[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	jne	.L17
	mov	DWORD PTR -72[rbp], 3
	mov	DWORD PTR -76[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	jne	.L18
	mov	DWORD PTR -80[rbp], 3
.L18:
	mov	DWORD PTR -84[rbp], 3
.L17:
	mov	DWORD PTR -88[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	je	.L19
	mov	DWORD PTR -92[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	jne	.L20
	mov	DWORD PTR -96[rbp], 3
	mov	DWORD PTR -100[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	jne	.L21
	mov	DWORD PTR -104[rbp], 3
.L21:
	mov	DWORD PTR -108[rbp], 3
.L20:
	mov	DWORD PTR -112[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	je	.L22
	mov	rdx, QWORD PTR -256[rbp]
	mov	rax, QWORD PTR -248[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	vtabIsReadOnly
	jmp	.L23
.L22:
	mov	DWORD PTR -116[rbp], 3
.L19:
	mov	DWORD PTR -120[rbp], 3
.L16:
	mov	DWORD PTR -124[rbp], 3
.L13:
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	test	eax, eax
	je	.L24
	mov	DWORD PTR -28[rbp], 3
	mov	DWORD PTR -32[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	jne	.L25
	mov	DWORD PTR -40[rbp], 3
	mov	eax, 12
	jmp	.L23
.L25:
	mov	DWORD PTR -36[rbp], 3
.L12:
	mov	rax, QWORD PTR -256[rbp]
	mov	eax, DWORD PTR 48[rax]
	and	eax, 4097
	test	eax, eax
	sete	al
	movzx	eax, al
	mov	QWORD PTR -136[rbp], rax
	mov	DWORD PTR -140[rbp], 1
	jmp	.L26
.L36:
	mov	DWORD PTR -144[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	jne	.L27
	mov	DWORD PTR -148[rbp], 3
	mov	DWORD PTR -152[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	jne	.L28
	mov	DWORD PTR -156[rbp], 3
.L28:
	mov	DWORD PTR -160[rbp], 3
.L27:
	mov	DWORD PTR -164[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	je	.L29
	mov	DWORD PTR -168[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	jne	.L30
	mov	DWORD PTR -172[rbp], 3
	mov	DWORD PTR -176[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	jne	.L31
	mov	DWORD PTR -180[rbp], 3
.L31:
	mov	DWORD PTR -184[rbp], 3
.L30:
	mov	DWORD PTR -188[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	je	.L32
	mov	DWORD PTR -192[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	jne	.L33
	mov	DWORD PTR -196[rbp], 3
.L33:
	mov	DWORD PTR -200[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_169916065[rip]
	test	eax, eax
	je	.L34
	mov	DWORD PTR -140[rbp], 0
	mov	eax, 0
	jmp	.L23
.L34:
	mov	DWORD PTR -204[rbp], 3
.L32:
	mov	DWORD PTR -208[rbp], 3
.L29:
	mov	DWORD PTR -212[rbp], 3
.L26:
	cmp	QWORD PTR -136[rbp], 0
	je	.L35
	cmp	DWORD PTR -140[rbp], 0
	jne	.L36
.L35:
	mov	rax, QWORD PTR -248[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -224[rbp], rax
	mov	rax, QWORD PTR -256[rbp]
	mov	eax, DWORD PTR 48[rax]
	and	eax, 1
	test	eax, eax
	setne	al
	movzx	eax, al
	mov	QWORD PTR -232[rbp], rax
	cmp	QWORD PTR -232[rbp], 0
	je	.L37
	mov	rax, QWORD PTR -224[rbp]
	mov	rdi, rax
	call	sqlite3WritableSchema@PLT
	test	eax, eax
	jne	.L38
	mov	rax, QWORD PTR -248[rbp]
	movzx	eax, BYTE PTR 30[rax]
	test	al, al
	jne	.L38
	mov	eax, 1
	jmp	.L23
.L38:
	mov	eax, 0
	jmp	.L23
.L37:
	mov	rax, QWORD PTR -224[rbp]
	mov	rdi, rax
	call	sqlite3ReadOnlyShadowTables@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	tabIsReadOnly, .-tabIsReadOnly
	.section	.rodata
.LC1:
	.string	"table %s may not be modified"
	.align 8
.LC2:
	.string	"cannot modify %s because it is a view"
	.text
	.globl	sqlite3IsReadOnly
	.type	sqlite3IsReadOnly, @function
sqlite3IsReadOnly:
.LFB10:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	tabIsReadOnly
	test	eax, eax
	je	.L41
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, .LC1[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	sqlite3ErrorMsg@PLT
	mov	eax, 1
	jmp	.L42
.L41:
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 63[rax]
	cmp	al, 2
	jne	.L43
	cmp	QWORD PTR -24[rbp], 0
	je	.L44
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR 18[rax]
	test	al, al
	je	.L43
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 64[rax]
	test	rax, rax
	jne	.L43
.L44:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, .LC2[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	sqlite3ErrorMsg@PLT
	mov	eax, 1
	jmp	.L42
.L43:
	mov	eax, 0
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	sqlite3IsReadOnly, .-sqlite3IsReadOnly
	.globl	sqlite3MaterializeView
	.type	sqlite3MaterializeView, @function
sqlite3MaterializeView:
.LFB11:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	add	rsp, -128
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	QWORD PTR -104[rbp], rdx
	mov	QWORD PTR -112[rbp], rcx
	mov	QWORD PTR -120[rbp], r8
	mov	DWORD PTR -124[rbp], r9d
	mov	rax, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -96[rbp]
	mov	rdx, QWORD PTR 96[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3SchemaToIndex@PLT
	mov	DWORD PTR -12[rbp], eax
	mov	rcx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3ExprDup@PLT
	mov	QWORD PTR -104[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	ecx, 0
	mov	edx, 0
	mov	esi, 0
	mov	rdi, rax
	call	sqlite3SrcListAppend@PLT
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	je	.L46
	mov	rax, QWORD PTR -96[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbStrDup@PLT
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 24[rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 32[rax]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	sal	rdx, 5
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbStrDup@PLT
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rdx], rax
.L46:
	mov	rcx, QWORD PTR -104[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -88[rbp]
	sub	rsp, 8
	push	QWORD PTR -120[rbp]
	push	131072
	push	QWORD PTR -112[rbp]
	mov	r9d, 0
	mov	r8d, 0
	mov	esi, 0
	mov	rdi, rax
	call	sqlite3SelectNew@PLT
	add	rsp, 32
	mov	QWORD PTR -32[rbp], rax
	mov	edx, DWORD PTR -124[rbp]
	lea	rax, -80[rbp]
	mov	esi, 12
	mov	rdi, rax
	call	sqlite3SelectDestInit@PLT
	lea	rdx, -80[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3Select@PLT
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3SelectDelete@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	sqlite3MaterializeView, .-sqlite3MaterializeView
	.section	.rodata
.LC3:
	.string	"rows deleted"
	.text
	.globl	sqlite3DeleteFrom
	.type	sqlite3DeleteFrom, @function
sqlite3DeleteFrom:
.LFB12:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 312
	.cfi_offset 3, -24
	mov	QWORD PTR -280[rbp], rdi
	mov	QWORD PTR -288[rbp], rsi
	mov	QWORD PTR -296[rbp], rdx
	mov	QWORD PTR -304[rbp], rcx
	mov	QWORD PTR -312[rbp], r8
	mov	DWORD PTR -188[rbp], 0
	mov	DWORD PTR -192[rbp], 0
	mov	DWORD PTR -40[rbp], 0
	mov	QWORD PTR -48[rbp], 0
	mov	DWORD PTR -60[rbp], 0
	mov	WORD PTR -62[rbp], 1
	mov	DWORD PTR -76[rbp], 0
	mov	DWORD PTR -80[rbp], 0
	mov	DWORD PTR -84[rbp], 0
	mov	DWORD PTR -88[rbp], 0
	mov	DWORD PTR -92[rbp], 0
	lea	rax, -208[rbp]
	mov	edx, 16
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	rax, QWORD PTR -280[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -112[rbp], rax
	mov	rax, QWORD PTR -280[rbp]
	mov	eax, DWORD PTR 48[rax]
	test	eax, eax
	jne	.L111
	mov	rdx, QWORD PTR -288[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3SrcListLookup
	mov	QWORD PTR -120[rbp], rax
	cmp	QWORD PTR -120[rbp], 0
	je	.L112
	mov	rsi, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	r8d, 0
	mov	ecx, 0
	mov	edx, 128
	mov	rdi, rax
	call	sqlite3TriggersExist@PLT
	mov	QWORD PTR -128[rbp], rax
	mov	rax, QWORD PTR -120[rbp]
	movzx	eax, BYTE PTR 63[rax]
	cmp	al, 2
	sete	al
	movzx	eax, al
	mov	DWORD PTR -132[rbp], eax
	cmp	QWORD PTR -128[rbp], 0
	jne	.L51
	mov	rsi, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	ecx, 0
	mov	edx, 0
	mov	rdi, rax
	call	sqlite3FkRequired@PLT
	test	eax, eax
	je	.L52
.L51:
	mov	eax, 1
	jmp	.L53
.L52:
	mov	eax, 0
.L53:
	mov	DWORD PTR -96[rbp], eax
	mov	rdx, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3ViewGetColumnNames@PLT
	test	eax, eax
	jne	.L113
	mov	rdx, QWORD PTR -128[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3IsReadOnly
	test	eax, eax
	jne	.L114
	mov	rax, QWORD PTR -120[rbp]
	mov	rdx, QWORD PTR 96[rax]
	mov	rax, QWORD PTR -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3SchemaToIndex@PLT
	mov	DWORD PTR -136[rbp], eax
	mov	rax, QWORD PTR -112[rbp]
	mov	rax, QWORD PTR 32[rax]
	mov	edx, DWORD PTR -136[rbp]
	movsx	rdx, edx
	sal	rdx, 5
	add	rax, rdx
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -120[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -280[rbp]
	mov	r8, rcx
	mov	ecx, 0
	mov	esi, 9
	mov	rdi, rax
	call	sqlite3AuthCheck@PLT
	mov	DWORD PTR -140[rbp], eax
	cmp	DWORD PTR -140[rbp], 1
	je	.L115
	mov	rax, QWORD PTR -280[rbp]
	mov	eax, DWORD PTR 52[rax]
	lea	ecx, 1[rax]
	mov	rdx, QWORD PTR -280[rbp]
	mov	DWORD PTR 52[rdx], ecx
	mov	rdx, QWORD PTR -288[rbp]
	mov	DWORD PTR 72[rdx], eax
	mov	rax, QWORD PTR -288[rbp]
	mov	eax, DWORD PTR 72[rax]
	mov	DWORD PTR -144[rbp], eax
	mov	DWORD PTR -36[rbp], 0
	mov	rax, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -32[rbp], rax
	jmp	.L57
.L58:
	mov	rax, QWORD PTR -280[rbp]
	mov	eax, DWORD PTR 52[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -280[rbp]
	mov	DWORD PTR 52[rax], edx
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	QWORD PTR -32[rbp], rax
	add	DWORD PTR -36[rbp], 1
.L57:
	cmp	QWORD PTR -32[rbp], 0
	jne	.L58
	cmp	DWORD PTR -132[rbp], 0
	je	.L59
	mov	rax, QWORD PTR -120[rbp]
	mov	rdx, QWORD PTR [rax]
	lea	rcx, -208[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3AuthContextPush@PLT
.L59:
	mov	rax, QWORD PTR -280[rbp]
	mov	rdi, rax
	call	sqlite3GetVdbe@PLT
	mov	QWORD PTR -152[rbp], rax
	cmp	QWORD PTR -152[rbp], 0
	je	.L116
	mov	rax, QWORD PTR -280[rbp]
	movzx	eax, BYTE PTR 30[rax]
	test	al, al
	jne	.L61
	mov	rax, QWORD PTR -152[rbp]
	mov	rdi, rax
	call	sqlite3VdbeCountChanges@PLT
.L61:
	mov	edx, DWORD PTR -136[rbp]
	mov	ecx, DWORD PTR -96[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	sqlite3BeginWriteOperation@PLT
	cmp	DWORD PTR -132[rbp], 0
	je	.L62
	mov	r8d, DWORD PTR -144[rbp]
	mov	rdi, QWORD PTR -312[rbp]
	mov	rcx, QWORD PTR -304[rbp]
	mov	rdx, QWORD PTR -296[rbp]
	mov	rsi, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	r9d, r8d
	mov	r8, rdi
	mov	rdi, rax
	call	sqlite3MaterializeView
	mov	eax, DWORD PTR -144[rbp]
	mov	DWORD PTR -192[rbp], eax
	mov	eax, DWORD PTR -192[rbp]
	mov	DWORD PTR -188[rbp], eax
	mov	QWORD PTR -304[rbp], 0
	mov	QWORD PTR -312[rbp], 0
.L62:
	lea	rax, -272[rbp]
	mov	edx, 56
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	rax, QWORD PTR -280[rbp]
	mov	QWORD PTR -272[rbp], rax
	mov	rax, QWORD PTR -288[rbp]
	mov	QWORD PTR -264[rbp], rax
	mov	rdx, QWORD PTR -296[rbp]
	lea	rax, -272[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3ResolveExprNames@PLT
	test	eax, eax
	jne	.L117
	mov	rax, QWORD PTR -112[rbp]
	mov	rax, QWORD PTR 48[rax]
	movabs	rdx, 4294967296
	and	rax, rdx
	test	rax, rax
	je	.L64
	mov	rax, QWORD PTR -280[rbp]
	movzx	eax, BYTE PTR 30[rax]
	test	al, al
	jne	.L64
	mov	rax, QWORD PTR -280[rbp]
	mov	rax, QWORD PTR 184[rax]
	test	rax, rax
	jne	.L64
	mov	rax, QWORD PTR -280[rbp]
	movzx	eax, BYTE PTR 227[rax]
	test	al, al
	jne	.L64
	mov	rax, QWORD PTR -280[rbp]
	mov	eax, DWORD PTR 56[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -280[rbp]
	mov	DWORD PTR 56[rax], edx
	mov	rax, QWORD PTR -280[rbp]
	mov	eax, DWORD PTR 56[rax]
	mov	DWORD PTR -40[rbp], eax
	mov	edx, DWORD PTR -40[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	ecx, edx
	mov	edx, 0
	mov	esi, 71
	mov	rdi, rax
	call	sqlite3VdbeAddOp2@PLT
.L64:
	cmp	DWORD PTR -140[rbp], 0
	jne	.L65
	cmp	QWORD PTR -296[rbp], 0
	jne	.L65
	cmp	DWORD PTR -96[rbp], 0
	jne	.L65
	mov	rax, QWORD PTR -120[rbp]
	movzx	eax, BYTE PTR 63[rax]
	cmp	al, 1
	je	.L65
	mov	rax, QWORD PTR -120[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -120[rbp]
	mov	edx, DWORD PTR 40[rax]
	mov	esi, DWORD PTR -136[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	r8, rcx
	mov	ecx, 1
	mov	rdi, rax
	call	sqlite3TableLock@PLT
	mov	rax, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR 48[rax]
	and	eax, 128
	test	eax, eax
	jne	.L66
	mov	rax, QWORD PTR -120[rbp]
	mov	rsi, QWORD PTR [rax]
	cmp	DWORD PTR -40[rbp], 0
	je	.L67
	mov	ecx, DWORD PTR -40[rbp]
	jmp	.L68
.L67:
	mov	ecx, -1
.L68:
	mov	rax, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR 40[rax]
	mov	edi, eax
	mov	edx, DWORD PTR -136[rbp]
	mov	rax, QWORD PTR -152[rbp]
	sub	rsp, 8
	push	-1
	mov	r9, rsi
	mov	r8d, ecx
	mov	ecx, edx
	mov	edx, edi
	mov	esi, 145
	mov	rdi, rax
	call	sqlite3VdbeAddOp4@PLT
	add	rsp, 16
.L66:
	mov	rax, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -32[rbp], rax
	jmp	.L69
.L74:
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, BYTE PTR 99[rax]
	and	eax, 3
	cmp	al, 2
	jne	.L70
	mov	rax, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR 48[rax]
	and	eax, 128
	test	eax, eax
	je	.L70
	cmp	DWORD PTR -40[rbp], 0
	je	.L71
	mov	ecx, DWORD PTR -40[rbp]
	jmp	.L72
.L71:
	mov	ecx, -1
.L72:
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 88[rax]
	mov	esi, eax
	mov	edx, DWORD PTR -136[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	r8d, ecx
	mov	ecx, edx
	mov	edx, esi
	mov	esi, 145
	mov	rdi, rax
	call	sqlite3VdbeAddOp3@PLT
	jmp	.L73
.L70:
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 88[rax]
	mov	esi, eax
	mov	edx, DWORD PTR -136[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	ecx, edx
	mov	edx, esi
	mov	esi, 145
	mov	rdi, rax
	call	sqlite3VdbeAddOp2@PLT
.L73:
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	QWORD PTR -32[rbp], rax
.L69:
	cmp	QWORD PTR -32[rbp], 0
	jne	.L74
	jmp	.L75
.L65:
	mov	WORD PTR -154[rbp], 20
	mov	eax, DWORD PTR -232[rbp]
	and	eax, 64
	test	eax, eax
	je	.L76
	mov	DWORD PTR -96[rbp], 1
.L76:
	cmp	DWORD PTR -96[rbp], 0
	je	.L77
	mov	edx, 0
	jmp	.L78
.L77:
	mov	edx, 8
.L78:
	movzx	eax, WORD PTR -154[rbp]
	or	eax, edx
	mov	WORD PTR -154[rbp], ax
	mov	rax, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR 48[rax]
	and	eax, 128
	test	eax, eax
	jne	.L79
	mov	QWORD PTR -56[rbp], 0
	mov	rax, QWORD PTR -280[rbp]
	mov	eax, DWORD PTR 56[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -280[rbp]
	mov	DWORD PTR 56[rax], edx
	mov	rax, QWORD PTR -280[rbp]
	mov	eax, DWORD PTR 56[rax]
	mov	DWORD PTR -80[rbp], eax
	mov	edx, DWORD PTR -80[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	ecx, edx
	mov	edx, 0
	mov	esi, 75
	mov	rdi, rax
	call	sqlite3VdbeAddOp2@PLT
	jmp	.L80
.L79:
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	call	sqlite3PrimaryKeyIndex@PLT
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, WORD PTR 94[rax]
	mov	WORD PTR -62[rbp], ax
	mov	rax, QWORD PTR -280[rbp]
	mov	eax, DWORD PTR 56[rax]
	add	eax, 1
	mov	DWORD PTR -60[rbp], eax
	mov	rax, QWORD PTR -280[rbp]
	mov	edx, DWORD PTR 56[rax]
	movsx	eax, WORD PTR -62[rbp]
	add	edx, eax
	mov	rax, QWORD PTR -280[rbp]
	mov	DWORD PTR 56[rax], edx
	mov	rax, QWORD PTR -280[rbp]
	mov	eax, DWORD PTR 52[rax]
	lea	ecx, 1[rax]
	mov	rdx, QWORD PTR -280[rbp]
	mov	DWORD PTR 52[rdx], ecx
	mov	DWORD PTR -76[rbp], eax
	movsx	ecx, WORD PTR -62[rbp]
	mov	edx, DWORD PTR -76[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, 118
	mov	rdi, rax
	call	sqlite3VdbeAddOp2@PLT
	mov	DWORD PTR -92[rbp], eax
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3VdbeSetP4KeyInfo@PLT
.L80:
	mov	eax, DWORD PTR -144[rbp]
	lea	edi, 1[rax]
	movzx	ecx, WORD PTR -154[rbp]
	mov	rdx, QWORD PTR -296[rbp]
	mov	rsi, QWORD PTR -288[rbp]
	mov	rax, QWORD PTR -280[rbp]
	push	rdi
	push	rcx
	mov	r9d, 0
	mov	r8d, 0
	mov	ecx, 0
	mov	rdi, rax
	call	sqlite3WhereBegin@PLT
	add	rsp, 16
	mov	QWORD PTR -168[rbp], rax
	cmp	QWORD PTR -168[rbp], 0
	je	.L118
	lea	rdx, -216[rbp]
	mov	rax, QWORD PTR -168[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3WhereOkOnePass@PLT
	mov	DWORD PTR -172[rbp], eax
	cmp	DWORD PTR -172[rbp], 1
	je	.L82
	mov	rax, QWORD PTR -280[rbp]
	mov	rdi, rax
	call	sqlite3MultiWrite@PLT
.L82:
	mov	rax, QWORD PTR -168[rbp]
	mov	rdi, rax
	call	sqlite3WhereUsesDeferredSeek@PLT
	test	eax, eax
	je	.L83
	mov	edx, DWORD PTR -144[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, 143
	mov	rdi, rax
	call	sqlite3VdbeAddOp1@PLT
.L83:
	cmp	DWORD PTR -40[rbp], 0
	je	.L84
	mov	edx, DWORD PTR -40[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	ecx, 1
	mov	esi, 86
	mov	rdi, rax
	call	sqlite3VdbeAddOp2@PLT
.L84:
	cmp	QWORD PTR -56[rbp], 0
	je	.L85
	mov	DWORD PTR -20[rbp], 0
	jmp	.L86
.L87:
	mov	edx, DWORD PTR -60[rbp]
	mov	eax, DWORD PTR -20[rbp]
	lea	edi, [rdx+rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	add	rdx, rdx
	add	rax, rdx
	movzx	eax, WORD PTR [rax]
	movsx	ecx, ax
	mov	edx, DWORD PTR -144[rbp]
	mov	rsi, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	sqlite3ExprCodeGetColumnOfTable@PLT
	add	DWORD PTR -20[rbp], 1
.L86:
	movsx	eax, WORD PTR -62[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L87
	mov	eax, DWORD PTR -60[rbp]
	mov	DWORD PTR -68[rbp], eax
	jmp	.L88
.L85:
	mov	rax, QWORD PTR -280[rbp]
	mov	eax, DWORD PTR 56[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -280[rbp]
	mov	DWORD PTR 56[rax], edx
	mov	rax, QWORD PTR -280[rbp]
	mov	eax, DWORD PTR 56[rax]
	mov	DWORD PTR -68[rbp], eax
	mov	ecx, DWORD PTR -68[rbp]
	mov	edx, DWORD PTR -144[rbp]
	mov	rsi, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	r8d, ecx
	mov	ecx, -1
	mov	rdi, rax
	call	sqlite3ExprCodeGetColumnOfTable@PLT
.L88:
	cmp	DWORD PTR -172[rbp], 0
	je	.L89
	movzx	eax, WORD PTR -62[rbp]
	mov	WORD PTR -70[rbp], ax
	mov	eax, DWORD PTR -36[rbp]
	add	eax, 2
	movsx	rdx, eax
	mov	rax, QWORD PTR -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbMallocRawNN@PLT
	mov	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -48[rbp], 0
	jne	.L90
	mov	rax, QWORD PTR -168[rbp]
	mov	rdi, rax
	call	sqlite3WhereEnd@PLT
	jmp	.L49
.L90:
	mov	eax, DWORD PTR -36[rbp]
	add	eax, 1
	movsx	rdx, eax
	mov	rax, QWORD PTR -48[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	eax, DWORD PTR -216[rbp]
	test	eax, eax
	js	.L91
	mov	eax, DWORD PTR -216[rbp]
	sub	eax, DWORD PTR -144[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
.L91:
	mov	eax, DWORD PTR -212[rbp]
	test	eax, eax
	js	.L92
	mov	eax, DWORD PTR -212[rbp]
	sub	eax, DWORD PTR -144[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
.L92:
	cmp	DWORD PTR -92[rbp], 0
	je	.L93
	mov	edx, DWORD PTR -92[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3VdbeChangeToNoop@PLT
.L93:
	mov	rax, QWORD PTR -280[rbp]
	mov	rdi, rax
	call	sqlite3VdbeMakeLabel@PLT
	mov	DWORD PTR -84[rbp], eax
	jmp	.L94
.L89:
	cmp	QWORD PTR -56[rbp], 0
	je	.L95
	mov	rax, QWORD PTR -280[rbp]
	mov	eax, DWORD PTR 56[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -280[rbp]
	mov	DWORD PTR 56[rax], edx
	mov	rax, QWORD PTR -280[rbp]
	mov	eax, DWORD PTR 56[rax]
	mov	DWORD PTR -68[rbp], eax
	mov	WORD PTR -70[rbp], 0
	movsx	ebx, WORD PTR -62[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3IndexAffinityStr@PLT
	mov	rsi, rax
	movsx	ecx, WORD PTR -62[rbp]
	mov	edi, DWORD PTR -68[rbp]
	mov	edx, DWORD PTR -60[rbp]
	mov	rax, QWORD PTR -152[rbp]
	sub	rsp, 8
	push	rbx
	mov	r9, rsi
	mov	r8d, edi
	mov	esi, 97
	mov	rdi, rax
	call	sqlite3VdbeAddOp4@PLT
	add	rsp, 16
	movsx	edi, WORD PTR -62[rbp]
	mov	esi, DWORD PTR -60[rbp]
	mov	ecx, DWORD PTR -68[rbp]
	mov	edx, DWORD PTR -76[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	r9d, edi
	mov	r8d, esi
	mov	esi, 138
	mov	rdi, rax
	call	sqlite3VdbeAddOp4Int@PLT
	jmp	.L96
.L95:
	mov	WORD PTR -70[rbp], 1
	mov	ecx, DWORD PTR -68[rbp]
	mov	edx, DWORD PTR -80[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, 156
	mov	rdi, rax
	call	sqlite3VdbeAddOp2@PLT
.L96:
	mov	rax, QWORD PTR -168[rbp]
	mov	rdi, rax
	call	sqlite3WhereEnd@PLT
.L94:
	cmp	DWORD PTR -132[rbp], 0
	jne	.L97
	mov	DWORD PTR -100[rbp], 0
	cmp	DWORD PTR -172[rbp], 2
	jne	.L98
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, 15
	mov	rdi, rax
	call	sqlite3VdbeAddOp0@PLT
	mov	DWORD PTR -100[rbp], eax
.L98:
	mov	rdi, QWORD PTR -48[rbp]
	mov	ecx, DWORD PTR -144[rbp]
	mov	rsi, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -280[rbp]
	lea	rdx, -192[rbp]
	push	rdx
	lea	rdx, -188[rbp]
	push	rdx
	mov	r9, rdi
	mov	r8d, ecx
	mov	ecx, 8
	mov	edx, 113
	mov	rdi, rax
	call	sqlite3OpenTableAndIndices@PLT
	add	rsp, 16
	cmp	DWORD PTR -172[rbp], 2
	jne	.L97
	mov	edx, DWORD PTR -100[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3VdbeJumpHereOrPopInst@PLT
.L97:
	cmp	DWORD PTR -172[rbp], 0
	je	.L99
	mov	rax, QWORD PTR -120[rbp]
	movzx	eax, BYTE PTR 63[rax]
	cmp	al, 1
	je	.L100
	mov	eax, DWORD PTR -188[rbp]
	sub	eax, DWORD PTR -144[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L100
	movsx	edi, WORD PTR -70[rbp]
	mov	edx, DWORD PTR -188[rbp]
	mov	esi, DWORD PTR -68[rbp]
	mov	ecx, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	r9d, edi
	mov	r8d, esi
	mov	esi, 28
	mov	rdi, rax
	call	sqlite3VdbeAddOp4Int@PLT
	jmp	.L100
.L99:
	cmp	QWORD PTR -56[rbp], 0
	je	.L101
	mov	edx, DWORD PTR -76[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, 36
	mov	rdi, rax
	call	sqlite3VdbeAddOp1@PLT
	mov	DWORD PTR -88[rbp], eax
	mov	rax, QWORD PTR -120[rbp]
	movzx	eax, BYTE PTR 63[rax]
	cmp	al, 1
	jne	.L102
	mov	ecx, DWORD PTR -68[rbp]
	mov	edx, DWORD PTR -76[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	r8d, ecx
	mov	ecx, 0
	mov	esi, 94
	mov	rdi, rax
	call	sqlite3VdbeAddOp3@PLT
	jmp	.L100
.L102:
	mov	ecx, DWORD PTR -68[rbp]
	mov	edx, DWORD PTR -76[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, 134
	mov	rdi, rax
	call	sqlite3VdbeAddOp2@PLT
	jmp	.L100
.L101:
	mov	ecx, DWORD PTR -68[rbp]
	mov	edx, DWORD PTR -80[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	r8d, ecx
	mov	ecx, 0
	mov	esi, 46
	mov	rdi, rax
	call	sqlite3VdbeAddOp3@PLT
	mov	DWORD PTR -88[rbp], eax
.L100:
	mov	rax, QWORD PTR -120[rbp]
	movzx	eax, BYTE PTR 63[rax]
	cmp	al, 1
	jne	.L103
	mov	rdx, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3GetVTable@PLT
	mov	QWORD PTR -184[rbp], rax
	mov	rdx, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3VtabMakeWritable@PLT
	mov	rax, QWORD PTR -280[rbp]
	mov	rdi, rax
	call	sqlite3MayAbort@PLT
	cmp	DWORD PTR -172[rbp], 1
	jne	.L104
	mov	edx, DWORD PTR -144[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, 122
	mov	rdi, rax
	call	sqlite3VdbeAddOp1@PLT
	mov	rax, QWORD PTR -280[rbp]
	mov	rax, QWORD PTR 176[rax]
	test	rax, rax
	jne	.L104
	mov	rax, QWORD PTR -280[rbp]
	mov	BYTE PTR 32[rax], 0
.L104:
	mov	rcx, QWORD PTR -184[rbp]
	mov	edx, DWORD PTR -68[rbp]
	mov	rax, QWORD PTR -152[rbp]
	sub	rsp, 8
	push	-11
	mov	r9, rcx
	mov	r8d, edx
	mov	ecx, 1
	mov	edx, 0
	mov	esi, 7
	mov	rdi, rax
	call	sqlite3VdbeAddOp4@PLT
	add	rsp, 16
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, 2
	mov	rdi, rax
	call	sqlite3VdbeChangeP5@PLT
	jmp	.L105
.L103:
	mov	rax, QWORD PTR -280[rbp]
	movzx	eax, BYTE PTR 30[rax]
	test	al, al
	sete	al
	movzx	eax, al
	mov	DWORD PTR -176[rbp], eax
	mov	r10d, DWORD PTR -212[rbp]
	mov	eax, DWORD PTR -172[rbp]
	movzx	r9d, al
	mov	eax, DWORD PTR -176[rbp]
	movzx	r8d, al
	movsx	edi, WORD PTR -70[rbp]
	mov	r11d, DWORD PTR -192[rbp]
	mov	ecx, DWORD PTR -188[rbp]
	mov	ebx, DWORD PTR -68[rbp]
	mov	rdx, QWORD PTR -128[rbp]
	mov	rsi, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -280[rbp]
	sub	rsp, 8
	push	r10
	push	r9
	push	11
	push	r8
	push	rdi
	mov	r9d, ebx
	mov	r8d, r11d
	mov	rdi, rax
	call	sqlite3GenerateRowDelete
	add	rsp, 48
.L105:
	cmp	DWORD PTR -172[rbp], 0
	je	.L106
	mov	edx, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3VdbeResolveLabel@PLT
	mov	rax, QWORD PTR -168[rbp]
	mov	rdi, rax
	call	sqlite3WhereEnd@PLT
	jmp	.L75
.L106:
	cmp	QWORD PTR -56[rbp], 0
	je	.L107
	mov	eax, DWORD PTR -88[rbp]
	lea	ecx, 1[rax]
	mov	edx, DWORD PTR -76[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, 39
	mov	rdi, rax
	call	sqlite3VdbeAddOp2@PLT
	mov	edx, DWORD PTR -88[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3VdbeJumpHere@PLT
	jmp	.L75
.L107:
	mov	edx, DWORD PTR -88[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3VdbeGoto@PLT
	mov	edx, DWORD PTR -88[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3VdbeJumpHere@PLT
.L75:
	mov	rax, QWORD PTR -280[rbp]
	movzx	eax, BYTE PTR 30[rax]
	test	al, al
	jne	.L108
	mov	rax, QWORD PTR -280[rbp]
	mov	rax, QWORD PTR 184[rax]
	test	rax, rax
	jne	.L108
	mov	rax, QWORD PTR -280[rbp]
	mov	rdi, rax
	call	sqlite3AutoincrementEnd@PLT
.L108:
	cmp	DWORD PTR -40[rbp], 0
	je	.L119
	mov	ecx, DWORD PTR -40[rbp]
	mov	rax, QWORD PTR -152[rbp]
	lea	rdx, .LC3[rip]
	mov	esi, ecx
	mov	rdi, rax
	call	sqlite3CodeChangeCount
	jmp	.L49
.L111:
	nop
	jmp	.L49
.L112:
	nop
	jmp	.L49
.L113:
	nop
	jmp	.L49
.L114:
	nop
	jmp	.L49
.L115:
	nop
	jmp	.L49
.L116:
	nop
	jmp	.L49
.L117:
	nop
	jmp	.L49
.L118:
	nop
	jmp	.L49
.L119:
	nop
.L49:
	lea	rax, -208[rbp]
	mov	rdi, rax
	call	sqlite3AuthContextPop@PLT
	mov	rdx, QWORD PTR -288[rbp]
	mov	rax, QWORD PTR -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3SrcListDelete@PLT
	mov	rdx, QWORD PTR -296[rbp]
	mov	rax, QWORD PTR -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3ExprDelete@PLT
	cmp	QWORD PTR -48[rbp], 0
	je	.L120
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbNNFreeNN@PLT
	nop
.L120:
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	sqlite3DeleteFrom, .-sqlite3DeleteFrom
	.section	.rodata
.LC4:
	.string	"sqlite_stat1"
	.text
	.globl	sqlite3GenerateRowDelete
	.type	sqlite3GenerateRowDelete, @function
sqlite3GenerateRowDelete:
.LFB13:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 112
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	DWORD PTR -76[rbp], ecx
	mov	DWORD PTR -80[rbp], r8d
	mov	DWORD PTR -84[rbp], r9d
	mov	esi, DWORD PTR 16[rbp]
	mov	ecx, DWORD PTR 24[rbp]
	mov	edx, DWORD PTR 32[rbp]
	mov	eax, DWORD PTR 40[rbp]
	mov	WORD PTR -88[rbp], si
	mov	BYTE PTR -92[rbp], cl
	mov	BYTE PTR -96[rbp], dl
	mov	BYTE PTR -100[rbp], al
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	sqlite3VdbeMakeLabel@PLT
	mov	DWORD PTR -28[rbp], eax
	mov	rax, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR 48[rax]
	and	eax, 128
	test	eax, eax
	jne	.L122
	mov	eax, 31
	jmp	.L123
.L122:
	mov	eax, 28
.L123:
	mov	BYTE PTR -29[rbp], al
	cmp	BYTE PTR -100[rbp], 0
	jne	.L124
	movsx	r8d, WORD PTR -88[rbp]
	movzx	esi, BYTE PTR -29[rbp]
	mov	edi, DWORD PTR -84[rbp]
	mov	ecx, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -76[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r9d, r8d
	mov	r8d, edi
	mov	rdi, rax
	call	sqlite3VdbeAddOp4Int@PLT
.L124:
	mov	rsi, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	ecx, 0
	mov	edx, 0
	mov	rdi, rax
	call	sqlite3FkRequired@PLT
	test	eax, eax
	jne	.L125
	cmp	QWORD PTR -72[rbp], 0
	je	.L126
.L125:
	movzx	edx, BYTE PTR -96[rbp]
	mov	rcx, QWORD PTR -64[rbp]
	mov	rsi, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -56[rbp]
	sub	rsp, 8
	push	rdx
	mov	r9, rcx
	mov	r8d, 3
	mov	ecx, 0
	mov	edx, 0
	mov	rdi, rax
	call	sqlite3TriggerColmask@PLT
	add	rsp, 16
	mov	DWORD PTR -36[rbp], eax
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3FkOldmask@PLT
	or	DWORD PTR -36[rbp], eax
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR 56[rax]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR 56[rax]
	mov	rax, QWORD PTR -64[rbp]
	movzx	eax, WORD PTR 54[rax]
	cwde
	add	eax, 1
	add	edx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	DWORD PTR 56[rax], edx
	mov	ecx, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 80
	mov	rdi, rax
	call	sqlite3VdbeAddOp2@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L127
.L130:
	cmp	DWORD PTR -36[rbp], -1
	je	.L128
	cmp	DWORD PTR -8[rbp], 31
	jg	.L129
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, 1
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	and	eax, DWORD PTR -36[rbp]
	test	eax, eax
	je	.L129
.L128:
	mov	eax, DWORD PTR -8[rbp]
	movsx	edx, ax
	mov	rax, QWORD PTR -64[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3TableColumnToStorage@PLT
	cwde
	mov	DWORD PTR -44[rbp], eax
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -44[rbp]
	add	eax, edx
	lea	edi, 1[rax]
	mov	ecx, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -76[rbp]
	mov	rsi, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	sqlite3ExprCodeGetColumnOfTable@PLT
.L129:
	add	DWORD PTR -8[rbp], 1
.L127:
	mov	rax, QWORD PTR -64[rbp]
	movzx	eax, WORD PTR 54[rax]
	cwde
	cmp	DWORD PTR -8[rbp], eax
	jl	.L130
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3VdbeCurrentAddr@PLT
	mov	DWORD PTR -40[rbp], eax
	movzx	edx, BYTE PTR -96[rbp]
	mov	rdi, QWORD PTR -64[rbp]
	mov	rsi, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -56[rbp]
	sub	rsp, 8
	mov	ecx, DWORD PTR -28[rbp]
	push	rcx
	push	rdx
	mov	edx, DWORD PTR -4[rbp]
	push	rdx
	mov	r9, rdi
	mov	r8d, 1
	mov	ecx, 0
	mov	edx, 128
	mov	rdi, rax
	call	sqlite3CodeRowTrigger@PLT
	add	rsp, 32
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3VdbeCurrentAddr@PLT
	cmp	DWORD PTR -40[rbp], eax
	jge	.L131
	movsx	r8d, WORD PTR -88[rbp]
	movzx	esi, BYTE PTR -29[rbp]
	mov	edi, DWORD PTR -84[rbp]
	mov	ecx, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -76[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r9d, r8d
	mov	r8d, edi
	mov	rdi, rax
	call	sqlite3VdbeAddOp4Int@PLT
	mov	DWORD PTR 48[rbp], -1
.L131:
	mov	edx, DWORD PTR -4[rbp]
	mov	rsi, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r9d, 0
	mov	r8d, 0
	mov	ecx, 0
	mov	rdi, rax
	call	sqlite3FkCheck@PLT
.L126:
	mov	rax, QWORD PTR -64[rbp]
	movzx	eax, BYTE PTR 63[rax]
	cmp	al, 2
	je	.L132
	mov	BYTE PTR -9[rbp], 0
	mov	edi, DWORD PTR 48[rbp]
	mov	ecx, DWORD PTR -80[rbp]
	mov	edx, DWORD PTR -76[rbp]
	mov	rsi, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r9d, edi
	mov	r8d, 0
	mov	rdi, rax
	call	sqlite3GenerateRowIndexDelete
	cmp	BYTE PTR -92[rbp], 0
	setne	al
	movzx	ecx, al
	mov	edx, DWORD PTR -76[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 130
	mov	rdi, rax
	call	sqlite3VdbeAddOp2@PLT
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR 30[rax]
	test	al, al
	je	.L133
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC4[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3_stricmp@PLT
	test	eax, eax
	jne	.L134
.L133:
	mov	rcx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, -5
	mov	rsi, rcx
	mov	rdi, rax
	call	sqlite3VdbeAppendP4@PLT
.L134:
	cmp	BYTE PTR -100[rbp], 0
	je	.L135
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 4
	mov	rdi, rax
	call	sqlite3VdbeChangeP5@PLT
.L135:
	cmp	DWORD PTR 48[rbp], 0
	js	.L136
	mov	eax, DWORD PTR 48[rbp]
	cmp	eax, DWORD PTR -76[rbp]
	je	.L136
	mov	edx, DWORD PTR 48[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 130
	mov	rdi, rax
	call	sqlite3VdbeAddOp1@PLT
.L136:
	cmp	BYTE PTR -100[rbp], 2
	jne	.L137
	or	BYTE PTR -9[rbp], 2
.L137:
	movzx	edx, BYTE PTR -9[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3VdbeChangeP5@PLT
.L132:
	mov	edx, DWORD PTR -4[rbp]
	mov	rsi, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r9d, 0
	mov	r8d, 0
	mov	ecx, edx
	mov	edx, 0
	mov	rdi, rax
	call	sqlite3FkActions@PLT
	cmp	QWORD PTR -72[rbp], 0
	je	.L138
	movzx	edx, BYTE PTR -96[rbp]
	mov	rdi, QWORD PTR -64[rbp]
	mov	rsi, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -56[rbp]
	sub	rsp, 8
	mov	ecx, DWORD PTR -28[rbp]
	push	rcx
	push	rdx
	mov	edx, DWORD PTR -4[rbp]
	push	rdx
	mov	r9, rdi
	mov	r8d, 2
	mov	ecx, 0
	mov	edx, 128
	mov	rdi, rax
	call	sqlite3CodeRowTrigger@PLT
	add	rsp, 32
.L138:
	mov	edx, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3VdbeResolveLabel@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	sqlite3GenerateRowDelete, .-sqlite3GenerateRowDelete
	.globl	sqlite3GenerateRowIndexDelete
	.type	sqlite3GenerateRowIndexDelete, @function
sqlite3GenerateRowIndexDelete:
.LFB14:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 96
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	DWORD PTR -68[rbp], edx
	mov	DWORD PTR -72[rbp], ecx
	mov	QWORD PTR -80[rbp], r8
	mov	DWORD PTR -84[rbp], r9d
	mov	DWORD PTR -8[rbp], -1
	mov	QWORD PTR -24[rbp], 0
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR 48[rax]
	and	eax, 128
	test	eax, eax
	je	.L140
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	sqlite3PrimaryKeyIndex@PLT
	jmp	.L141
.L140:
	mov	eax, 0
.L141:
	mov	QWORD PTR -40[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L142
.L149:
	cmp	QWORD PTR -80[rbp], 0
	je	.L143
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -80[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L150
.L143:
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	je	.L151
	mov	edx, DWORD PTR -72[rbp]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	cmp	DWORD PTR -84[rbp], eax
	je	.L152
	lea	rdi, -44[rbp]
	mov	edx, DWORD PTR -68[rbp]
	mov	rsi, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	ecx, DWORD PTR -8[rbp]
	push	rcx
	push	QWORD PTR -24[rbp]
	mov	r9, rdi
	mov	r8d, 1
	mov	ecx, 0
	mov	rdi, rax
	call	sqlite3GenerateIndexKey
	add	rsp, 16
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 99[rax]
	and	eax, 8
	test	al, al
	je	.L147
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, WORD PTR 94[rax]
	movzx	eax, ax
	jmp	.L148
.L147:
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, WORD PTR 96[rax]
	movzx	eax, ax
.L148:
	mov	ecx, DWORD PTR -72[rbp]
	mov	edx, DWORD PTR -4[rbp]
	lea	esi, [rcx+rdx]
	mov	edx, DWORD PTR -8[rbp]
	mov	rdi, QWORD PTR -32[rbp]
	mov	r8d, eax
	mov	ecx, edx
	mov	edx, esi
	mov	esi, 140
	call	sqlite3VdbeAddOp3@PLT
	mov	rax, QWORD PTR -32[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	sqlite3VdbeChangeP5@PLT
	mov	edx, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3ResolvePartIdxLabel
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L144
.L150:
	nop
	jmp	.L144
.L151:
	nop
	jmp	.L144
.L152:
	nop
.L144:
	add	DWORD PTR -4[rbp], 1
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	QWORD PTR -16[rbp], rax
.L142:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L149
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	sqlite3GenerateRowIndexDelete, .-sqlite3GenerateRowIndexDelete
	.globl	sqlite3GenerateIndexKey
	.type	sqlite3GenerateIndexKey, @function
sqlite3GenerateIndexKey:
.LFB15:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	DWORD PTR -52[rbp], edx
	mov	DWORD PTR -56[rbp], ecx
	mov	DWORD PTR -60[rbp], r8d
	mov	QWORD PTR -72[rbp], r9
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -72[rbp], 0
	je	.L154
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR 72[rax]
	test	rax, rax
	je	.L155
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3VdbeMakeLabel@PLT
	mov	rdx, QWORD PTR -72[rbp]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -52[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	DWORD PTR 64[rax], edx
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, QWORD PTR 72[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	ecx, 16
	mov	rdi, rax
	call	sqlite3ExprIfFalseDup@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	DWORD PTR 64[rax], 0
	mov	QWORD PTR 16[rbp], 0
	jmp	.L154
.L155:
	mov	rax, QWORD PTR -72[rbp]
	mov	DWORD PTR [rax], 0
.L154:
	cmp	DWORD PTR -60[rbp], 0
	je	.L156
	mov	rax, QWORD PTR -48[rbp]
	movzx	eax, BYTE PTR 99[rax]
	and	eax, 8
	test	al, al
	je	.L156
	mov	rax, QWORD PTR -48[rbp]
	movzx	eax, WORD PTR 94[rax]
	movzx	eax, ax
	jmp	.L157
.L156:
	mov	rax, QWORD PTR -48[rbp]
	movzx	eax, WORD PTR 96[rax]
	movzx	eax, ax
.L157:
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -20[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3GetTempRange@PLT
	mov	DWORD PTR -24[rbp], eax
	cmp	QWORD PTR 16[rbp], 0
	je	.L158
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR 24[rbp]
	jne	.L159
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 72[rax]
	test	rax, rax
	je	.L158
.L159:
	mov	QWORD PTR 16[rbp], 0
.L158:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L160
.L163:
	cmp	QWORD PTR 16[rbp], 0
	je	.L161
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	add	rdx, rdx
	add	rax, rdx
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	ecx, DWORD PTR -4[rbp]
	movsx	rcx, ecx
	add	rcx, rcx
	add	rax, rcx
	movzx	eax, WORD PTR [rax]
	cmp	dx, ax
	jne	.L161
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	add	rdx, rdx
	add	rax, rdx
	movzx	eax, WORD PTR [rax]
	cmp	ax, -2
	jne	.L166
.L161:
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -4[rbp]
	lea	edi, [rdx+rax]
	mov	ecx, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -52[rbp]
	mov	rsi, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	sqlite3ExprCodeLoadIndexColumn@PLT
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	add	rdx, rdx
	add	rax, rdx
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	js	.L162
	mov	rax, QWORD PTR -16[rbp]
	mov	esi, 87
	mov	rdi, rax
	call	sqlite3VdbeDeletePriorOpcode@PLT
	jmp	.L162
.L166:
	nop
.L162:
	add	DWORD PTR -4[rbp], 1
.L160:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L163
	cmp	DWORD PTR -56[rbp], 0
	je	.L164
	mov	esi, DWORD PTR -56[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -24[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	r8d, esi
	mov	esi, 97
	mov	rdi, rax
	call	sqlite3VdbeAddOp3@PLT
.L164:
	mov	edx, DWORD PTR -20[rbp]
	mov	ecx, DWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	sqlite3ReleaseTempRange@PLT
	mov	eax, DWORD PTR -24[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	sqlite3GenerateIndexKey, .-sqlite3GenerateIndexKey
	.globl	sqlite3ResolvePartIdxLabel
	.type	sqlite3ResolvePartIdxLabel, @function
sqlite3ResolvePartIdxLabel:
.LFB16:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	cmp	DWORD PTR -12[rbp], 0
	je	.L169
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	sqlite3VdbeResolveLabel@PLT
.L169:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	sqlite3ResolvePartIdxLabel, .-sqlite3ResolvePartIdxLabel
	.ident	"GCC: (Debian 13.2.0-6) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
