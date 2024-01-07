.file	"addition.c" 1
.intel_syntax noprefix 2
.text 3
.globl	addition 4
.type	addition, @function 5
addition: 6
.LFB0: 7
.cfi_startproc 8
endbr64 9
push	rbp 10
.cfi_def_cfa_offset 16 11
.cfi_offset 6, -16 12
mov	rbp, rsp 13
.cfi_def_cfa_register 6 14
mov	DWORD PTR -4[rbp], edi 15
mov	DWORD PTR -8[rbp], esi 16
mov	edx, DWORD PTR -4[rbp] 17
mov	eax, DWORD PTR -8[rbp] 18
add	eax, edx 19
pop	rbp 20
.cfi_def_cfa 7, 8 21
ret 22
.cfi_endproc 23
.LFE0: 24
.size	addition, .-addition 25
.section	.rodata 26
.LC0: 27
.string	"Addition : %d\n" 28
.text 29
.globl	main 30
.type	main, @function 31
main: 32
.LFB1: 33
.cfi_startproc 34
endbr64 35
push	rbp 36
.cfi_def_cfa_offset 16 37
.cfi_offset 6, -16 38
mov	rbp, rsp 39
.cfi_def_cfa_register 6 40
sub	rsp, 16 41
mov	eax, 0 42
call	saluer@PLT 43
mov	DWORD PTR -8[rbp], 10 44
mov	DWORD PTR -4[rbp], 5 45
mov	edx, DWORD PTR -4[rbp] 46
mov	eax, DWORD PTR -8[rbp] 47
mov	esi, edx 48
mov	edi, eax 49
call	addition 50
mov	esi, eax 51
lea	rdi, .LC0[rip] 52
mov	eax, 0 53
call	printf@PLT 54
mov	eax, 0 55
leave 56
.cfi_def_cfa 7, 8 57
ret 58
.cfi_endproc 59
.LFE1: 60
.size	main, .-main 61
.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0" 62
.section	.note.GNU-stack,"",@progbits 63
.section	.note.gnu.property,"a" 64
.align 8 65
.long	 1f - 0f 66
.long	 4f - 1f 67
.long	 5 68
0: 69
.string	 "GNU" 70
1: 71
.align 8 72
.long	 0xc0000002 73
.long	 3f - 2f 74
2: 75
.long	 0x3 76
3: 77
.align 8 78
4: 79
