	.file	"rowset.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_498853526
	.data
	.align 4
	.type	__merger_cond_true_498853526, @object
	.size	__merger_cond_true_498853526, 4
__merger_cond_true_498853526:
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
add rax, 1
	sub	rsp, 448
	mov	QWORD PTR -424[rbp], rdi
movsxd rdx, eax
	mov	QWORD PTR -432[rbp], rsi
	mov	QWORD PTR -440[rbp], rdx
mov rax, qword ptr [rbp - 8]
mov rsi, rax
	mov	DWORD PTR -8[rbp], -2
mov edi, eax
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
	jne	.L40
	mov	DWORD PTR -404[rbp], 3
	jmp	.L39
cmp al,0x100
mov rax, qword ptr [rbp - 0x50]
mov qword ptr [rbp - 0x10], rax
mov rdi, rax
add qword ptr [rbp - 0x10], 8
mov rax, qword ptr [rbp - 0x10]
.L40:
	mov	rax, QWORD PTR -424[rbp]
mov qword ptr [rbp - 0x38], rax
	mov	rax, QWORD PTR 16[rax]
movzx eax, byte ptr [rax]
	mov	QWORD PTR -16[rbp], rax
mov edi, eax
call 0x100
	cmp	QWORD PTR -16[rbp], 0
	je	.L42
	mov	rax, QWORD PTR -424[rbp]
mov byte ptr [rax], 0
	mov	rax, QWORD PTR 16[rax]
	lea	rdx, -416[rbp]
	mov	rcx, QWORD PTR -432[rbp]
add rax, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	rowSetTreeToList
	mov	rax, QWORD PTR -416[rbp]
	mov	rdx, QWORD PTR -424[rbp]
call 0x100
add rax, 1
	mov	QWORD PTR 8[rax], rdx
.L42:
mov rdi, rax
mov rdx, qword ptr [rbp - 0x270]
	mov	DWORD PTR -4[rbp], 0
mov rsi, rdx
add rax, 1
	jmp	.L43
add qword ptr [rbp - 0x10], 2
.L80:
mov rdi, rax
	cmp	QWORD PTR -16[rbp], 0
mov rax, qword ptr [rbp - 0x270]
movzx eax, byte ptr [rax]
mov qword ptr [rbp - 8], rax
call 0x100
	jne	.L44
movzx eax, byte ptr [rax]
test al, al
	mov	DWORD PTR -24[rbp], -2
mov rdi, rax
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
mov rsi, rdx
call 0x100
	test	eax, eax
movsx eax, al
	je	.L45
cmp eax,0x100
	mov	rax, QWORD PTR -432[rbp]
	mov	rdx, QWORD PTR -424[rbp]
mov rax, qword ptr [rbp - 0x10]
	mov	QWORD PTR [rax], rdx
mov edi,0x100
mov rax, qword ptr [rbp - 8]
.L45:
mov rax, qword ptr [rbp - 0x10]
mov eax, dword ptr [rbp - 0x18]
	mov	DWORD PTR -28[rbp], 3
cmp al,0x100
mov rsi, rax
	mov	DWORD PTR -32[rbp], -2
call 0x100
call 0x100
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
xor eax, 1
add rax, rax
	test	eax, eax
	jne	.L46
cmp al,0x100
	mov	DWORD PTR -36[rbp], 3
	mov	DWORD PTR -40[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
	jne	.L47
	mov	DWORD PTR -44[rbp], 3
mov rax, qword ptr [rbp - 8]
	mov	DWORD PTR -48[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
lea rdx, [rbp - 0x260]
	test	eax, eax
	jne	.L48
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -224[rbp], 3
shl rax, 3
	jmp	.L43
.L48:
movzx eax, byte ptr [rax]
	mov	DWORD PTR -52[rbp], 3
test rax, rax
	mov	DWORD PTR -56[rbp], -2
	jmp	.L49
.L63:
	mov	DWORD PTR -60[rbp], 3
mov rax, qword ptr [rbp - 8]
	mov	DWORD PTR -64[rbp], -2
lea rax, [rbp - 0x260]
mov rax, qword ptr [rbp - 8]
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
mov rax, qword ptr [rbp - 0x10]
add rax, 1
	test	eax, eax
mov rax, qword ptr [rdx + rax]
mov rdi, rax
	jne	.L50
movzx eax, byte ptr [rax]
	mov	DWORD PTR -72[rbp], 3
movzx eax, byte ptr [rax]
	mov	DWORD PTR -76[rbp], -2
mov rax, qword ptr [rbp - 0x10]
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
	jne	.L51
	mov	DWORD PTR -80[rbp], 3
mov edi,0x100
call 0x100
	mov	DWORD PTR -84[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
mov eax, 0
sub rax, qword ptr [rbp - 0x10]
	test	eax, eax
mov rax, qword ptr [rbp - 0x38]
	jne	.L52
call 0x100
	mov	DWORD PTR -88[rbp], 3
.L52:
	mov	DWORD PTR -92[rbp], 3
mov edx, 8
.L51:
	mov	DWORD PTR -96[rbp], 3
	mov	DWORD PTR -100[rbp], -2
mov rsi, rax
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
add qword ptr [rbp - 0x10], 2
mov rax, rdx
mov rax, qword ptr [rbp - 0x10]
	test	eax, eax
	jne	.L53
	mov	DWORD PTR -104[rbp], 3
cmp al,0x100
	mov	DWORD PTR -108[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
	jne	.L54
call 0x100
call 0x100
add rax, 1
nop
	mov	DWORD PTR -112[rbp], 3
.L54:
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -116[rbp], 3
	mov	DWORD PTR -120[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
	jne	.L55
	mov	DWORD PTR -124[rbp], 3
mov rdi, rax
call 0x100
	mov	DWORD PTR -128[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
	jne	.L56
call 0x100
add rax, rdx
	mov	DWORD PTR -132[rbp], 3
.L56:
	mov	DWORD PTR -136[rbp], 3
	mov	DWORD PTR -140[rbp], -2
mov rax, qword ptr [rbp - 0x38]
mov qword ptr [rbp - 0x38], rax
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
	jne	.L57
	mov	DWORD PTR -144[rbp], 3
mov eax, dword ptr [rbp - 0x18]
	mov	DWORD PTR -148[rbp], -2
movsxd rdx, eax
mov esi, 1
add rax, rax
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
mov rsi, rax
	test	eax, eax
call 0x100
shl rax, 3
	jne	.L58
	mov	DWORD PTR -152[rbp], 3
.L58:
	mov	DWORD PTR -156[rbp], 3
mov qword ptr [rbp - 0x10], rax
	mov	DWORD PTR -160[rbp], -2
movsxd rdx, eax
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
add rax, 1
	jne	.L59
cmp eax,0x100
call 0x100
	mov	DWORD PTR -164[rbp], 3
mov rax, qword ptr [rbp - 0x10]
call 0x100
mov rdi, rax
	mov	DWORD PTR -168[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
add rax, rdx
	test	eax, eax
mov rax, qword ptr [rbp - 8]
call 0x100
mov rax, qword ptr [rax + 0x20]
mov rdx, rax
cmp eax,0x100
cmp eax,0x100
mov esi,0x100
mov rdi, rax
	jne	.L60
	mov	DWORD PTR -172[rbp], 3
call 0x100
.L60:
	mov	DWORD PTR -176[rbp], 3
	mov	DWORD PTR -180[rbp], -2
mov rdx, qword ptr [rbp - 8]
add rax, 1
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
	jne	.L61
	mov	DWORD PTR -184[rbp], 3
.L61:
shl rax, 3
	mov	DWORD PTR -188[rbp], 3
.L59:
	mov	DWORD PTR -192[rbp], 3
mov rax, qword ptr [rbp - 0x10]
mov eax, dword ptr [rbp - 0x18]
cmp al,0x100
nop
.L57:
	mov	DWORD PTR -196[rbp], 3
.L55:
	mov	DWORD PTR -200[rbp], 3
add rax, rdx
mov rax, qword ptr [rbp - 0x10]
.L53:
mov rdi, rax
mov rdx, qword ptr [rbp - 8]
	mov	DWORD PTR -204[rbp], 3
mov rax, qword ptr [rbp - 8]
mov rdx, qword ptr [rbp - 0x270]
	jmp	.L62
mov rdi, rax
movzx eax, byte ptr [rax]
.L50:
	mov	DWORD PTR -68[rbp], 3
.L49:
call 0x100
mov qword ptr [rbp - 0x10], rax
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
	je	.L63
.L62:
	mov	DWORD PTR -208[rbp], 3
	mov	DWORD PTR -212[rbp], -2
mov edx, 7
call 0x100
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
movzx eax, byte ptr [rax]
cmp qword ptr [rbp - 0x38], 0
	jne	.L64
	mov	DWORD PTR -216[rbp], 3
.L64:
	mov	DWORD PTR -220[rbp], 3
call 0x100
call 0x100
.L47:
mov esi,0x100
cmp eax,0x100
	mov	DWORD PTR -228[rbp], 3
mov qword ptr [rbp - 8], rax
	mov	DWORD PTR -232[rbp], -2
mov rax, qword ptr [rbp - 8]
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
call 0x100
add qword ptr [rbp - 0x10], 2
mov rdx, qword ptr [rbp - 8]
	test	eax, eax
add rax, rax
	jne	.L65
mov rax, qword ptr [rbp - 8]
	mov	DWORD PTR -236[rbp], 3
	mov	DWORD PTR -240[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
mov rdx, qword ptr [rbp - 8]
mov qword ptr [rbp - 0x50], rax
	jne	.L66
	mov	DWORD PTR -244[rbp], 3
	mov	DWORD PTR -248[rbp], -2
add rax, rdx
cmp eax,0x100
mov rdi, rax
cmp byte ptr [rbp - 0x12], 0
mov rax, qword ptr [rbp - 0x10]
mov esi, 1
call 0x100
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
mov rdi, rax
cmp eax,0x100
mov rdi, rax
	test	eax, eax
mov rax, qword ptr [rbp - 8]
	jne	.L67
	mov	DWORD PTR -252[rbp], 3
mov rax, qword ptr [rbp - 0x10]
cmp byte ptr [rbp - 0x12], 0
call 0x100
	mov	DWORD PTR -256[rbp], -2
movzx eax, byte ptr [rax]
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
add rax, rax
mov rdi, rax
	test	eax, eax
movzx eax, byte ptr [rax]
	jne	.L68
call 0x100
mov rcx, rax
cmp eax,0x100
	mov	DWORD PTR -260[rbp], 3
	mov	DWORD PTR -264[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
mov rax, qword ptr [rbp - 0x10]
	test	eax, eax
	jne	.L69
add rax, rdx
call 0x100
mov rsi, rax
	mov	DWORD PTR -268[rbp], 3
.L69:
	mov	DWORD PTR -272[rbp], 3
.L68:
mov rdi, rax
	mov	DWORD PTR -276[rbp], 3
test al, al
shl rax, 3
.L67:
add rax, 1
mov rcx, qword ptr [rbp - 0x10]
mov edi, eax
add rax, 1
mov rax, qword ptr [rbp - 0x38]
mov rax, rdx
add qword ptr [rbp - 0x10], 2
	mov	DWORD PTR -280[rbp], 3
mov rsi, rdx
mov byte ptr [rbp - 0x12], 0
mov rdx, rax
	mov	DWORD PTR -284[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
mov rdi, rax
	test	eax, eax
mov rax, qword ptr [rbp - 8]
mov edi,0x100
	jne	.L70
	mov	DWORD PTR -288[rbp], 3
.L70:
movzx eax, byte ptr [rax]
	mov	DWORD PTR -292[rbp], 3
add rax, rax
.L66:
add rax, 1
mov rcx, rax
mov rdi, rax
	mov	DWORD PTR -296[rbp], 3
	mov	DWORD PTR -300[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
	jne	.L71
	mov	DWORD PTR -304[rbp], 3
.L71:
	mov	DWORD PTR -308[rbp], 3
mov qword ptr [rbp - 8], rax
mov rdx, rax
.L65:
	mov	DWORD PTR -312[rbp], 3
.L46:
sub rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -316[rbp], 3
.L44:
mov rsi, rax
shl rax, 3
	mov	DWORD PTR -320[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
cmp qword ptr [rbp - 0x38], 0
mov rsi, rcx
movzx eax, byte ptr [rax]
	test	eax, eax
	je	.L72
mov rax, qword ptr [rbp - 8]
	mov	rax, QWORD PTR -424[rbp]
mov rax, rdx
mov rdx, rax
mov eax, dword ptr [rbp - 0x18]
cmp eax,0x100
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -328[rbp], rax
	cmp	QWORD PTR -328[rbp], 0
	je	.L73
	mov	DWORD PTR -332[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
mov rax, qword ptr [rbp - 0x10]
	je	.L74
mov rax, qword ptr [rbp - 0x10]
mov rax, rdx
	mov	rax, QWORD PTR -424[rbp]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -424[rbp]
mov rax, qword ptr [rbp - 0x10]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -440[rbp]
	mov	rsi, rcx
	mov	rdi, rax
mov rax, qword ptr [rbp - 8]
	call	rowSetTreeToList
.L74:
	mov	DWORD PTR -336[rbp], 3
	mov	DWORD PTR -340[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
mov ecx, dword ptr [rbp - 0x274]
add rax, rdx
	jne	.L75
	mov	DWORD PTR -344[rbp], 3
mov rax, qword ptr [rbp - 0x38]
movsx eax, al
mov rdi, rax
movsx eax, al
	mov	DWORD PTR -348[rbp], -2
mov rax, qword ptr [rbp - 8]
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
	jne	.L76
	mov	DWORD PTR -352[rbp], 3
cmp byte ptr [rbp - 0x12], 0
.L76:
	mov	DWORD PTR -356[rbp], 3
	mov	DWORD PTR -360[rbp], -2
mov rsi, rdx
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
	jne	.L77
	mov	DWORD PTR -364[rbp], 3
	mov	DWORD PTR -368[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
	jne	.L78
	mov	DWORD PTR -372[rbp], 3
call 0x100
.L78:
mov rdx, qword ptr [rbp - 0x50]
	mov	DWORD PTR -376[rbp], 3
	mov	DWORD PTR -380[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_498853526[rip]
	test	eax, eax
mov rsi, rdx
	jne	.L79
mov rsi, rax
mov rdi, rax
	mov	DWORD PTR -384[rbp], 3
movsxd rdx, eax
test al, al
.L79:
mov rdi, rax
movsxd rdx, eax
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -388[rbp], 3
.L77:
cmp eax,0x100
mov rax, qword ptr [rbp - 0x10]
call 0x100
call 0x100
	mov	DWORD PTR -392[rbp], 3
.L75:
	mov	DWORD PTR -396[rbp], 3
call 0x100
.L73:
mov rax, qword ptr [rbp - 0x270]
	cmp	QWORD PTR -328[rbp], 0
cmp eax,0x100
movsx eax, al
add rax, 1
	jne	.L72
test al, al
	mov	rax, QWORD PTR -440[rbp]
	mov	rdx, QWORD PTR -424[rbp]
	mov	QWORD PTR [rax], rdx
movzx eax, byte ptr [rax]
.L72:
mov rdi, rax
	mov	DWORD PTR -400[rbp], 3
.L43:
mov rax, rdx
mov byte ptr [rbp - 0x12], 0
	mov	eax, DWORD PTR -4[rbp]
add rax, rdx
lea rdx, [rbp - 0x260]
mov eax, dword ptr [rbp - 0x18]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	test	eax, eax
	je	.L80
mov rax, qword ptr [rbp - 0x38]
	mov	DWORD PTR -20[rbp], 3
.L39:
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
	jne	.L82
	mov	eax, 0
	jmp	.L83
.L82:
	cmp	DWORD PTR -28[rbp], 1
	jle	.L84
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
	jne	.L85
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L83
.L85:
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
	jmp	.L86
.L84:
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
.L86:
	mov	rax, QWORD PTR -8[rbp]
.L83:
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
	jmp	.L88
.L89:
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
.L88:
	mov	rax, QWORD PTR -40[rbp]
	test	rax, rax
	jne	.L89
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
	jne	.L92
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, WORD PTR 50[rax]
	movzx	eax, ax
	and	eax, 1
	test	eax, eax
	jne	.L93
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdi, rax
	call	rowSetEntrySort
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rdx], rax
.L93:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, WORD PTR 50[rax]
	or	eax, 3
	mov	edx, eax
	mov	rax, QWORD PTR -8[rbp]
	mov	WORD PTR 50[rax], dx
.L92:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L94
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
	jne	.L95
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3RowSetClear
.L95:
	mov	eax, 1
	jmp	.L96
.L94:
	mov	eax, 0
.L96:
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
	je	.L98
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L99
	mov	rax, QWORD PTR -56[rbp]
	add	rax, 40
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, WORD PTR 50[rax]
	movzx	eax, ax
	and	eax, 1
	test	eax, eax
	jne	.L100
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	rowSetEntrySort
	mov	QWORD PTR -8[rbp], rax
.L100:
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L101
.L104:
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 8
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	jne	.L102
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	rowSetListToTree
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rdx], rax
	jmp	.L103
.L102:
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
.L101:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L104
.L103:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L105
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	rowSetEntryAlloc
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	cmp	QWORD PTR -16[rbp], 0
	je	.L105
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	rowSetListToTree
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rdx], rax
.L105:
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
.L99:
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -60[rbp]
	mov	DWORD PTR 52[rax], edx
.L98:
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L106
.L112:
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L107
.L111:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -72[rbp], rax
	jle	.L108
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L107
.L108:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -72[rbp], rax
	jge	.L109
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L107
.L109:
	mov	eax, 1
	jmp	.L110
.L107:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L111
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
.L106:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L112
	mov	eax, 0
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	sqlite3RowSetTest, .-sqlite3RowSetTest
	.ident	"GCC: (Debian 13.2.0-6) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
