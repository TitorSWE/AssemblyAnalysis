	.file	"memjournal.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_376150834
	.data
	.align 4
	.type	__merger_cond_true_376150834, @object
	.size	__merger_cond_true_376150834, 4
__merger_cond_true_376150834:
	.long	1
	.text
	.type	memjrnlRead, @function
memjrnlRead:
.LFB6:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	DWORD PTR -68[rbp], edx
	mov	QWORD PTR -80[rbp], rcx
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -68[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -68[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	rdx, rax
	jle	.L2
	mov	eax, 522
	jmp	.L3
.L2:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 40[rax]
	cmp	QWORD PTR -80[rbp], rax
	jne	.L4
	cmp	QWORD PTR -80[rbp], 0
	jne	.L5
.L4:
	mov	QWORD PTR -32[rbp], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L6
.L8:
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 8[rax]
	cdqe
	add	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rax
.L6:
	cmp	QWORD PTR -24[rbp], 0
	je	.L14
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 8[rax]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	cmp	QWORD PTR -80[rbp], rax
	jge	.L8
	jmp	.L14
.L5:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 48[rax]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L9
.L14:
	nop
.L9:
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 8[rax]
	movsx	rsi, eax
	mov	rax, QWORD PTR -80[rbp]
	cqo
	idiv	rsi
	mov	rcx, rdx
	mov	rax, rcx
	mov	DWORD PTR -16[rbp], eax
.L11:
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 8[rax]
	sub	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -44[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 8[rax]
	sub	eax, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -12[rbp]
	cmp	edx, eax
	cmovle	eax, edx
	mov	DWORD PTR -48[rbp], eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, 8[rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	add	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memcpy@PLT
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	add	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	sub	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -16[rbp], 0
	cmp	DWORD PTR -12[rbp], 0
	js	.L10
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	je	.L10
	cmp	DWORD PTR -12[rbp], 0
	jg	.L11
.L10:
	cmp	QWORD PTR -24[rbp], 0
	je	.L12
	mov	eax, DWORD PTR -68[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -80[rbp]
	add	rdx, rax
	jmp	.L13
.L12:
	mov	edx, 0
.L13:
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 40[rax], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], rdx
	mov	eax, 0
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	memjrnlRead, .-memjrnlRead
	.type	memjrnlFreeChunks, @function
memjrnlFreeChunks:
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
	mov	QWORD PTR -8[rbp], rax
	jmp	.L16
.L17:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	sqlite3_free@PLT
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -8[rbp], rax
.L16:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L17
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	memjrnlFreeChunks, .-memjrnlFreeChunks
	.type	memjrnlCreateFile, @function
memjrnlCreateFile:
.LFB8:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
call 0x100
	sub	rsp, 552
nop
mov qword ptr [rbp - 0x48], rax
	.cfi_offset 3, -24
	mov	QWORD PTR -552[rbp], rdi
	mov	DWORD PTR -48[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
mov rax, qword ptr [rbp - 0x98]
	test	eax, eax
mov byte ptr [rbp - 1], 1
mov qword ptr [rbp - 0x48], rax
	jne	.L19
mov rax, qword ptr [rax + 8]
	mov	DWORD PTR -52[rbp], 3
	mov	DWORD PTR -56[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
mov qword ptr [rbp - 0x48], rax
	test	eax, eax
call 0x100
	jne	.L20
	mov	DWORD PTR -60[rbp], 3
mov rax, qword ptr [rbp - 0x98]
	mov	DWORD PTR -64[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L21
	mov	DWORD PTR -68[rbp], 3
	mov	DWORD PTR -72[rbp], -2
	jmp	.L22
.L25:
	mov	DWORD PTR -76[rbp], 3
cmp byte ptr [rbp - 0xa0], 0
mov rax, qword ptr [rax + 0x20]
mov rsi, rcx
mov rdi, rax
	mov	DWORD PTR -80[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L23
	mov	DWORD PTR -88[rbp], 3
test rax, rax
	jmp	.L24
.L23:
	mov	DWORD PTR -84[rbp], 3
.L22:
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	je	.L25
mov rax, qword ptr [rbp - 0x98]
.L24:
mov qword ptr [rbp - 0x48], rax
	mov	DWORD PTR -92[rbp], 3
.L21:
test rax, rax
	mov	DWORD PTR -96[rbp], 3
.L20:
mov rax, qword ptr [rbp - 0x98]
	mov	DWORD PTR -100[rbp], 3
	mov	DWORD PTR -104[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L26
	mov	DWORD PTR -108[rbp], 3
	mov	DWORD PTR -112[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
call 0x100
call 0x100
	jne	.L27
	mov	DWORD PTR -116[rbp], 3
.L27:
	mov	DWORD PTR -120[rbp], 3
.L26:
movzx eax, byte ptr [rbp - 0x1d]
	mov	DWORD PTR -124[rbp], 3
.L19:
	mov	rax, QWORD PTR -552[rbp]
	mov	QWORD PTR -136[rbp], rax
	mov	rax, QWORD PTR -552[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 8[rax]
mov rax, qword ptr [rax]
	mov	QWORD PTR -544[rbp], rcx
call 0x100
nop
	mov	QWORD PTR -536[rbp], rbx
	mov	rcx, QWORD PTR 16[rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	QWORD PTR -528[rbp], rcx
	mov	QWORD PTR -520[rbp], rbx
	mov	rcx, QWORD PTR 32[rax]
	mov	rbx, QWORD PTR 40[rax]
	mov	QWORD PTR -512[rbp], rcx
	mov	QWORD PTR -504[rbp], rbx
	mov	rcx, QWORD PTR 48[rax]
mov eax, dword ptr [rax + 8]
test rax, rax
	mov	rbx, QWORD PTR 56[rax]
call 0x100
	mov	QWORD PTR -496[rbp], rcx
	mov	QWORD PTR -488[rbp], rbx
	mov	rdx, QWORD PTR 72[rax]
	mov	rax, QWORD PTR 64[rax]
	mov	QWORD PTR -480[rbp], rax
	mov	QWORD PTR -472[rbp], rdx
mov rax, qword ptr [rax + 0x1d8]
	mov	rax, QWORD PTR -552[rbp]
call 0x100
	mov	edx, 80
cmp eax,0x100
	mov	esi, 0
	mov	rdi, rax
mov rax, qword ptr [rbp - 0x48]
	call	memset@PLT
	mov	ecx, DWORD PTR -488[rbp]
	mov	rsi, QWORD PTR -472[rbp]
	mov	rax, QWORD PTR -480[rbp]
call 0x100
	mov	rdx, QWORD PTR -136[rbp]
	mov	r8d, 0
mov eax, 0
	mov	rdi, rax
	call	sqlite3OsOpen@PLT
mov rdi, rax
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -20[rbp], 0
mov rdi, rax
	sete	al
	movzx	eax, al
	mov	QWORD PTR -144[rbp], rax
	cmp	QWORD PTR -144[rbp], 0
mov byte ptr [rbp - 1], 1
mov rax, qword ptr [rbp - 0x98]
	je	.L28
	mov	DWORD PTR -148[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
call 0x100
	je	.L29
mov rdx, qword ptr [rax]
	mov	DWORD PTR -152[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
lea rax, [rbp - 0x70]
	test	eax, eax
	je	.L30
	mov	eax, DWORD PTR -536[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	QWORD PTR -32[rbp], 0
mov rdi, rax
	mov	rax, QWORD PTR -528[rbp]
	mov	QWORD PTR -40[rbp], rax
mov rdi, rax
	jmp	.L31
mov rax, qword ptr [rax]
.L42:
	mov	DWORD PTR -44[rbp], 0
	jmp	.L32
.L41:
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -520[rbp]
add rax, rdx
	cmp	rdx, rax
	setg	al
	movzx	eax, al
test al, al
	mov	QWORD PTR -176[rbp], rax
	cmp	QWORD PTR -176[rbp], 0
	je	.L33
mov eax, 0
	mov	DWORD PTR -180[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
add rax, rdx
	jne	.L34
	mov	DWORD PTR -184[rbp], 3
mov rax, qword ptr [rbp - 0x88]
	jmp	.L35
.L34:
	mov	rax, QWORD PTR -520[rbp]
	mov	ecx, eax
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, eax
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -24[rbp], eax
.L33:
	mov	rax, QWORD PTR -40[rbp]
mov qword ptr [rbp - 0x48], rax
mov rdx, qword ptr [rax]
	lea	rsi, 8[rax]
	mov	rcx, QWORD PTR -32[rbp]
mov rdi, rax
	mov	edx, DWORD PTR -24[rbp]
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	call	sqlite3OsWrite@PLT
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
mov esi, ecx
	mov	QWORD PTR -192[rbp], rax
	cmp	QWORD PTR -192[rbp], 0
	je	.L36
	mov	DWORD PTR -196[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L65
mov rsi, rcx
mov rdi, rax
	mov	DWORD PTR -200[rbp], 3
.L36:
	mov	DWORD PTR -204[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
xor eax, 1
	test	eax, eax
	je	.L38
	mov	DWORD PTR -208[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	je	.L39
mov rdi, rax
	mov	DWORD PTR -212[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
mov rdi, rax
	test	eax, eax
mov rax, qword ptr [rax + 0xd0]
nop
	jne	.L40
	mov	DWORD PTR -216[rbp], 3
	jmp	.L35
mov rax, qword ptr [rbp - 0x90]
.L40:
	mov	eax, DWORD PTR -24[rbp]
mov rax, qword ptr [rbp - 0x48]
	cdqe
	add	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
mov rax, qword ptr [rbp - 0x90]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -40[rbp], rax
mov rax, qword ptr [rbp - 0x28]
.L39:
test rax, rax
	mov	DWORD PTR -220[rbp], 3
.L38:
movzx eax, byte ptr [rax]
	mov	DWORD PTR -224[rbp], 3
.L32:
	mov	eax, DWORD PTR -44[rbp]
lea rax, [rbp - 0x70]
	lea	edx, 1[rax]
	mov	DWORD PTR -44[rbp], edx
	test	eax, eax
	je	.L41
	jmp	.L35
.L65:
mov rax, qword ptr [rbp - 0x28]
	nop
.L35:
	mov	DWORD PTR -228[rbp], 3
.L31:
	cmp	QWORD PTR -40[rbp], 0
nop
	jne	.L42
	cmp	DWORD PTR -20[rbp], 0
	sete	al
	movzx	eax, al
	mov	QWORD PTR -160[rbp], rax
	cmp	QWORD PTR -160[rbp], 0
	je	.L30
	mov	DWORD PTR -164[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	je	.L43
	mov	rax, QWORD PTR -528[rbp]
test al, al
	mov	rdi, rax
	call	memjrnlFreeChunks
mov rax, qword ptr [rbp - 0x18]
mov rdi, rax
.L43:
	mov	DWORD PTR -168[rbp], 3
.L30:
	mov	DWORD PTR -232[rbp], 3
	mov	DWORD PTR -236[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L44
	mov	DWORD PTR -240[rbp], 3
.L44:
	mov	DWORD PTR -244[rbp], 3
.L29:
	mov	DWORD PTR -248[rbp], 3
	mov	DWORD PTR -252[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L45
	mov	DWORD PTR -256[rbp], 3
	mov	DWORD PTR -260[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L46
mov eax, dword ptr [rax + 0xc]
	mov	DWORD PTR -264[rbp], 3
mov eax, dword ptr [rax + 0xc]
mov rax, qword ptr [rax]
	mov	DWORD PTR -268[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
mov rax, qword ptr [rax]
mov rax, qword ptr [rbp - 0x98]
	test	eax, eax
	jne	.L47
test rax, rax
mov rax, qword ptr [rax + 0x18]
	mov	DWORD PTR -272[rbp], 3
lea rax, [rbp - 0x70]
.L47:
mov rsi, rdx
	mov	DWORD PTR -276[rbp], 3
.L46:
	mov	DWORD PTR -280[rbp], 3
mov rax, qword ptr [rax + 0x60]
	mov	DWORD PTR -284[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L48
	mov	DWORD PTR -288[rbp], 3
	mov	DWORD PTR -292[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
mov rax, qword ptr [rbp - 0x98]
	jne	.L49
	mov	DWORD PTR -296[rbp], 3
mov byte ptr [rbp - 1], 1
	mov	DWORD PTR -300[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
mov rax, qword ptr [rax + 0x60]
	test	eax, eax
	jne	.L50
	mov	DWORD PTR -304[rbp], 3
.L50:
	mov	DWORD PTR -308[rbp], 3
.L49:
	mov	DWORD PTR -312[rbp], 3
	mov	DWORD PTR -316[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L51
mov rdi, rax
	mov	DWORD PTR -320[rbp], 3
mov byte ptr [rbp - 1], 1
	mov	DWORD PTR -324[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
mov byte ptr [rbp - 1], 1
	jne	.L52
	mov	DWORD PTR -328[rbp], 3
mov eax, 0
	mov	DWORD PTR -332[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L53
	mov	DWORD PTR -336[rbp], 3
.L53:
call 0x100
nop
mov rax, qword ptr [rbp - 0x90]
mov rax, qword ptr [rbp - 0x90]
	mov	DWORD PTR -340[rbp], 3
.L52:
	mov	DWORD PTR -344[rbp], 3
lea rax, [rbp - 0x70]
mov rax, qword ptr [rbp - 0x98]
	mov	DWORD PTR -348[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L54
	mov	DWORD PTR -352[rbp], 3
	mov	DWORD PTR -356[rbp], -2
call 0x100
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
test rax, rax
	test	eax, eax
	jne	.L55
mov rsi, rcx
	mov	DWORD PTR -360[rbp], 3
mov esi, ecx
	mov	DWORD PTR -364[rbp], -2
mov rdi, rax
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L56
	mov	DWORD PTR -368[rbp], 3
mov rax, qword ptr [rbp - 0x90]
mov byte ptr [rbp - 0x1d], 1
	mov	DWORD PTR -372[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
lea rax, [rbp - 0x70]
	jne	.L57
lea rax, [rbp - 0x70]
mov qword ptr [rbp - 0x48], rax
	mov	DWORD PTR -376[rbp], 3
.L57:
	mov	DWORD PTR -380[rbp], 3
lea rax, [rbp - 0x70]
.L56:
	mov	DWORD PTR -384[rbp], 3
.L55:
	mov	DWORD PTR -388[rbp], 3
	mov	DWORD PTR -392[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
mov rax, qword ptr [rbp - 0x98]
mov rsi, rcx
	test	eax, eax
	jne	.L58
	mov	DWORD PTR -396[rbp], 3
.L58:
	mov	DWORD PTR -400[rbp], 3
.L54:
	mov	DWORD PTR -404[rbp], 3
.L51:
	mov	DWORD PTR -408[rbp], 3
.L48:
	mov	DWORD PTR -412[rbp], 3
.L45:
	mov	DWORD PTR -416[rbp], 3
.L28:
	cmp	DWORD PTR -20[rbp], 0
mov byte ptr [rbp - 0x1d], 1
	setne	al
	movzx	eax, al
lea rdx, [rbp - 0x48]
	mov	QWORD PTR -424[rbp], rax
	cmp	QWORD PTR -424[rbp], 0
test rax, rax
mov rax, qword ptr [rax + 0x1d8]
	je	.L59
	mov	DWORD PTR -428[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
mov byte ptr [rbp - 1], 1
	test	eax, eax
	je	.L60
mov rax, qword ptr [rbp - 0x98]
	mov	rax, QWORD PTR -136[rbp]
call 0x100
	mov	rdi, rax
mov rax, qword ptr [rbp - 0x98]
	call	sqlite3OsClose@PLT
	mov	rax, QWORD PTR -552[rbp]
	mov	rcx, QWORD PTR -544[rbp]
mov rax, qword ptr [rbp - 0x18]
mov rax, qword ptr [rbp - 0x90]
	mov	rbx, QWORD PTR -536[rbp]
	mov	QWORD PTR [rax], rcx
mov rax, qword ptr [rbp - 0x98]
	mov	QWORD PTR 8[rax], rbx
	mov	rcx, QWORD PTR -528[rbp]
	mov	rbx, QWORD PTR -520[rbp]
	mov	QWORD PTR 16[rax], rcx
	mov	QWORD PTR 24[rax], rbx
	mov	rcx, QWORD PTR -512[rbp]
	mov	rbx, QWORD PTR -504[rbp]
	mov	QWORD PTR 32[rax], rcx
	mov	QWORD PTR 40[rax], rbx
	mov	rcx, QWORD PTR -496[rbp]
	mov	rbx, QWORD PTR -488[rbp]
	mov	QWORD PTR 48[rax], rcx
call 0x100
mov rax, qword ptr [rax + 0x18]
	mov	QWORD PTR 56[rax], rbx
mov rsi, rdx
mov rax, qword ptr [rbp - 0x48]
	mov	rcx, QWORD PTR -480[rbp]
	mov	rbx, QWORD PTR -472[rbp]
	mov	QWORD PTR 64[rax], rcx
	mov	QWORD PTR 72[rax], rbx
.L60:
	mov	DWORD PTR -432[rbp], 3
	mov	DWORD PTR -436[rbp], -2
mov rax, qword ptr [rbp - 0x98]
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L61
	mov	DWORD PTR -440[rbp], 3
.L61:
	mov	DWORD PTR -444[rbp], 3
.L59:
	mov	DWORD PTR -448[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L62
	mov	DWORD PTR -452[rbp], 3
	mov	DWORD PTR -456[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_376150834[rip]
	test	eax, eax
	jne	.L63
	mov	DWORD PTR -460[rbp], 3
.L63:
	mov	DWORD PTR -464[rbp], 3
.L62:
	mov	eax, DWORD PTR -20[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	memjrnlCreateFile, .-memjrnlCreateFile
	.type	memjrnlWrite, @function
memjrnlWrite:
.LFB9:
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
	mov	QWORD PTR -96[rbp], rcx
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	eax, DWORD PTR -84[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 12[rax]
	test	eax, eax
	jle	.L67
	mov	eax, DWORD PTR -84[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -96[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 12[rax]
	cdqe
	cmp	rdx, rax
	jle	.L67
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	memjrnlCreateFile
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -20[rbp], 0
	jne	.L68
	mov	rcx, QWORD PTR -96[rbp]
	mov	edx, DWORD PTR -84[rbp]
	mov	rsi, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	sqlite3OsWrite@PLT
	mov	DWORD PTR -20[rbp], eax
.L68:
	mov	eax, DWORD PTR -20[rbp]
	jmp	.L69
.L67:
	cmp	QWORD PTR -96[rbp], 0
	jle	.L70
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	QWORD PTR -96[rbp], rax
	je	.L70
	mov	rdx, QWORD PTR -96[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	memjrnlTruncate
.L70:
	cmp	QWORD PTR -96[rbp], 0
	jne	.L73
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L73
	mov	eax, DWORD PTR -84[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	memcpy@PLT
	jmp	.L72
.L78:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 32[rax]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR 8[rdx]
	movsx	rsi, edx
	cqo
	idiv	rsi
	mov	rcx, rdx
	mov	rax, rcx
	mov	DWORD PTR -44[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 8[rax]
	sub	eax, DWORD PTR -44[rbp]
	mov	edx, DWORD PTR -4[rbp]
	cmp	edx, eax
	cmovle	eax, edx
	mov	DWORD PTR -48[rbp], eax
	cmp	DWORD PTR -44[rbp], 0
	jne	.L74
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 8[rax]
	add	eax, 8
	mov	edi, eax
	call	sqlite3_malloc@PLT
	mov	QWORD PTR -56[rbp], rax
	cmp	QWORD PTR -56[rbp], 0
	jne	.L75
	mov	eax, 3082
	jmp	.L69
.L75:
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax], 0
	cmp	QWORD PTR -32[rbp], 0
	je	.L76
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax], rdx
	jmp	.L77
.L76:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
.L77:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 32[rax]
	mov	QWORD PTR -32[rbp], rax
.L74:
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	lea	rcx, 8[rax]
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	add	rcx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	memcpy@PLT
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	add	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -48[rbp]
	sub	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 24[rax], rdx
.L73:
	cmp	DWORD PTR -4[rbp], 0
	jg	.L78
.L72:
	mov	eax, 0
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	memjrnlWrite, .-memjrnlWrite
	.type	memjrnlTruncate, @function
memjrnlTruncate:
.LFB10:
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
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	QWORD PTR -48[rbp], rax
	jge	.L80
	mov	QWORD PTR -8[rbp], 0
	cmp	QWORD PTR -48[rbp], 0
	jne	.L81
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdi, rax
	call	memjrnlFreeChunks
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], 0
	jmp	.L82
.L81:
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 8[rax]
	cdqe
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L83
.L85:
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 8[rax]
	cdqe
	add	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
.L83:
	cmp	QWORD PTR -8[rbp], 0
	je	.L84
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, QWORD PTR -48[rbp]
	jl	.L85
.L84:
	cmp	QWORD PTR -8[rbp], 0
	je	.L82
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	memjrnlFreeChunks
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
.L82:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 40[rax], 0
.L80:
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	memjrnlTruncate, .-memjrnlTruncate
	.type	memjrnlClose, @function
memjrnlClose:
.LFB11:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdi, rax
	call	memjrnlFreeChunks
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	memjrnlClose, .-memjrnlClose
	.type	memjrnlSync, @function
memjrnlSync:
.LFB12:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	memjrnlSync, .-memjrnlSync
	.type	memjrnlFileSize, @function
memjrnlFileSize:
.LFB13:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	memjrnlFileSize, .-memjrnlFileSize
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	MemJournalMethods, @object
	.size	MemJournalMethods, 152
MemJournalMethods:
	.long	1
	.zero	4
	.quad	memjrnlClose
	.quad	memjrnlRead
	.quad	memjrnlWrite
	.quad	memjrnlTruncate
	.quad	memjrnlSync
	.quad	memjrnlFileSize
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.text
	.globl	sqlite3JournalOpen
	.type	sqlite3JournalOpen, @function
sqlite3JournalOpen:
.LFB14:
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
	mov	DWORD PTR -44[rbp], ecx
	mov	DWORD PTR -48[rbp], r8d
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 80
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	cmp	DWORD PTR -48[rbp], 0
	jne	.L94
	mov	ecx, DWORD PTR -44[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r8d, 0
	mov	rdi, rax
	call	sqlite3OsOpen@PLT
	jmp	.L95
.L94:
	cmp	DWORD PTR -48[rbp], 0
	jle	.L96
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -48[rbp]
	mov	DWORD PTR 8[rax], edx
	jmp	.L97
.L96:
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 8[rax], 1016
.L97:
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, MemJournalMethods[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -48[rbp]
	mov	DWORD PTR 12[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -44[rbp]
	mov	DWORD PTR 56[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 72[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 64[rax], rdx
	mov	eax, 0
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	sqlite3JournalOpen, .-sqlite3JournalOpen
	.globl	sqlite3MemJournalOpen
	.type	sqlite3MemJournalOpen, @function
sqlite3MemJournalOpen:
.LFB15:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	r8d, -1
	mov	ecx, 0
	mov	rdx, rax
	mov	esi, 0
	mov	edi, 0
	call	sqlite3JournalOpen
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	sqlite3MemJournalOpen, .-sqlite3MemJournalOpen
	.globl	sqlite3JournalIsInMemory
	.type	sqlite3JournalIsInMemory, @function
sqlite3JournalIsInMemory:
.LFB16:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	lea	rax, MemJournalMethods[rip]
	cmp	rdx, rax
	sete	al
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	sqlite3JournalIsInMemory, .-sqlite3JournalIsInMemory
	.globl	sqlite3JournalSize
	.type	sqlite3JournalSize, @function
sqlite3JournalSize:
.LFB17:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 4[rax]
	mov	edx, 80
	cmp	eax, edx
	cmovl	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	sqlite3JournalSize, .-sqlite3JournalSize
	.ident	"GCC: (Debian 13.2.0-6) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
