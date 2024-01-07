.file	"addition.c"    ||     {}
.intel_syntax noprefix    ||     {}
.text    ||     {}
.globl	addition    ||     {}
.type	addition, @function    ||     {}
addition:    ||     {}
.LFB0:    ||     {}
.cfi_startproc    ||     {rsp, rcx, rbp, rsi, rdi, rbx}
endbr64    ||     {rsp, rcx, rbp, rsi, rdi, rbx}
push	rbp    ||     {rsp, rcx, rbp, rsi, rdi, rbx}
.cfi_def_cfa_offset 16    ||     {rsp, rcx, rsi, rdi, rbx}
.cfi_offset 6, -16    ||     {rsp, rcx, rsi, rdi, rbx}
mov	rbp, rsp    ||     {rsp, rcx, rsi, rdi, rbx}
.cfi_def_cfa_register 6    ||     {rsp, rcx, rbp, rsi, rdi, rbx}
mov	DWORD PTR -4[rbp], edi    ||     {rsp, rcx, rbp, rsi, rdi, rbx}
mov	DWORD PTR -8[rbp], esi    ||     {rsp, rcx, rbp, rsi, rbx}
mov	edx, DWORD PTR -4[rbp]    ||     {rsp, rcx, rbp, rbx}
mov	eax, DWORD PTR -8[rbp]    ||     {rsp, rcx, rbp, rbx, rdx}
add	eax, edx    ||     {rsp, rcx, rbp, rbx, rdx, rax}
pop	rbp    ||     {rsp, rcx, rbp, rbx, rdx, rax}
.cfi_def_cfa 7, 8    ||     {rsp, rcx, rbp, rbx, rdx, rax}
ret    ||     {rsp, rcx, rbp, rbx, rdx, rax}
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
.cfi_startproc    ||     {rsp, rcx, rbp, rsi, rdi, rbx, rdx}
endbr64    ||     {rsp, rcx, rbp, rsi, rdi, rbx, rdx}
push	rbp    ||     {rsp, rcx, rbp, rsi, rdi, rbx, rdx}
.cfi_def_cfa_offset 16    ||     {rsp, rcx, rsi, rdi, rbx, rdx}
.cfi_offset 6, -16    ||     {rsp, rcx, rsi, rdi, rbx, rdx}
mov	rbp, rsp    ||     {rsp, rcx, rsi, rdi, rbx, rdx}
.cfi_def_cfa_register 6    ||     {rsp, rcx, rbp, rsi, rdi, rbx, rdx}
sub	rsp, 16    ||     {rsp, rcx, rbp, rsi, rdi, rbx, rdx}
mov	eax, 0    ||     {rsp, rcx, rbp, rsi, rdi, rbx, rdx}
call	saluer@PLT    ||     {rsp, rcx, rbp, rsi, rdi, rbx, rdx, rax}
mov	DWORD PTR -8[rbp], 10    ||     {rsp, rcx, rbp, rbx}
mov	DWORD PTR -4[rbp], 5    ||     {rsp, rcx, rbp, rbx}
mov	edx, DWORD PTR -4[rbp]    ||     {rsp, rcx, rbp, rbx}
mov	eax, DWORD PTR -8[rbp]    ||     {rsp, rcx, rbp, rbx, rdx}
mov	esi, edx    ||     {rsp, rcx, rbp, rbx, rdx, rax}
mov	edi, eax    ||     {rsp, rcx, rbp, rsi, rbx, rax}
call	addition    ||     {rsp, rcx, rbp, rsi, rdi, rbx}
mov	esi, eax    ||     {rsp, rcx, rbp, rbx, rdx, rax}
lea	rdi, .LC0[rip]    ||     {rsp, rcx, rbp, rsi, rbx, rdx}
mov	eax, 0    ||     {rsp, rcx, rbp, rsi, rdi, rbx, rdx}
call	printf@PLT    ||     {rsp, rcx, rbp, rsi, rdi, rbx, rdx, rax}
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
