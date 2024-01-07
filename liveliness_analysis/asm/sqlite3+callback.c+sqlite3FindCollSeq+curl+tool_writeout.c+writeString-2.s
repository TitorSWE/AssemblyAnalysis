	.file	"callback.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_328589915
	.data
	.align 4
	.type	__merger_cond_true_328589915, @object
	.size	__merger_cond_true_328589915, 4
__merger_cond_true_328589915:
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
mov rsi, rcx
test rax, rax
	sub	rsp, 464
call 0x100
	mov	QWORD PTR -440[rbp], rdi
	mov	eax, esi
	mov	QWORD PTR -456[rbp], rdx
	mov	DWORD PTR -448[rbp], ecx
	mov	BYTE PTR -444[rbp], al
call 0x100
mov rax, qword ptr [rbp - 0x28]
	mov	rax, QWORD PTR -456[rbp]
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	je	.L19
	mov	edx, DWORD PTR -448[rbp]
	mov	rcx, QWORD PTR -456[rbp]
	mov	rax, QWORD PTR -440[rbp]
mov qword ptr [rbp - 0x48], rax
	mov	rsi, rcx
	mov	rdi, rax
	call	findCollSeqEntry
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
add rax, rdx
mov rax, qword ptr [rax]
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	je	.L20
	mov	DWORD PTR -44[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
test rax, rax
mov rax, qword ptr [rbp - 0x18]
	je	.L21
	mov	DWORD PTR -12[rbp], 0
mov eax, dword ptr [rax + 0xc]
	jmp	.L22
.L25:
mov rax, qword ptr [rbp - 0x90]
	mov	DWORD PTR -48[rbp], -2
mov rax, qword ptr [rbp - 0x48]
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
call 0x100
	jne	.L23
mov rax, qword ptr [rbp - 0x18]
	mov	DWORD PTR -52[rbp], 3
	jmp	.L24
.L23:
mov rsi, rcx
	movzx	edx, BYTE PTR -444[rbp]
	mov	rax, rdx
mov rax, qword ptr [rbp - 0x90]
	sal	rax, 2
	add	rax, rdx
mov rax, qword ptr [rbp - 0x98]
	sal	rax, 3
	sub	rax, 40
	add	QWORD PTR -8[rbp], rax
mov byte ptr [rbp - 0x1d], 1
mov byte ptr [rbp - 1], 1
.L22:
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
mov rax, qword ptr [rbp - 0x90]
mov rdi, rax
call 0x100
cmp eax,0x100
	mov	DWORD PTR -12[rbp], edx
mov rax, qword ptr [rbp - 0x98]
lea rax, [rbp - 0x70]
	test	eax, eax
	je	.L25
.L24:
	mov	DWORD PTR -56[rbp], 3
call 0x100
.L21:
	mov	DWORD PTR -60[rbp], 3
.L20:
xor eax, 1
	mov	DWORD PTR -64[rbp], -2
mov rdi, rax
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	je	.L26
	mov	DWORD PTR -68[rbp], -2
	mov	DWORD PTR -72[rbp], 3
.L26:
	mov	DWORD PTR -76[rbp], 3
.L19:
call 0x100
	cmp	QWORD PTR -32[rbp], 0
	jne	.L27
	mov	DWORD PTR -80[rbp], -2
mov rdi, rax
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
mov rdi, rax
	je	.L28
	mov	DWORD PTR -84[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	je	.L29
mov rsi, rdx
	mov	DWORD PTR -16[rbp], 0
	jmp	.L30
mov rax, qword ptr [rbp - 0x98]
add rax, rdx
.L41:
mov rax, qword ptr [rbp - 0x98]
	mov	DWORD PTR -20[rbp], 0
	jmp	.L31
mov qword ptr [rbp - 0x48], rax
.L40:
	mov	DWORD PTR -116[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	je	.L32
	mov	DWORD PTR -120[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
mov rdi, rax
	test	eax, eax
mov rax, qword ptr [rax + 0x1d8]
mov rax, qword ptr [rbp - 0x48]
	jne	.L33
	mov	DWORD PTR -124[rbp], 3
	jmp	.L34
.L33:
	mov	rax, QWORD PTR -440[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
.L32:
mov byte ptr [rbp - 1], 1
	mov	DWORD PTR -128[rbp], 3
nop
	mov	DWORD PTR -132[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
mov eax, 0
	test	eax, eax
	jne	.L35
mov rax, qword ptr [rbp - 0x98]
	mov	DWORD PTR -136[rbp], 3
mov eax, 0
	mov	DWORD PTR -140[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L36
	mov	DWORD PTR -148[rbp], 3
	jmp	.L34
.L36:
	mov	DWORD PTR -144[rbp], 3
.L35:
mov rax, qword ptr [rbp - 0x90]
	mov	DWORD PTR -152[rbp], 3
	mov	DWORD PTR -156[rbp], -2
nop
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L37
	mov	DWORD PTR -160[rbp], 3
test rax, rax
call 0x100
	mov	DWORD PTR -164[rbp], -2
test rax, rax
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
mov rax, qword ptr [rax]
test rax, rax
	test	eax, eax
nop
	jne	.L38
mov qword ptr [rbp - 0x48], rax
	mov	DWORD PTR -168[rbp], 3
	mov	DWORD PTR -172[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L39
	mov	DWORD PTR -180[rbp], 3
mov rax, qword ptr [rbp - 0x88]
	jmp	.L34
.L39:
	mov	DWORD PTR -176[rbp], 3
mov rdx, qword ptr [rax]
.L38:
	mov	DWORD PTR -184[rbp], 3
test rax, rax
.L37:
	mov	DWORD PTR -188[rbp], 3
.L31:
mov rax, qword ptr [rax + 0x1d8]
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
nop
	mov	DWORD PTR -20[rbp], edx
mov rax, qword ptr [rbp - 0x28]
mov rax, qword ptr [rax + 8]
	test	eax, eax
	je	.L40
.L34:
	mov	DWORD PTR -192[rbp], 3
.L30:
	mov	eax, DWORD PTR -16[rbp]
mov qword ptr [rbp - 0x48], rax
mov rdi, rax
	lea	edx, 1[rax]
mov rdi, rax
mov rax, qword ptr [rbp - 0x28]
	mov	DWORD PTR -16[rbp], edx
call 0x100
	test	eax, eax
mov byte ptr [rbp - 1], 1
lea rax, [rbp - 0x70]
	je	.L41
	mov	DWORD PTR -88[rbp], 3
	mov	DWORD PTR -92[rbp], -2
mov esi, ecx
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L42
	mov	DWORD PTR -96[rbp], 3
	mov	DWORD PTR -100[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
mov rax, qword ptr [rbp - 0x98]
	jne	.L43
	mov	DWORD PTR -104[rbp], 3
.L43:
	mov	DWORD PTR -108[rbp], 3
movzx eax, byte ptr [rax]
.L42:
	mov	DWORD PTR -112[rbp], 3
lea rdx, [rbp - 0x48]
.L29:
	mov	DWORD PTR -196[rbp], 3
mov rdi, rax
	mov	DWORD PTR -200[rbp], -2
call 0x100
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L44
	mov	DWORD PTR -204[rbp], 3
.L44:
	mov	DWORD PTR -208[rbp], 3
.L28:
call 0x100
	mov	DWORD PTR -212[rbp], 3
mov rax, qword ptr [rbp - 0x98]
mov rax, qword ptr [rax + 0x20]
	mov	DWORD PTR -216[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
lea rax, [rbp - 0x70]
mov rsi, rcx
mov rax, qword ptr [rbp - 0x98]
	test	eax, eax
lea rax, [rbp - 0x70]
call 0x100
	jne	.L45
mov rdi, rax
	mov	DWORD PTR -220[rbp], 3
	mov	DWORD PTR -224[rbp], -2
mov rdi, rax
mov rax, qword ptr [rax + 0x60]
mov rdi, rax
mov eax, dword ptr [rax + 0xc]
mov eax, dword ptr [rax + 8]
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
call 0x100
	test	eax, eax
	jne	.L46
	mov	DWORD PTR -228[rbp], 3
call 0x100
	mov	DWORD PTR -232[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L47
	mov	DWORD PTR -236[rbp], 3
.L47:
	mov	DWORD PTR -240[rbp], 3
.L46:
	mov	DWORD PTR -244[rbp], 3
	mov	DWORD PTR -248[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
lea rax, [rbp - 0x70]
	jne	.L48
	mov	DWORD PTR -252[rbp], 3
mov qword ptr [rbp - 0x28], rax
	mov	DWORD PTR -256[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
nop
mov byte ptr [rbp - 1], 1
call 0x100
mov rax, qword ptr [rbp - 0x98]
	jne	.L49
	mov	DWORD PTR -260[rbp], 3
mov byte ptr [rbp - 1], 1
	mov	DWORD PTR -264[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L50
	mov	DWORD PTR -268[rbp], 3
.L50:
	mov	DWORD PTR -272[rbp], 3
.L49:
mov rax, qword ptr [rbp - 0x90]
mov rdi, rax
mov rax, qword ptr [rax]
	mov	DWORD PTR -276[rbp], 3
mov rax, qword ptr [rbp - 0x48]
	mov	DWORD PTR -280[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L51
test al, al
	mov	DWORD PTR -284[rbp], 3
	mov	DWORD PTR -288[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
mov rax, qword ptr [rbp - 0x98]
	jne	.L52
	mov	DWORD PTR -292[rbp], 3
	mov	DWORD PTR -296[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L53
	mov	DWORD PTR -300[rbp], 3
mov rax, qword ptr [rax + 0xd0]
.L53:
	mov	DWORD PTR -304[rbp], 3
.L52:
	mov	DWORD PTR -308[rbp], 3
	mov	DWORD PTR -312[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L54
mov rax, qword ptr [rax + 0x60]
	mov	DWORD PTR -316[rbp], 3
mov rdi, rax
	mov	DWORD PTR -320[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L55
	mov	DWORD PTR -324[rbp], 3
	mov	DWORD PTR -328[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
mov rax, qword ptr [rax]
test al, al
	jne	.L56
	mov	DWORD PTR -332[rbp], 3
	mov	DWORD PTR -336[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
movzx eax, byte ptr [rbp - 0x1d]
	test	eax, eax
	jne	.L57
mov rdi, rax
	mov	DWORD PTR -340[rbp], 3
mov rdi, rax
lea rax, [rbp - 0x70]
.L57:
cmp byte ptr [rbp - 0xa0], 0
	mov	DWORD PTR -344[rbp], 3
call 0x100
.L56:
	mov	DWORD PTR -348[rbp], 3
.L55:
	mov	DWORD PTR -352[rbp], 3
	mov	DWORD PTR -356[rbp], -2
test rax, rax
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
mov eax, 0
	jne	.L58
	mov	DWORD PTR -360[rbp], 3
.L58:
mov rax, qword ptr [rbp - 0x98]
	mov	DWORD PTR -364[rbp], 3
.L54:
mov rax, qword ptr [rbp - 0x98]
	mov	DWORD PTR -368[rbp], 3
.L51:
	mov	DWORD PTR -372[rbp], 3
.L48:
mov rax, qword ptr [rax + 0x18]
	mov	DWORD PTR -376[rbp], 3
mov qword ptr [rbp - 0x48], rax
.L45:
	mov	DWORD PTR -380[rbp], 3
.L27:
	mov	DWORD PTR -384[rbp], -2
mov qword ptr [rbp - 0x48], rax
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L59
	mov	DWORD PTR -388[rbp], 3
	mov	DWORD PTR -392[rbp], -2
call 0x100
mov rax, qword ptr [rbp - 0x88]
mov esi, ecx
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L60
	mov	DWORD PTR -396[rbp], 3
mov rax, qword ptr [rbp - 0x98]
.L60:
	mov	DWORD PTR -400[rbp], 3
	mov	DWORD PTR -404[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
mov byte ptr [rbp - 1], 1
mov rdx, qword ptr [rax]
mov rax, qword ptr [rbp - 0x90]
	test	eax, eax
	jne	.L61
	mov	DWORD PTR -408[rbp], 3
mov rsi, rcx
.L61:
mov rax, qword ptr [rax + 0x18]
	mov	DWORD PTR -412[rbp], 3
.L59:
mov rsi, rdx
	mov	DWORD PTR -416[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L62
call 0x100
	mov	DWORD PTR -420[rbp], 3
	mov	DWORD PTR -424[rbp], -2
mov rdi, rax
mov byte ptr [rbp - 0x1d], 1
	mov	eax, DWORD PTR __merger_cond_true_328589915[rip]
	test	eax, eax
	jne	.L63
	mov	DWORD PTR -428[rbp], 3
.L63:
	mov	DWORD PTR -432[rbp], 3
lea rax, [rbp - 0x70]
.L62:
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
	jne	.L67
	movzx	esi, BYTE PTR -28[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, 0
	mov	rdi, rax
	call	sqlite3FindCollSeq
	mov	QWORD PTR -8[rbp], rax
.L67:
	cmp	QWORD PTR -8[rbp], 0
	je	.L68
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L69
.L68:
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
.L69:
	cmp	QWORD PTR -8[rbp], 0
	je	.L70
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L70
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	synthCollSeq
	test	eax, eax
	je	.L70
	mov	QWORD PTR -8[rbp], 0
.L70:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L71
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, .LC0[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	sqlite3ErrorMsg@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR 24[rax], 257
.L71:
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
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 100[rax]
	mov	BYTE PTR -17[rbp], al
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR 197[rax]
	mov	BYTE PTR -18[rbp], al
	movzx	ecx, BYTE PTR -18[rbp]
	movzx	esi, BYTE PTR -17[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	sqlite3FindCollSeq
	mov	QWORD PTR -8[rbp], rax
	cmp	BYTE PTR -18[rbp], 0
	jne	.L74
	cmp	QWORD PTR -8[rbp], 0
	je	.L75
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L74
.L75:
	movzx	esi, BYTE PTR -17[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	sqlite3GetCollSeq
	mov	QWORD PTR -8[rbp], rax
.L74:
	mov	rax, QWORD PTR -8[rbp]
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
	je	.L78
	cmp	DWORD PTR -28[rbp], -2
	jne	.L79
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L80
	mov	eax, 0
	jmp	.L82
.L80:
	mov	eax, 6
	jmp	.L82
.L79:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	js	.L78
	mov	eax, 0
	jmp	.L82
.L78:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cmp	DWORD PTR -28[rbp], eax
	jne	.L83
	mov	DWORD PTR -4[rbp], 4
	jmp	.L84
.L83:
	mov	DWORD PTR -4[rbp], 1
.L84:
	movzx	edx, BYTE PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	and	eax, 3
	cmp	edx, eax
	jne	.L85
	add	DWORD PTR -4[rbp], 2
	jmp	.L86
.L85:
	movzx	edx, BYTE PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	and	eax, edx
	and	eax, 2
	test	eax, eax
	je	.L86
	add	DWORD PTR -4[rbp], 1
.L86:
	mov	eax, DWORD PTR -4[rbp]
.L82:
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
	jmp	.L88
.L91:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 56[rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3StrICmp@PLT
	test	eax, eax
	jne	.L89
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L90
.L89:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 64[rax]
	mov	QWORD PTR -8[rbp], rax
.L88:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L91
	mov	eax, 0
.L90:
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
	jmp	.L93
.L96:
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
	je	.L94
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
	jmp	.L95
.L94:
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
.L95:
	add	DWORD PTR -4[rbp], 1
.L93:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L96
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
	jmp	.L98
.L100:
	movzx	edx, BYTE PTR -88[rbp]
	mov	ecx, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	matchQuality
	mov	DWORD PTR -60[rbp], eax
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L99
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -60[rbp]
	mov	DWORD PTR -20[rbp], eax
.L99:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
.L98:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L100
	cmp	BYTE PTR -92[rbp], 0
	jne	.L101
	cmp	QWORD PTR -16[rbp], 0
	je	.L102
	mov	rax, QWORD PTR -72[rbp]
	mov	eax, DWORD PTR 44[rax]
	and	eax, 2
	test	eax, eax
	je	.L101
.L102:
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
	jmp	.L103
.L105:
	movzx	edx, BYTE PTR -88[rbp]
	mov	ecx, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	matchQuality
	mov	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L104
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR -20[rbp], eax
.L104:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
.L103:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L105
.L101:
	cmp	BYTE PTR -92[rbp], 0
	je	.L106
	cmp	DWORD PTR -20[rbp], 5
	jg	.L106
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 73[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbMallocZero@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L106
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
	jmp	.L107
.L108:
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cdqe
	lea	rdx, sqlite3UpperToLower[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	rax, QWORD PTR -32[rbp]
	mov	BYTE PTR [rax], dl
	add	QWORD PTR -32[rbp], 1
.L107:
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L108
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
	jne	.L109
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DbFree@PLT
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	sqlite3OomFault@PLT
	mov	eax, 0
	jmp	.L110
.L109:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
.L106:
	cmp	QWORD PTR -16[rbp], 0
	je	.L111
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	jne	.L112
	cmp	BYTE PTR -92[rbp], 0
	je	.L111
.L112:
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L110
.L111:
	mov	eax, 0
.L110:
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
	jmp	.L114
.L115:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	lea	rax, -864[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3DeleteTrigger@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
.L114:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L115
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	sqlite3HashClear@PLT
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 8
	mov	rdi, rax
	call	sqlite3HashInit@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L116
.L117:
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
.L116:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L117
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
	je	.L118
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR 4[rax], edx
.L118:
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
	je	.L120
	mov	rax, QWORD PTR -32[rbp]
	lea	rdx, sqlite3SchemaClear[rip]
	mov	esi, 120
	mov	rdi, rax
	call	sqlite3BtreeSchema@PLT
	mov	QWORD PTR -8[rbp], rax
	jmp	.L121
.L120:
	mov	esi, 120
	mov	edi, 0
	call	sqlite3DbMallocZero@PLT
	mov	QWORD PTR -8[rbp], rax
.L121:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L122
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3OomFault@PLT
	jmp	.L123
.L122:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 112[rax]
	test	al, al
	jne	.L123
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
.L123:
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
