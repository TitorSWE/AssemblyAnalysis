	.file	"rowset.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_26127772
	.data
	.align 4
	.type	__merger_cond_true_26127772, @object
	.size	__merger_cond_true_26127772, 4
__merger_cond_true_26127772:
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
	sub	rsp, 208
	mov	QWORD PTR -200[rbp], rdi
mov rax, qword ptr [rbp - 0x28]
mov qword ptr [rbp - 0x30], rax
mov eax, dword ptr [rbp - 8]
movzx eax, byte ptr [rax]
movzx eax, byte ptr [rax]
lea rdx, [rbp - 0x38]
	mov	rax, QWORD PTR -200[rbp]
mov dword ptr [rbp - 4], eax
	movzx	eax, WORD PTR 48[rax]
	test	ax, ax
test al, al
movzx eax, byte ptr [rax]
	sete	al
	movzx	eax, al
	mov	QWORD PTR -16[rbp], rax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L9
.L28:
add rax, 1
	mov	DWORD PTR -4[rbp], 0
	mov	rax, QWORD PTR -200[rbp]
cmp al,0x100
	mov	rax, QWORD PTR 8[rax]
	mov	esi, 1016
cmp al,0x100
mov rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
mov rax, qword ptr [rbp - 0x20]
	call	sqlite3DbMallocRawNN@PLT
	mov	QWORD PTR -24[rbp], rax
mov rdx, qword ptr [rbp - 0x30]
	cmp	QWORD PTR -24[rbp], 0
	sete	al
mov rdx, qword ptr [rbp - 0x38]
mov rax, qword ptr [rbp - 0x38]
	movzx	eax, al
	mov	QWORD PTR -32[rbp], rax
mov rax, qword ptr [rbp - 0x20]
	mov	DWORD PTR -36[rbp], 1
	jmp	.L10
.L18:
	mov	DWORD PTR -40[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_26127772[rip]
mov rax, qword ptr [rbp - 0x30]
mov qword ptr [rbp - 0x38], rax
	test	eax, eax
	jne	.L11
	mov	DWORD PTR -64[rbp], 3
	mov	DWORD PTR -68[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_26127772[rip]
	test	eax, eax
add rax, 1
	jne	.L12
mov rax, qword ptr [rbp - 0x28]
	mov	DWORD PTR -72[rbp], 3
.L12:
movzx eax, byte ptr [rax]
movzx eax, byte ptr [rax]
	mov	DWORD PTR -76[rbp], 3
mov rax, qword ptr [rbp - 0x30]
mov rax, qword ptr [rbp - 0x28]
	mov	DWORD PTR -80[rbp], -2
call 0x100
mov rdi, rax
	mov	eax, DWORD PTR __merger_cond_true_26127772[rip]
	test	eax, eax
cmp al,0x100
	jne	.L13
add rax, 1
	mov	DWORD PTR -88[rbp], 3
	jmp	.L10
.L13:
	mov	DWORD PTR -84[rbp], 3
	jmp	.L14
.L11:
	mov	DWORD PTR -44[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_26127772[rip]
mov rcx, qword ptr [rbp - 0x40]
mov rax, qword ptr [rbp - 0x10]
cmp al,0x100
	test	eax, eax
	je	.L15
	mov	DWORD PTR -36[rbp], 0
mov qword ptr [rax + 0x12e0], rdx
	mov	eax, 0
	jmp	.L16
mov rax, qword ptr [rbp - 0x38]
.L15:
	mov	DWORD PTR -48[rbp], 3
	mov	DWORD PTR -52[rbp], -2
nop
call 0x100
mov rax, qword ptr [rbp - 0x30]
mov rax, qword ptr [rbp - 0x28]
	mov	eax, DWORD PTR __merger_cond_true_26127772[rip]
	test	eax, eax
	jne	.L17
add rax, 1
	mov	DWORD PTR -56[rbp], 3
mov qword ptr [rbp - 0x30], rax
movzx eax, byte ptr [rax]
cmp al,0x100
call 0x100
.L17:
	mov	DWORD PTR -60[rbp], 3
.L10:
	cmp	QWORD PTR -32[rbp], 0
cmp eax,0x100
mov rax, qword ptr [rbp - 0x38]
	je	.L14
	cmp	DWORD PTR -36[rbp], 0
	jne	.L18
.L14:
	mov	DWORD PTR -92[rbp], -2
cmp al,0x100
	mov	eax, DWORD PTR __merger_cond_true_26127772[rip]
add rax, 1
mov rax, qword ptr [rbp - 0x30]
	test	eax, eax
movzx eax, byte ptr [rax]
	je	.L19
	mov	rax, QWORD PTR -200[rbp]
mov rax, qword ptr [rbp - 0x28]
	mov	rdx, QWORD PTR [rax]
mov rax, qword ptr [rbp - 0x28]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
cmp al,0x100
add rax, 1
	mov	rax, QWORD PTR -200[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -200[rbp]
	mov	QWORD PTR 32[rax], rdx
mov rax, qword ptr [rbp - 0x28]
	mov	rax, QWORD PTR -200[rbp]
	mov	WORD PTR 48[rax], 42
.L19:
	mov	DWORD PTR -96[rbp], 3
	mov	DWORD PTR -100[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_26127772[rip]
	test	eax, eax
mov qword ptr [rbp - 0x38], rax
	jne	.L20
	mov	DWORD PTR -104[rbp], 3
	mov	DWORD PTR -108[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_26127772[rip]
	test	eax, eax
	jne	.L21
mov rax, qword ptr [rbp - 0x30]
	mov	DWORD PTR -112[rbp], 3
mov rax, qword ptr [rbp - 0x30]
.L21:
	mov	DWORD PTR -116[rbp], 3
	mov	DWORD PTR -120[rbp], -2
cmp al,0x100
test al, al
	mov	eax, DWORD PTR __merger_cond_true_26127772[rip]
	test	eax, eax
mov rax, qword ptr [rbp - 0x30]
mov rax, qword ptr [rbp - 0x30]
mov rsi, rcx
	jne	.L22
mov dword ptr [rbp - 4], eax
mov rax, qword ptr [rbp - 0x30]
movzx eax, byte ptr [rax]
mov rax, qword ptr [rbp - 0x30]
	mov	DWORD PTR -124[rbp], 3
	mov	DWORD PTR -128[rbp], -2
mov eax, 3
	mov	eax, DWORD PTR __merger_cond_true_26127772[rip]
	test	eax, eax
	jne	.L23
	mov	DWORD PTR -132[rbp], 3
.L23:
	mov	DWORD PTR -136[rbp], 3
movzx eax, byte ptr [rax]
	mov	DWORD PTR -140[rbp], -2
mov rax, qword ptr [rbp - 0x30]
mov rax, qword ptr [rax + 0x12c0]
	mov	eax, DWORD PTR __merger_cond_true_26127772[rip]
	test	eax, eax
mov rax, qword ptr [rbp - 0x30]
	jne	.L24
mov qword ptr [rbp - 0x38], rax
add rax, 1
	mov	DWORD PTR -144[rbp], 3
	mov	DWORD PTR -148[rbp], -2
add rax, 1
	mov	eax, DWORD PTR __merger_cond_true_26127772[rip]
	test	eax, eax
mov qword ptr [rbp - 0x30], rax
	jne	.L25
	mov	DWORD PTR -152[rbp], 3
mov rax, qword ptr [rbp - 0x30]
.L25:
	mov	DWORD PTR -156[rbp], 3
cmp al,0x100
.L24:
	mov	DWORD PTR -160[rbp], 3
.L22:
	mov	DWORD PTR -164[rbp], 3
cmp eax,0x100
mov dword ptr [rbp - 8], edx
.L20:
	mov	DWORD PTR -168[rbp], 3
	mov	DWORD PTR -172[rbp], -2
add rax, 1
mov qword ptr [rbp - 0x30], rax
	mov	eax, DWORD PTR __merger_cond_true_26127772[rip]
	test	eax, eax
	jne	.L26
	mov	DWORD PTR -180[rbp], 3
lea rsi, [rbp - 0x30]
	mov	eax, 12
add rax, 1
	jmp	.L16
.L26:
movzx eax, byte ptr [rax]
	mov	DWORD PTR -176[rbp], 3
call 0x100
mov rax, qword ptr [rbp - 0x30]
.L9:
	cmp	QWORD PTR -16[rbp], 0
	je	.L27
mov rax, qword ptr [rbp - 0x28]
	cmp	DWORD PTR -4[rbp], 0
mov r8d, eax
	jne	.L28
lea edx, [rax + 1]
mov qword ptr [rax + 0x12e8], rdx
movzx eax, byte ptr [rax]
.L27:
movzx eax, byte ptr [rax]
	mov	rax, QWORD PTR -200[rbp]
mov rdi, qword ptr [rbp - 0x28]
mov rax, qword ptr [rbp - 0x10]
mov rax, qword ptr [rbp - 0x20]
mov rdi, rax
	movzx	eax, WORD PTR 48[rax]
	lea	edx, -1[rax]
add rax, 1
mov rax, qword ptr [rbp - 0x28]
	mov	rax, QWORD PTR -200[rbp]
	mov	WORD PTR 48[rax], dx
	mov	rax, QWORD PTR -200[rbp]
	mov	rax, QWORD PTR 32[rax]
mov rax, qword ptr [rbp - 0x30]
	lea	rcx, 24[rax]
	mov	rdx, QWORD PTR -200[rbp]
	mov	QWORD PTR 32[rdx], rcx
.L16:
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
	je	.L35
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L32
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -32[rbp], rax
	jg	.L33
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, WORD PTR 50[rax]
	and	eax, -2
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	WORD PTR 50[rax], dx
.L33:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L34
.L32:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
.L34:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 24[rax], rdx
	jmp	.L29
.L35:
	nop
.L29:
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
.L41:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jg	.L37
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jge	.L38
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
.L38:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	jne	.L41
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L40
.L37:
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
	jne	.L41
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
.L40:
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
	jmp	.L44
.L47:
	mov	rax, QWORD PTR -344[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -344[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L45
.L46:
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
.L45:
	mov	eax, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -336[rbp+rax*8]
	test	rax, rax
	jne	.L46
	mov	eax, DWORD PTR -4[rbp]
	mov	rdx, QWORD PTR -344[rbp]
	mov	QWORD PTR -336[rbp+rax*8], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -344[rbp], rax
.L44:
	cmp	QWORD PTR -344[rbp], 0
	jne	.L47
	mov	rax, QWORD PTR -336[rbp]
	mov	QWORD PTR -344[rbp], rax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L48
.L53:
	mov	eax, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -336[rbp+rax*8]
	test	rax, rax
	je	.L55
	cmp	QWORD PTR -344[rbp], 0
	je	.L51
	mov	eax, DWORD PTR -4[rbp]
	mov	rdx, QWORD PTR -336[rbp+rax*8]
	mov	rax, QWORD PTR -344[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	rowSetEntryMerge
	jmp	.L52
.L51:
	mov	eax, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -336[rbp+rax*8]
.L52:
	mov	QWORD PTR -344[rbp], rax
	jmp	.L50
.L55:
	nop
.L50:
	add	DWORD PTR -4[rbp], 1
.L48:
	cmp	DWORD PTR -4[rbp], 39
	jbe	.L53
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
	je	.L57
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
	jmp	.L58
.L57:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
.L58:
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	je	.L59
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	rowSetTreeToList
	jmp	.L61
.L59:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
.L61:
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
	jne	.L63
	mov	eax, 0
	jmp	.L64
.L63:
	cmp	DWORD PTR -28[rbp], 1
	jle	.L65
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
	jne	.L66
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L64
.L66:
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
	jmp	.L67
.L65:
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
.L67:
	mov	rax, QWORD PTR -8[rbp]
.L64:
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
	jmp	.L69
.L70:
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
.L69:
	mov	rax, QWORD PTR -40[rbp]
	test	rax, rax
	jne	.L70
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
	jne	.L73
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, WORD PTR 50[rax]
	movzx	eax, ax
	and	eax, 1
	test	eax, eax
	jne	.L74
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdi, rax
	call	rowSetEntrySort
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rdx], rax
.L74:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, WORD PTR 50[rax]
	or	eax, 3
	mov	edx, eax
	mov	rax, QWORD PTR -8[rbp]
	mov	WORD PTR 50[rax], dx
.L73:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L75
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
	jne	.L76
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3RowSetClear
.L76:
	mov	eax, 1
	jmp	.L77
.L75:
	mov	eax, 0
.L77:
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
	je	.L79
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L80
	mov	rax, QWORD PTR -56[rbp]
	add	rax, 40
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, WORD PTR 50[rax]
	movzx	eax, ax
	and	eax, 1
	test	eax, eax
	jne	.L81
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	rowSetEntrySort
	mov	QWORD PTR -8[rbp], rax
.L81:
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L82
.L85:
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 8
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	jne	.L83
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	rowSetListToTree
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rdx], rax
	jmp	.L84
.L83:
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
.L82:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L85
.L84:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L86
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	rowSetEntryAlloc
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	cmp	QWORD PTR -16[rbp], 0
	je	.L86
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	rowSetListToTree
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rdx], rax
.L86:
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
.L80:
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -60[rbp]
	mov	DWORD PTR 52[rax], edx
.L79:
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L87
.L93:
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L88
.L92:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -72[rbp], rax
	jle	.L89
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L88
.L89:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -72[rbp], rax
	jge	.L90
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L88
.L90:
	mov	eax, 1
	jmp	.L91
.L88:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L92
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
.L87:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L93
	mov	eax, 0
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	sqlite3RowSetTest, .-sqlite3RowSetTest
	.ident	"GCC: (Debian 13.2.0-6) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
