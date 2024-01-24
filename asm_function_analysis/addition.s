.file	"addition.c"    ||     {}
.intel_syntax noprefix    ||     {}
.text    ||     {}
.globl	addition    ||     {}
.type	addition, @function    ||     {}
addition:    ||     {}
.LFB0:    ||     {}
.cfi_startproc    ||     {rcx, rbx, rdi, rbp, rsp, rsi}
endbr64    ||     {rcx, rbx, rdi, rbp, rsp, rsi}
push	rbp    ||     {rcx, rbx, rdi, rbp, rsp, rsi}
.cfi_def_cfa_offset 16    ||     {rcx, rbx, rdi, rsp, rsi}
.cfi_offset 6, -16    ||     {rcx, rbx, rdi, rsp, rsi}
mov	rbp, rsp    ||     {rcx, rbx, rdi, rsp, rsi}
.cfi_def_cfa_register 6    ||     {rcx, rbp, rdi, rbx, rsp, rsi}
mov	DWORD PTR -4[rbp], edi    ||     {rcx, rbp, rdi, rbx, rsp, rsi}
mov	DWORD PTR -8[rbp], esi    ||     {rcx, rbp, rbx, rsp, rsi}
mov	edx, DWORD PTR -4[rbp]    ||     {rcx, rbx, rbp, rsp}
mov	eax, DWORD PTR -8[rbp]    ||     {rcx, rbx, rbp, rsp, rdx}
add	eax, edx    ||     {rcx, rax, rbp, rbx, rsp, rdx}
pop	rbp    ||     {rcx, rax, rbp, rbx, rsp, rdx}
.cfi_def_cfa 7, 8    ||     {rcx, rax, rbp, rbx, rsp, rdx}
ret    ||     {rcx, rax, rbp, rbx, rsp, rdx}
.cfi_endproc    ||     {}
.LFE0:    ||     {}
.size	addition, .-addition    ||     {rdi}
.section	.rodata    ||     {}
.LC0:    ||     {}
.string	"Addition : %d\n"    ||     {}
.text    ||     {}
.globl	main    ||     {}
.type	main, @function    ||     {}
main:    ||     {}
.LFB1:    ||     {}
.cfi_startproc    ||     {rcx, rbp, rbx, rsp}
endbr64    ||     {rcx, rbx, rbp, rsp}
push	rbp    ||     {rcx, rbp, rbx, rsp}
.cfi_def_cfa_offset 16    ||     {rcx, rbx, rsp}
.cfi_offset 6, -16    ||     {rcx, rbx, rsp}
mov	rbp, rsp    ||     {rcx, rbx, rsp}
.cfi_def_cfa_register 6    ||     {rcx, rbx, rbp, rsp}
sub	rsp, 16    ||     {rcx, rbp, rbx, rsp}
mov	DWORD PTR -8[rbp], 10    ||     {rcx, rbp, rbx, rsp}
mov	DWORD PTR -4[rbp], 5    ||     {rcx, rbx, rbp, rsp}
mov	edx, DWORD PTR -4[rbp]    ||     {rcx, rbp, rbx, rsp}
mov	eax, DWORD PTR -8[rbp]    ||     {rcx, rbp, rbx, rsp, rdx}
mov	esi, edx    ||     {rax, rcx, rbx, rbp, rsp, rdx}
mov	edi, eax    ||     {rcx, rax, rbp, rbx, rsp, rsi}
call	addition    ||     {rcx, rbx, rdi, rbp, rsp, rsi}
mov	esi, eax    ||     {rcx, rax, rbp, rbx, rsp, rdx}
lea	rdi, .LC0[rip]    ||     {rcx, rbx, rbp, rsp, rsi, rdx}
mov	eax, 0    ||     {rcx, rbx, rdi, rbp, rsp, rsi, rdx}
call	printf@PLT    ||     {rax, rcx, rdi, rbp, rbx, rsp, rsi, rdx}
mov	eax, 0    ||     {}
leave    ||     {}
.cfi_def_cfa 7, 8    ||     {}
ret    ||     {}
.cfi_endproc    ||     {}
.LFE1:    ||     {}
.size	main, .-main    ||     {}
.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"    ||     {}
.section	.note.GNU-stack,"",@progbits    ||     {}
.section	.note.gnu.property,"a"    ||     {}
.align 8    ||     {}
.long	 1f - 0f    ||     {}
.long	 4f - 1f    ||     {}
.long	 5    ||     {}
0:    ||     {}
.string	 "GNU"    ||     {}
1:    ||     {}
.align 8    ||     {}
.long	 0xc0000002    ||     {}
.long	 3f - 2f    ||     {}
2:    ||     {}
.long	 0x3    ||     {}
3:    ||     {}
.align 8    ||     {}
4:    ||     {}
