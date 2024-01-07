	.file	"hash.c"
	.intel_syntax noprefix
	.text
	.globl	__merger_cond_true_893533995
	.data
	.align 4
	.type	__merger_cond_true_893533995, @object
	.size	__merger_cond_true_893533995, 4
__merger_cond_true_893533995:
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
	sub	rsp, 304
	mov	QWORD PTR -408[rbp], rdi
lea rax, [rbp - 0x260]
	mov	QWORD PTR -416[rbp], rsi
	mov	QWORD PTR -424[rbp], rdx
	mov	DWORD PTR -20[rbp], -2
mov rax, qword ptr [rbp - 0x10]
cmp al,0x100
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
mov rax, qword ptr [rbp - 0x10]
	test	eax, eax
	jne	.L10
	mov	DWORD PTR -388[rbp], 3
add qword ptr [rbp - 0x10], 2
mov rsi, rax
	jmp	.L9
.L10:
mov byte ptr [rbp - 0x12], 0
	mov	rax, QWORD PTR -416[rbp]
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	je	.L12
mov rax, rdx
	mov	rax, QWORD PTR -416[rbp]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
mov rax, qword ptr [rbp - 0x10]
	je	.L13
	mov	rax, QWORD PTR -416[rbp]
	mov	rax, QWORD PTR 8[rax]
	jmp	.L14
mov rdx, qword ptr [rbp - 0x270]
add rax, 1
.L13:
add qword ptr [rbp - 0x10], 2
	mov	eax, 0
call 0x100
mov rax, qword ptr [rbp - 8]
.L14:
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -416[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -416[rbp]
mov edi,0x100
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -416[rbp]
	mov	rdx, QWORD PTR -424[rbp]
	mov	QWORD PTR 8[rax], rdx
.L12:
	mov	DWORD PTR -12[rbp], 0
cmp eax,0x100
	jmp	.L15
.L52:
	mov	DWORD PTR -40[rbp], -2
call 0x100
movsx eax, al
mov rdi, rax
mov rdi, rax
mov rax, qword ptr [rbp - 8]
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
	test	eax, eax
cmp eax,0x100
movzx eax, byte ptr [rax]
	je	.L16
cmp byte ptr [rbp - 0x12], 0
	cmp	QWORD PTR -32[rbp], 0
call 0x100
movzx eax, byte ptr [rax]
	jne	.L17
	mov	QWORD PTR -8[rbp], 0
.L17:
	mov	DWORD PTR -44[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
mov rcx, rax
mov rax, qword ptr [rbp - 8]
	test	eax, eax
mov rdi, rax
mov eax, dword ptr [rbp - 0x18]
mov rdi, rax
	je	.L18
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -56[rbp], rax
add rax, rax
	cmp	QWORD PTR -56[rbp], 0
	je	.L19
	mov	DWORD PTR -60[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
	test	eax, eax
	jne	.L20
	mov	DWORD PTR -216[rbp], 3
	jmp	.L15
call 0x100
call 0x100
cmp eax,0x100
mov rdi, rax
.L20:
	mov	rax, QWORD PTR -424[rbp]
mov ecx, dword ptr [rbp - 0x274]
	mov	rdx, QWORD PTR -8[rbp]
mov rax, qword ptr [rbp - 0x50]
test al, al
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
mov rsi, rdx
shl rax, 3
	mov	rdx, QWORD PTR 8[rax]
mov rdi, rax
mov qword ptr [rbp - 0x38], rax
movsx eax, al
movsxd rdx, eax
	mov	rax, QWORD PTR -424[rbp]
call 0x100
	mov	QWORD PTR 8[rax], rdx
mov rax, qword ptr [rdx + rax]
	mov	rax, QWORD PTR -8[rbp]
mov rax, qword ptr [rbp - 8]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -72[rbp], rax
mov rsi, rcx
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -16[rbp], 1
	jmp	.L21
shl rax, 3
.L35:
mov eax, dword ptr [rbp - 0x18]
	mov	DWORD PTR -76[rbp], -2
cmp al,0x100
call 0x100
mov eax, 0
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
mov rdx, rax
call 0x100
	test	eax, eax
add rax, 1
	jne	.L22
	mov	DWORD PTR -80[rbp], 3
	mov	DWORD PTR -84[rbp], -2
movsx eax, al
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
	test	eax, eax
	jne	.L23
	mov	DWORD PTR -88[rbp], 3
	mov	DWORD PTR -92[rbp], -2
cmp eax,0x100
mov rsi, rdx
mov rax, qword ptr [rbp - 8]
mov rdi, rax
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
	test	eax, eax
	jne	.L24
	mov	DWORD PTR -96[rbp], 3
.L24:
	mov	DWORD PTR -100[rbp], 3
.L23:
	mov	DWORD PTR -104[rbp], 3
add rax, 1
	mov	DWORD PTR -108[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
	test	eax, eax
	jne	.L25
call 0x100
mov rsi, rax
	mov	DWORD PTR -112[rbp], 3
	mov	DWORD PTR -116[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
mov edx, 7
	test	eax, eax
	jne	.L26
	mov	DWORD PTR -120[rbp], 3
.L26:
	mov	DWORD PTR -124[rbp], 3
	mov	DWORD PTR -128[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
test al, al
	test	eax, eax
	jne	.L27
	mov	DWORD PTR -132[rbp], 3
	mov	DWORD PTR -136[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
	test	eax, eax
	jne	.L28
	mov	DWORD PTR -140[rbp], 3
mov rax, rdx
add rax, rax
.L28:
	mov	DWORD PTR -144[rbp], 3
	mov	DWORD PTR -148[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
	test	eax, eax
mov qword ptr [rbp - 0x38], rax
mov rdi, rax
mov qword ptr [rbp - 8], rax
	jne	.L29
	mov	DWORD PTR -152[rbp], 3
movsxd rdx, eax
mov rdi, rax
mov qword ptr [rbp - 0x10], rax
	mov	DWORD PTR -156[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
call 0x100
	test	eax, eax
movzx eax, byte ptr [rax]
lea rdx, [rbp - 0x260]
	jne	.L30
add rax, 1
cmp eax,0x100
mov rax, qword ptr [rbp - 8]
	mov	DWORD PTR -160[rbp], 3
mov rdi, rax
mov rdi, rax
movzx eax, byte ptr [rax]
mov byte ptr [rbp - 0x12], 0
.L30:
mov rsi, rax
	mov	DWORD PTR -164[rbp], 3
call 0x100
	mov	DWORD PTR -168[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
	test	eax, eax
mov edi, eax
	jne	.L31
	mov	DWORD PTR -172[rbp], 3
cmp eax,0x100
	mov	DWORD PTR -176[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
	test	eax, eax
	jne	.L32
	mov	DWORD PTR -180[rbp], 3
nop
call 0x100
movsxd rdx, eax
.L32:
	mov	DWORD PTR -184[rbp], 3
	mov	DWORD PTR -188[rbp], -2
movzx eax, byte ptr [rax]
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
	test	eax, eax
	jne	.L33
add qword ptr [rbp - 0x10], 2
	mov	DWORD PTR -192[rbp], 3
.L33:
mov rsi, rax
	mov	DWORD PTR -196[rbp], 3
.L31:
movzx eax, byte ptr [rax]
	mov	DWORD PTR -200[rbp], 3
mov rax, qword ptr [rbp - 0x10]
.L29:
mov rdx, qword ptr [rbp - 8]
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -204[rbp], 3
call 0x100
.L27:
mov rax, qword ptr [rbp - 0x10]
cmp byte ptr [rbp - 0x12], 0
	mov	DWORD PTR -208[rbp], 3
.L25:
	mov	DWORD PTR -212[rbp], 3
mov eax, dword ptr [rbp - 0x18]
mov rdi, rax
	jmp	.L34
test al, al
.L22:
	mov	DWORD PTR -16[rbp], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
movzx eax, byte ptr [rax]
	mov	rdx, QWORD PTR -424[rbp]
	mov	QWORD PTR [rax], rdx
.L21:
	cmp	QWORD PTR -72[rbp], 0
add rax, rdx
mov rax, qword ptr [rbp - 0x38]
	je	.L34
	cmp	DWORD PTR -16[rbp], 0
mov rdi, rax
	jne	.L35
.L34:
add rax, rax
mov rax, qword ptr [rbp - 0x10]
	cmp	QWORD PTR -72[rbp], 0
	jne	.L36
	mov	rax, QWORD PTR -408[rbp]
	mov	rdx, QWORD PTR -424[rbp]
mov rax, qword ptr [rbp - 0x10]
	mov	QWORD PTR 8[rax], rdx
xor eax, 1
add rax, rdx
.L36:
	mov	rax, QWORD PTR -8[rbp]
lea rdx, [rbp - 0x260]
movzx eax, byte ptr [rax]
cmp eax,0x100
mov rax, qword ptr [rbp - 8]
nop
	mov	rdx, QWORD PTR -424[rbp]
	mov	QWORD PTR 8[rax], rdx
.L19:
	cmp	QWORD PTR -56[rbp], 0
	jne	.L18
	mov	rax, QWORD PTR -408[rbp]
mov rax, qword ptr [rbp - 0x38]
	mov	rdx, QWORD PTR 8[rax]
call 0x100
	mov	rax, QWORD PTR -424[rbp]
mov rcx, qword ptr [rbp - 0x10]
mov rax, qword ptr [rbp - 8]
mov rsi, rcx
mov rdx, rax
	mov	QWORD PTR [rax], rdx
movzx eax, byte ptr [rax]
	mov	rax, QWORD PTR -408[rbp]
mov rax, qword ptr [rbp - 0x10]
call 0x100
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -224[rbp], rax
call 0x100
add rax, rdx
mov rdi, rax
movzx eax, byte ptr [rax]
	cmp	QWORD PTR -224[rbp], 0
	je	.L37
	mov	DWORD PTR -228[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
	test	eax, eax
	je	.L38
mov rdi, rax
	mov	DWORD PTR -232[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
mov qword ptr [rbp - 0x10], rax
	test	eax, eax
	je	.L39
	mov	DWORD PTR -236[rbp], -2
mov rsi, rax
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
mov eax, dword ptr [rbp - 0x18]
	test	eax, eax
call 0x100
	je	.L40
	mov	rax, QWORD PTR -408[rbp]
mov byte ptr [rax], 0
mov qword ptr [rbp - 8], rax
mov edi, eax
cmp eax,0x100
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -424[rbp]
	mov	QWORD PTR 8[rax], rdx
.L40:
	mov	DWORD PTR -240[rbp], 3
.L39:
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -244[rbp], 3
.L38:
movzx eax, byte ptr [rax]
mov rdi, rax
	mov	DWORD PTR -248[rbp], 3
	mov	DWORD PTR -252[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
call 0x100
	test	eax, eax
add rax, 1
	jne	.L41
mov edi,0x100
shl rax, 3
	mov	DWORD PTR -256[rbp], 3
test al, al
.L41:
	mov	DWORD PTR -260[rbp], 3
.L37:
	mov	DWORD PTR -264[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
add rax, rdx
	test	eax, eax
call 0x100
call 0x100
	je	.L42
	mov	rax, QWORD PTR -424[rbp]
	mov	QWORD PTR 8[rax], 0
mov rax, qword ptr [rbp - 8]
	mov	rax, QWORD PTR -408[rbp]
mov rdx, qword ptr [rbp - 0x50]
mov edi, eax
mov rdx, rax
	mov	rdx, QWORD PTR -424[rbp]
mov rsi, rdx
	mov	QWORD PTR 8[rax], rdx
.L42:
	mov	DWORD PTR -268[rbp], 3
.L18:
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -272[rbp], 3
cmp eax,0x100
.L16:
	mov	DWORD PTR -276[rbp], 3
movzx eax, byte ptr [rax]
movsx eax, al
	mov	DWORD PTR -280[rbp], -2
add rax, 1
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
mov qword ptr [rbp - 0x50], rax
	test	eax, eax
	jne	.L43
mov rdi, rax
add rax, 1
add rax, rax
cmp al,0x100
	mov	DWORD PTR -284[rbp], 3
	mov	DWORD PTR -288[rbp], -2
mov rdi, rax
mov rdi, rax
mov rdx, qword ptr [rbp - 8]
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
mov rax, qword ptr [rbp - 0x38]
cmp qword ptr [rbp - 0x38], 0
	test	eax, eax
	jne	.L44
	mov	DWORD PTR -292[rbp], 3
	mov	DWORD PTR -296[rbp], -2
cmp byte ptr [rbp - 0x12], 0
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
add rax, rax
	test	eax, eax
call 0x100
	jne	.L45
add rax, rdx
	mov	DWORD PTR -300[rbp], 3
mov qword ptr [rbp - 8], rax
.L45:
cmp eax,0x100
	mov	DWORD PTR -304[rbp], 3
	mov	DWORD PTR -308[rbp], -2
mov rax, qword ptr [rbp - 0x270]
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
mov rax, qword ptr [rbp - 8]
mov rsi, rax
add rax, 1
	test	eax, eax
	jne	.L46
	mov	DWORD PTR -312[rbp], 3
mov rax, rdx
	mov	DWORD PTR -316[rbp], -2
mov rsi, rdx
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
add qword ptr [rbp - 0x10], 8
add qword ptr [rbp - 0x10], 2
mov rdi, rax
	test	eax, eax
	jne	.L47
mov esi,0x100
	mov	DWORD PTR -320[rbp], 3
call 0x100
.L47:
	mov	DWORD PTR -324[rbp], 3
	mov	DWORD PTR -328[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
test rax, rax
mov rax, qword ptr [rbp - 0x10]
	test	eax, eax
mov rax, qword ptr [rbp - 0x10]
	jne	.L48
call 0x100
mov eax, dword ptr [rbp - 0x18]
mov qword ptr [rbp - 0x10], rax
mov rax, qword ptr [rbp - 0x38]
mov rsi, rax
mov rdx, qword ptr [rbp - 8]
add rax, 1
mov rax, rdx
mov edx, 8
	mov	DWORD PTR -332[rbp], 3
	mov	DWORD PTR -336[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
	test	eax, eax
mov rdi, rax
	jne	.L49
	mov	DWORD PTR -340[rbp], 3
sub rax, qword ptr [rbp - 0x10]
.L49:
	mov	DWORD PTR -344[rbp], 3
mov rsi, rdx
add rax, 1
	mov	DWORD PTR -348[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
	test	eax, eax
add rax, rdx
	jne	.L50
call 0x100
	mov	DWORD PTR -352[rbp], 3
movsxd rdx, eax
mov rax, rdx
add rax, rdx
movsxd rdx, eax
add rax, 1
mov rax, qword ptr [rax + 0x20]
.L50:
	mov	DWORD PTR -356[rbp], 3
mov rax, qword ptr [rbp - 0x270]
.L48:
	mov	DWORD PTR -360[rbp], 3
.L46:
	mov	DWORD PTR -364[rbp], 3
cmp eax,0x100
mov rdx, rax
mov rax, qword ptr [rbp - 0x10]
.L44:
call 0x100
cmp al,0x100
call 0x100
mov rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -368[rbp], 3
	mov	DWORD PTR -372[rbp], -2
	mov	eax, DWORD PTR __merger_cond_true_893533995[rip]
call 0x100
call 0x100
	test	eax, eax
	jne	.L51
mov rdx, qword ptr [rbp - 8]
cmp al,0x100
	mov	DWORD PTR -376[rbp], 3
.L51:
movzx eax, byte ptr [rax]
	mov	DWORD PTR -380[rbp], 3
.L43:
add rax, 1
call 0x100
	mov	DWORD PTR -384[rbp], 3
shl rax, 3
mov edi,0x100
mov rdx, qword ptr [rbp - 0x270]
.L15:
call 0x100
mov rax, qword ptr [rbp - 0x38]
mov rax, qword ptr [rbp - 0x10]
mov rcx, rax
mov rdi, rax
mov rax, qword ptr [rbp - 0x10]
mov esi,0x100
	mov	eax, DWORD PTR -12[rbp]
mov rax, qword ptr [rbp - 0x10]
shl rax, 3
mov esi, 1
	lea	edx, 1[rax]
sub rax, qword ptr [rbp - 0x10]
	mov	DWORD PTR -12[rbp], edx
mov esi, 1
call 0x100
	test	eax, eax
	je	.L52
	mov	DWORD PTR -36[rbp], 3
.L9:
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
	jbe	.L54
	mov	DWORD PTR -44[rbp], 64
.L54:
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -44[rbp], eax
	jne	.L55
	mov	eax, 0
	jmp	.L56
.L55:
	call	sqlite3BeginBenignMalloc@PLT
	mov	eax, DWORD PTR -44[rbp]
	sal	rax, 4
	mov	rdi, rax
	call	sqlite3Malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	call	sqlite3EndBenignMalloc@PLT
	cmp	QWORD PTR -16[rbp], 0
	jne	.L57
	mov	eax, 0
	jmp	.L56
.L57:
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
	jmp	.L58
.L59:
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
.L58:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L59
	mov	eax, 1
.L56:
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
	je	.L61
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
	jmp	.L62
.L61:
	mov	DWORD PTR -16[rbp], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR -12[rbp], eax
.L62:
	cmp	QWORD PTR -56[rbp], 0
	je	.L64
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	DWORD PTR [rax], edx
	jmp	.L64
.L67:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	sqlite3StrICmp@PLT
	test	eax, eax
	jne	.L65
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L66
.L65:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	sub	DWORD PTR -12[rbp], 1
.L64:
	cmp	DWORD PTR -12[rbp], 0
	jne	.L67
	lea	rax, nullElement.0[rip]
.L66:
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
	je	.L69
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR [rax], rdx
	jmp	.L70
.L69:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
.L70:
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L71
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR 8[rdx]
	mov	QWORD PTR 8[rax], rdx
.L71:
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L72
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	edx, DWORD PTR -36[rbp]
	sal	rdx, 4
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	cmp	QWORD PTR -32[rbp], rax
	jne	.L73
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
.L73:
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
.L72:
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
	jne	.L75
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	sqlite3HashClear
.L75:
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
	je	.L79
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -56[rbp], 0
	jne	.L80
	mov	edx, DWORD PTR -28[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	removeElementGivenHash
	jmp	.L81
.L80:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 24[rax], rdx
.L81:
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L88
.L79:
	cmp	QWORD PTR -56[rbp], 0
	jne	.L83
	mov	eax, 0
	jmp	.L88
.L83:
	mov	edi, 32
	call	sqlite3Malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L84
	mov	rax, QWORD PTR -56[rbp]
	jmp	.L88
.L84:
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
	jbe	.L85
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 4[rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR [rdx]
	add	edx, edx
	cmp	edx, eax
	jnb	.L85
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, [rax+rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	rehash
	test	eax, eax
	je	.L85
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
.L85:
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	je	.L86
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	edx, DWORD PTR -28[rbp]
	mov	edx, edx
	sal	rdx, 4
	lea	rcx, [rax+rdx]
	jmp	.L87
.L86:
	mov	ecx, 0
.L87:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	insertElement
	mov	eax, 0
.L88:
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
