.file	"rowset.c"    ||     {}
.intel_syntax noprefix    ||     {}
.text    ||     {}
.globl	__merger_cond_true_1028105526    ||     {}
.data    ||     {}
.align 4    ||     {}
.type	__merger_cond_true_1028105526, @object    ||     {}
.size	__merger_cond_true_1028105526, 4    ||     {}
__merger_cond_true_1028105526:    ||     {}
.long	1    ||     {}
.text    ||     {}
.globl	sqlite3RowSetInit    ||     {}
.type	sqlite3RowSetInit, @function    ||     {}
sqlite3RowSetInit:    ||     {}
.LFB6:    ||     {}
.cfi_startproc    ||     {}
push	rbp    ||     {rbp}
.cfi_def_cfa_offset 16    ||     {}
.cfi_offset 6, -16    ||     {}
mov	rbp, rsp    ||     {rsp}
.cfi_def_cfa_register 6    ||     {}
sub	rsp, 32    ||     {rsp}
mov	QWORD PTR -24[rbp], rdi    ||     {rdi}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	esi, 56    ||     {}
mov	rdi, rax    ||     {rax}
call	sqlite3DbMallocRawNN@PLT    ||     {rax}
mov	QWORD PTR -8[rbp], rax    ||     {rax}
cmp	QWORD PTR -8[rbp], 0    ||     {}
je	.L2    ||     {}
mov	rdx, QWORD PTR -8[rbp]    ||     {rbp}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	rsi, rdx    ||     {rdx}
mov	rdi, rax    ||     {rax}
call	sqlite3DbMallocSize@PLT    ||     {rax}
mov	DWORD PTR -12[rbp], eax    ||     {rax}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	QWORD PTR [rax], 0    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -24[rbp]    ||     {rbp}
mov	QWORD PTR 8[rax], rdx    ||     {rdx}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	QWORD PTR 16[rax], 0    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	QWORD PTR 24[rax], 0    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	QWORD PTR 40[rax], 0    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
lea	rdx, 56[rax]    ||     {rax}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	QWORD PTR 32[rax], rdx    ||     {rdx}
mov	eax, DWORD PTR -12[rbp]    ||     {rbp}
cdqe    ||     {}
sub	rax, 56    ||     {rax}
movabs	rdx, -6148914691236517205    ||     {}
mul	rdx    ||     {rdx}
mov	rax, rdx    ||     {rdx}
shr	rax, 4    ||     {rax}
mov	edx, eax    ||     {rax}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	WORD PTR 48[rax], dx    ||     {rdx}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	WORD PTR 50[rax], 1    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	DWORD PTR 52[rax], 0    ||     {}
.L2:    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
leave    ||     {}
.cfi_def_cfa 7, 8    ||     {}
ret    ||     {}
.cfi_endproc    ||     {}
.LFE6:    ||     {}
.size	sqlite3RowSetInit, .-sqlite3RowSetInit    ||     {}
.globl	sqlite3RowSetClear    ||     {}
.type	sqlite3RowSetClear, @function    ||     {}
sqlite3RowSetClear:    ||     {}
.LFB7:    ||     {}
.cfi_startproc    ||     {}
push	rbp    ||     {rbp}
.cfi_def_cfa_offset 16    ||     {}
.cfi_offset 6, -16    ||     {}
mov	rbp, rsp    ||     {rsp}
.cfi_def_cfa_register 6    ||     {}
sub	rsp, 48    ||     {rsp}
mov	QWORD PTR -40[rbp], rdi    ||     {rdi}
mov	rax, QWORD PTR -40[rbp]    ||     {rbp}
mov	QWORD PTR -16[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	rax, QWORD PTR [rax]    ||     {rax}
mov	QWORD PTR -8[rbp], rax    ||     {rax}
jmp	.L5    ||     {}
.L6:    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rax, QWORD PTR [rax]    ||     {rax}
mov	QWORD PTR -24[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax}
mov	rdx, QWORD PTR -8[rbp]    ||     {rbp}
mov	rsi, rdx    ||     {rdx}
mov	rdi, rax    ||     {rax}
call	sqlite3DbFree@PLT    ||     {rax}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	QWORD PTR -8[rbp], rax    ||     {rax}
.L5:    ||     {}
cmp	QWORD PTR -8[rbp], 0    ||     {}
jne	.L6    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR [rax], 0    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	WORD PTR 48[rax], 0    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 16[rax], 0    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 24[rax], 0    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 40[rax], 0    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	WORD PTR 50[rax], 1    ||     {}
nop    ||     {}
leave    ||     {}
.cfi_def_cfa 7, 8    ||     {}
ret    ||     {}
.cfi_endproc    ||     {}
.LFE7:    ||     {}
.size	sqlite3RowSetClear, .-sqlite3RowSetClear    ||     {}
.globl	sqlite3RowSetDelete    ||     {}
.type	sqlite3RowSetDelete, @function    ||     {}
sqlite3RowSetDelete:    ||     {}
.LFB8:    ||     {}
.cfi_startproc    ||     {}
push	rbp    ||     {rbp}
.cfi_def_cfa_offset 16    ||     {}
.cfi_offset 6, -16    ||     {}
mov	rbp, rsp    ||     {rsp}
.cfi_def_cfa_register 6    ||     {}
sub	rsp, 16    ||     {rsp}
mov	QWORD PTR -8[rbp], rdi    ||     {rdi}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdi, rax    ||     {rax}
call	sqlite3RowSetClear    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax}
mov	rdx, QWORD PTR -8[rbp]    ||     {rbp}
mov	rsi, rdx    ||     {rdx}
mov	rdi, rax    ||     {rax}
call	sqlite3DbFree@PLT    ||     {rax}
nop    ||     {}
leave    ||     {}
.cfi_def_cfa 7, 8    ||     {}
ret    ||     {}
.cfi_endproc    ||     {}
.LFE8:    ||     {}
.size	sqlite3RowSetDelete, .-sqlite3RowSetDelete    ||     {}
.type	rowSetEntryAlloc, @function    ||     {}
rowSetEntryAlloc:    ||     {}
.LFB9:    ||     {}
.cfi_startproc    ||     {rsp, rdi, rbp}
push	rbp    ||     {rsp, rdi, rbp}
.cfi_def_cfa_offset 16    ||     {rsp, rdi}
.cfi_offset 6, -16    ||     {rsp, rdi}
mov	rbp, rsp    ||     {rsp, rdi}
.cfi_def_cfa_register 6    ||     {rsp, rdi, rbp}
sub	rsp, 32    ||     {rsp, rdi, rbp}
mov	QWORD PTR -24[rbp], rdi    ||     {rdi, rbp}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
movzx	eax, WORD PTR 48[rax]    ||     {rax, rbp}
test	ax, ax    ||     {rax, rbp}
jne	.L9    ||     {rbp}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax, rbp}
mov	esi, 1016    ||     {rax, rbp}
mov	rdi, rax    ||     {rax, rbp}
call	sqlite3DbMallocRawNN@PLT    ||     {rax, rbp}
mov	QWORD PTR -8[rbp], rax    ||     {rax, rbp}
cmp	QWORD PTR -8[rbp], 0    ||     {rbp}
jne	.L10    ||     {rbp}
mov	eax, 0    ||     {rbp}
jmp	.L11    ||     {rax, rbp}
.L10:    ||     {}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	rdx, QWORD PTR [rax]    ||     {rax, rbp}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp, rdx}
mov	QWORD PTR [rax], rdx    ||     {rbp, rdx}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -8[rbp]    ||     {rbp}
mov	QWORD PTR [rax], rdx    ||     {rbp, rdx}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
lea	rdx, 8[rax]    ||     {rax, rbp}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp, rdx}
mov	QWORD PTR 32[rax], rdx    ||     {rbp, rdx}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	WORD PTR 48[rax], 42    ||     {rbp}
.L9:    ||     {}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
movzx	eax, WORD PTR 48[rax]    ||     {rax, rbp}
lea	edx, -1[rax]    ||     {rax, rbp}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp, rdx}
mov	WORD PTR 48[rax], dx    ||     {rbp, rdx}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	rax, QWORD PTR 32[rax]    ||     {rax, rbp}
lea	rcx, 24[rax]    ||     {rax, rbp}
mov	rdx, QWORD PTR -24[rbp]    ||     {rax, rcx, rbp}
mov	QWORD PTR 32[rdx], rcx    ||     {rax, rbp, rcx}
.L11:    ||     {}
leave    ||     {rax, rbp}
.cfi_def_cfa 7, 8    ||     {rax, rbp}
ret    ||     {rax, rbp}
.cfi_endproc    ||     {}
.LFE9:    ||     {}
.size	rowSetEntryAlloc, .-rowSetEntryAlloc    ||     {}
.globl	sqlite3RowSetInsert    ||     {}
.type	sqlite3RowSetInsert, @function    ||     {}
sqlite3RowSetInsert:    ||     {}
.LFB10:    ||     {}
.cfi_startproc    ||     {rsi, rsp, rdi, rbp}
push	rbp    ||     {rsi, rsp, rdi, rbp}
.cfi_def_cfa_offset 16    ||     {rsi, rsp, rdi}
.cfi_offset 6, -16    ||     {rsi, rsp, rdi}
mov	rbp, rsp    ||     {rsi, rsp, rdi}
.cfi_def_cfa_register 6    ||     {rsi, rsp, rdi, rbp}
sub	rsp, 432    ||     {rsi, rsp, rdi, rbp}
mov	QWORD PTR -424[rbp], rdi    ||     {rsi, rsp, rdi, rbp}
mov	QWORD PTR -432[rbp], rsi    ||     {rsi, rsp, rbp}
mov	rax, QWORD PTR -424[rbp]    ||     {rsp, rbp}
mov	rdi, rax    ||     {rsp, rax, rbp}
call	rowSetEntryAlloc    ||     {rsp, rdi, rbp}
mov	QWORD PTR -16[rbp], rax    ||     {rax, rbp}
cmp	QWORD PTR -16[rbp], 0    ||     {rax, rbp}
sete	al    ||     {rax, rbp}
movzx	eax, al    ||     {rax, rbp}
mov	QWORD PTR -24[rbp], rax    ||     {rax, rbp}
cmp	QWORD PTR -24[rbp], 0    ||     {rax, rbp}
jne	.L55    ||     {rax, rbp}
mov	DWORD PTR -28[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L15    ||     {rbp}
mov	DWORD PTR -32[rbp], 3    ||     {rbp}
.L15:    ||     {}
mov	DWORD PTR -4[rbp], 0    ||     {rbp}
jmp	.L16    ||     {rbp}
.L54:    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -432[rbp]    ||     {rbp}
mov	QWORD PTR [rax], rdx    ||     {rbp, rdx}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 8[rax], 0    ||     {rbp}
mov	rax, QWORD PTR -424[rbp]    ||     {rbp}
mov	rax, QWORD PTR 24[rax]    ||     {rax, rbp}
mov	QWORD PTR -48[rbp], rax    ||     {rax, rbp}
mov	rax, QWORD PTR -48[rbp]    ||     {rbp}
mov	QWORD PTR -56[rbp], rax    ||     {rax, rbp}
cmp	QWORD PTR -56[rbp], 0    ||     {rbp}
je	.L17    ||     {rbp}
mov	rax, QWORD PTR -48[rbp]    ||     {rbp}
mov	rax, QWORD PTR [rax]    ||     {rax, rbp}
cmp	QWORD PTR -432[rbp], rax    ||     {rax, rbp}
setle	al    ||     {rax, rbp}
movzx	eax, al    ||     {rax, rbp}
mov	QWORD PTR -64[rbp], rax    ||     {rax, rbp}
cmp	QWORD PTR -64[rbp], 0    ||     {rbp}
je	.L18    ||     {rbp}
mov	rax, QWORD PTR -424[rbp]    ||     {rbp}
movzx	eax, WORD PTR 50[rax]    ||     {rax, rbp}
and	eax, -2    ||     {rax, rbp}
mov	edx, eax    ||     {rax, rbp}
mov	rax, QWORD PTR -424[rbp]    ||     {rbp, rdx}
mov	WORD PTR 50[rax], dx    ||     {rbp, rdx}
.L18:    ||     {}
mov	DWORD PTR -68[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
je	.L19    ||     {rbp}
mov	DWORD PTR -72[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
je	.L20    ||     {rbp}
mov	DWORD PTR -76[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L21    ||     {rbp}
mov	DWORD PTR -236[rbp], 3    ||     {rbp}
jmp	.L16    ||     {rbp}
.L21:    ||     {}
mov	DWORD PTR -8[rbp], 0    ||     {rbp}
jmp	.L22    ||     {rbp}
.L36:    ||     {}
mov	DWORD PTR -80[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L23    ||     {rbp}
mov	DWORD PTR -84[rbp], 3    ||     {rbp}
mov	DWORD PTR -88[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L24    ||     {rbp}
mov	DWORD PTR -92[rbp], 3    ||     {rbp}
mov	DWORD PTR -96[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L25    ||     {rbp}
mov	DWORD PTR -100[rbp], 3    ||     {rbp}
.L25:    ||     {}
mov	DWORD PTR -104[rbp], 3    ||     {rbp}
.L24:    ||     {}
mov	DWORD PTR -108[rbp], 3    ||     {rbp}
mov	DWORD PTR -112[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L26    ||     {rbp}
mov	DWORD PTR -116[rbp], 3    ||     {rbp}
mov	DWORD PTR -120[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L27    ||     {rbp}
mov	DWORD PTR -124[rbp], 3    ||     {rbp}
.L27:    ||     {}
mov	DWORD PTR -128[rbp], 3    ||     {rbp}
mov	DWORD PTR -132[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L28    ||     {rbp}
mov	DWORD PTR -136[rbp], 3    ||     {rbp}
mov	DWORD PTR -140[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L29    ||     {rbp}
mov	DWORD PTR -144[rbp], 3    ||     {rbp}
.L29:    ||     {}
mov	DWORD PTR -148[rbp], 3    ||     {rbp}
mov	DWORD PTR -152[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L30    ||     {rbp}
mov	DWORD PTR -156[rbp], 3    ||     {rbp}
mov	DWORD PTR -160[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L31    ||     {rbp}
mov	DWORD PTR -164[rbp], 3    ||     {rbp}
.L31:    ||     {}
mov	DWORD PTR -168[rbp], 3    ||     {rbp}
mov	DWORD PTR -172[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L32    ||     {rbp}
mov	DWORD PTR -176[rbp], 3    ||     {rbp}
mov	DWORD PTR -180[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L33    ||     {rbp}
mov	DWORD PTR -184[rbp], 3    ||     {rbp}
.L33:    ||     {}
mov	DWORD PTR -188[rbp], 3    ||     {rbp}
mov	DWORD PTR -192[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L34    ||     {rbp}
mov	DWORD PTR -196[rbp], 3    ||     {rbp}
.L34:    ||     {}
mov	DWORD PTR -200[rbp], 3    ||     {rbp}
.L32:    ||     {}
mov	DWORD PTR -204[rbp], 3    ||     {rbp}
.L30:    ||     {}
mov	DWORD PTR -208[rbp], 3    ||     {rbp}
.L28:    ||     {}
mov	DWORD PTR -212[rbp], 3    ||     {rbp}
.L26:    ||     {}
mov	DWORD PTR -216[rbp], 3    ||     {rbp}
jmp	.L35    ||     {rbp}
.L23:    ||     {}
mov	rax, QWORD PTR -48[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 8[rax], rdx    ||     {rbp, rdx}
.L22:    ||     {}
mov	eax, DWORD PTR -8[rbp]    ||     {rbp}
lea	edx, 1[rax]    ||     {rax, rbp}
mov	DWORD PTR -8[rbp], edx    ||     {rax, rbp, rdx}
test	eax, eax    ||     {rax, rbp}
je	.L36    ||     {rbp}
.L35:    ||     {}
mov	DWORD PTR -220[rbp], 3    ||     {rbp}
mov	DWORD PTR -224[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L37    ||     {rbp}
mov	DWORD PTR -228[rbp], 3    ||     {rbp}
.L37:    ||     {}
mov	DWORD PTR -232[rbp], 3    ||     {rbp}
.L20:    ||     {}
mov	DWORD PTR -240[rbp], 3    ||     {rbp}
mov	DWORD PTR -244[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L38    ||     {rbp}
mov	DWORD PTR -248[rbp], 3    ||     {rbp}
mov	DWORD PTR -252[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L39    ||     {rbp}
mov	DWORD PTR -256[rbp], 3    ||     {rbp}
mov	DWORD PTR -260[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L40    ||     {rbp}
mov	DWORD PTR -264[rbp], 3    ||     {rbp}
mov	DWORD PTR -268[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L41    ||     {rbp}
mov	DWORD PTR -272[rbp], 3    ||     {rbp}
mov	DWORD PTR -276[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L42    ||     {rbp}
mov	DWORD PTR -280[rbp], 3    ||     {rbp}
.L42:    ||     {}
mov	DWORD PTR -284[rbp], 3    ||     {rbp}
.L41:    ||     {}
mov	DWORD PTR -288[rbp], 3    ||     {rbp}
.L40:    ||     {}
mov	DWORD PTR -292[rbp], 3    ||     {rbp}
mov	DWORD PTR -296[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L43    ||     {rbp}
mov	DWORD PTR -300[rbp], 3    ||     {rbp}
.L43:    ||     {}
mov	DWORD PTR -304[rbp], 3    ||     {rbp}
.L39:    ||     {}
mov	DWORD PTR -308[rbp], 3    ||     {rbp}
mov	DWORD PTR -312[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L44    ||     {rbp}
mov	DWORD PTR -316[rbp], 3    ||     {rbp}
.L44:    ||     {}
mov	DWORD PTR -320[rbp], 3    ||     {rbp}
.L38:    ||     {}
mov	DWORD PTR -324[rbp], 3    ||     {rbp}
.L19:    ||     {}
mov	DWORD PTR -328[rbp], 3    ||     {rbp}
.L17:    ||     {}
cmp	QWORD PTR -56[rbp], 0    ||     {rbp}
jne	.L45    ||     {rbp}
mov	DWORD PTR -332[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
je	.L46    ||     {rbp}
mov	DWORD PTR -336[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
je	.L47    ||     {rbp}
mov	rax, QWORD PTR -424[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 16[rax], rdx    ||     {rbp, rdx}
.L47:    ||     {}
mov	DWORD PTR -340[rbp], 3    ||     {rbp}
mov	DWORD PTR -344[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L48    ||     {rbp}
mov	DWORD PTR -348[rbp], 3    ||     {rbp}
mov	DWORD PTR -352[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L49    ||     {rbp}
mov	DWORD PTR -356[rbp], 3    ||     {rbp}
.L49:    ||     {}
mov	DWORD PTR -360[rbp], 3    ||     {rbp}
mov	DWORD PTR -364[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L50    ||     {rbp}
mov	DWORD PTR -368[rbp], 3    ||     {rbp}
mov	DWORD PTR -372[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L51    ||     {rbp}
mov	DWORD PTR -376[rbp], 3    ||     {rbp}
.L51:    ||     {}
mov	DWORD PTR -380[rbp], 3    ||     {rbp}
mov	DWORD PTR -384[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L52    ||     {rbp}
mov	DWORD PTR -388[rbp], 3    ||     {rbp}
.L52:    ||     {}
mov	DWORD PTR -392[rbp], 3    ||     {rbp}
.L50:    ||     {}
mov	DWORD PTR -396[rbp], 3    ||     {rbp}
.L48:    ||     {}
mov	DWORD PTR -400[rbp], 3    ||     {rbp}
.L46:    ||     {}
mov	DWORD PTR -404[rbp], 3    ||     {rbp}
mov	DWORD PTR -408[rbp], -2    ||     {rbp}
mov	eax, DWORD PTR __merger_cond_true_1028105526[rip]    ||     {rbp}
test	eax, eax    ||     {rax, rbp}
jne	.L53    ||     {rbp}
mov	DWORD PTR -412[rbp], 3    ||     {rbp}
.L53:    ||     {}
mov	DWORD PTR -416[rbp], 3    ||     {rbp}
.L45:    ||     {}
mov	rax, QWORD PTR -424[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 24[rax], rdx    ||     {rbp, rdx}
.L16:    ||     {}
mov	eax, DWORD PTR -4[rbp]    ||     {rbp}
lea	edx, 1[rax]    ||     {rax, rbp}
mov	DWORD PTR -4[rbp], edx    ||     {rax, rbp, rdx}
test	eax, eax    ||     {rax, rbp}
je	.L54    ||     {rax, rbp}
mov	DWORD PTR -36[rbp], 3    ||     {rax}
jmp	.L12    ||     {rax}
.L55:    ||     {}
nop    ||     {rax}
.L12:    ||     {}
leave    ||     {rax}
.cfi_def_cfa 7, 8    ||     {rax}
ret    ||     {rax}
.cfi_endproc    ||     {}
.LFE10:    ||     {}
.size	sqlite3RowSetInsert, .-sqlite3RowSetInsert    ||     {}
.type	rowSetEntryMerge, @function    ||     {}
rowSetEntryMerge:    ||     {}
.LFB11:    ||     {}
.cfi_startproc    ||     {}
push	rbp    ||     {rbp}
.cfi_def_cfa_offset 16    ||     {}
.cfi_offset 6, -16    ||     {}
mov	rbp, rsp    ||     {rsp}
.cfi_def_cfa_register 6    ||     {}
mov	QWORD PTR -40[rbp], rdi    ||     {rdi}
mov	QWORD PTR -48[rbp], rsi    ||     {rsi}
lea	rax, -32[rbp]    ||     {rbp}
mov	QWORD PTR -8[rbp], rax    ||     {rax}
.L61:    ||     {}
mov	rax, QWORD PTR -40[rbp]    ||     {rbp}
mov	rdx, QWORD PTR [rax]    ||     {rax}
mov	rax, QWORD PTR -48[rbp]    ||     {rbp}
mov	rax, QWORD PTR [rax]    ||     {rax}
cmp	rdx, rax    ||     {rax}
jg	.L57    ||     {}
mov	rax, QWORD PTR -40[rbp]    ||     {rbp}
mov	rdx, QWORD PTR [rax]    ||     {rax}
mov	rax, QWORD PTR -48[rbp]    ||     {rbp}
mov	rax, QWORD PTR [rax]    ||     {rax}
cmp	rdx, rax    ||     {rax}
jge	.L58    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -40[rbp]    ||     {rbp}
mov	QWORD PTR 8[rax], rdx    ||     {rdx}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax}
mov	QWORD PTR -8[rbp], rax    ||     {rax}
.L58:    ||     {}
mov	rax, QWORD PTR -40[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax}
mov	QWORD PTR -40[rbp], rax    ||     {rax}
cmp	QWORD PTR -40[rbp], 0    ||     {}
jne	.L61    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -48[rbp]    ||     {rbp}
mov	QWORD PTR 8[rax], rdx    ||     {rdx}
jmp	.L60    ||     {}
.L57:    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -48[rbp]    ||     {rbp}
mov	QWORD PTR 8[rax], rdx    ||     {rdx}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax}
mov	QWORD PTR -8[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -48[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax}
mov	QWORD PTR -48[rbp], rax    ||     {rax}
cmp	QWORD PTR -48[rbp], 0    ||     {}
jne	.L61    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -40[rbp]    ||     {rbp}
mov	QWORD PTR 8[rax], rdx    ||     {rdx}
.L60:    ||     {}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
pop	rbp    ||     {rbp}
.cfi_def_cfa 7, 8    ||     {}
ret    ||     {}
.cfi_endproc    ||     {}
.LFE11:    ||     {}
.size	rowSetEntryMerge, .-rowSetEntryMerge    ||     {}
.type	rowSetEntrySort, @function    ||     {}
rowSetEntrySort:    ||     {}
.LFB12:    ||     {}
.cfi_startproc    ||     {}
push	rbp    ||     {rbp}
.cfi_def_cfa_offset 16    ||     {}
.cfi_offset 6, -16    ||     {}
mov	rbp, rsp    ||     {rsp}
.cfi_def_cfa_register 6    ||     {}
sub	rsp, 352    ||     {rsp}
mov	QWORD PTR -344[rbp], rdi    ||     {rdi}
lea	rax, -336[rbp]    ||     {rbp}
mov	edx, 320    ||     {}
mov	esi, 0    ||     {}
mov	rdi, rax    ||     {rax}
call	memset@PLT    ||     {rax}
jmp	.L64    ||     {}
.L67:    ||     {}
mov	rax, QWORD PTR -344[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax}
mov	QWORD PTR -16[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -344[rbp]    ||     {rbp}
mov	QWORD PTR 8[rax], 0    ||     {}
mov	DWORD PTR -4[rbp], 0    ||     {}
jmp	.L65    ||     {}
.L66:    ||     {}
mov	eax, DWORD PTR -4[rbp]    ||     {rbp}
mov	rax, QWORD PTR -336[rbp+rax*8]    ||     {rax, rbp}
mov	rdx, QWORD PTR -344[rbp]    ||     {rbp}
mov	rsi, rdx    ||     {rdx}
mov	rdi, rax    ||     {rax}
call	rowSetEntryMerge    ||     {}
mov	QWORD PTR -344[rbp], rax    ||     {rax}
mov	eax, DWORD PTR -4[rbp]    ||     {rbp}
mov	QWORD PTR -336[rbp+rax*8], 0    ||     {}
add	DWORD PTR -4[rbp], 1    ||     {rbp}
.L65:    ||     {}
mov	eax, DWORD PTR -4[rbp]    ||     {rbp}
mov	rax, QWORD PTR -336[rbp+rax*8]    ||     {rax, rbp}
test	rax, rax    ||     {rax}
jne	.L66    ||     {}
mov	eax, DWORD PTR -4[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -344[rbp]    ||     {rbp}
mov	QWORD PTR -336[rbp+rax*8], rdx    ||     {rdx}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR -344[rbp], rax    ||     {rax}
.L64:    ||     {}
cmp	QWORD PTR -344[rbp], 0    ||     {}
jne	.L67    ||     {}
mov	rax, QWORD PTR -336[rbp]    ||     {rbp}
mov	QWORD PTR -344[rbp], rax    ||     {rax}
mov	DWORD PTR -4[rbp], 1    ||     {}
jmp	.L68    ||     {}
.L73:    ||     {}
mov	eax, DWORD PTR -4[rbp]    ||     {rbp}
mov	rax, QWORD PTR -336[rbp+rax*8]    ||     {rax, rbp}
test	rax, rax    ||     {rax}
je	.L75    ||     {}
cmp	QWORD PTR -344[rbp], 0    ||     {}
je	.L71    ||     {}
mov	eax, DWORD PTR -4[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -336[rbp+rax*8]    ||     {rax, rbp}
mov	rax, QWORD PTR -344[rbp]    ||     {rbp}
mov	rsi, rdx    ||     {rdx}
mov	rdi, rax    ||     {rax}
call	rowSetEntryMerge    ||     {}
jmp	.L72    ||     {}
.L71:    ||     {}
mov	eax, DWORD PTR -4[rbp]    ||     {rbp}
mov	rax, QWORD PTR -336[rbp+rax*8]    ||     {rax, rbp}
.L72:    ||     {}
mov	QWORD PTR -344[rbp], rax    ||     {rax}
jmp	.L70    ||     {}
.L75:    ||     {}
nop    ||     {}
.L70:    ||     {}
add	DWORD PTR -4[rbp], 1    ||     {rbp}
.L68:    ||     {}
cmp	DWORD PTR -4[rbp], 39    ||     {}
jbe	.L73    ||     {}
mov	rax, QWORD PTR -344[rbp]    ||     {rbp}
leave    ||     {}
.cfi_def_cfa 7, 8    ||     {}
ret    ||     {}
.cfi_endproc    ||     {}
.LFE12:    ||     {}
.size	rowSetEntrySort, .-rowSetEntrySort    ||     {}
.type	rowSetTreeToList, @function    ||     {}
rowSetTreeToList:    ||     {}
.LFB13:    ||     {}
.cfi_startproc    ||     {}
push	rbp    ||     {rbp}
.cfi_def_cfa_offset 16    ||     {}
.cfi_offset 6, -16    ||     {}
mov	rbp, rsp    ||     {rsp}
.cfi_def_cfa_register 6    ||     {}
sub	rsp, 48    ||     {rsp}
mov	QWORD PTR -24[rbp], rdi    ||     {rdi}
mov	QWORD PTR -32[rbp], rsi    ||     {rsi}
mov	QWORD PTR -40[rbp], rdx    ||     {rdx}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	rax, QWORD PTR 16[rax]    ||     {rax}
test	rax, rax    ||     {rax}
je	.L77    ||     {}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	rax, QWORD PTR 16[rax]    ||     {rax}
lea	rdx, -8[rbp]    ||     {rbp}
mov	rcx, QWORD PTR -32[rbp]    ||     {rbp}
mov	rsi, rcx    ||     {rcx}
mov	rdi, rax    ||     {rax}
call	rowSetTreeToList    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -24[rbp]    ||     {rbp}
mov	QWORD PTR 8[rax], rdx    ||     {rdx}
jmp	.L78    ||     {}
.L77:    ||     {}
mov	rax, QWORD PTR -32[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -24[rbp]    ||     {rbp}
mov	QWORD PTR [rax], rdx    ||     {rdx}
.L78:    ||     {}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax}
test	rax, rax    ||     {rax}
je	.L79    ||     {}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
lea	rcx, 8[rax]    ||     {rax}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax}
mov	rdx, QWORD PTR -40[rbp]    ||     {rbp}
mov	rsi, rcx    ||     {rcx}
mov	rdi, rax    ||     {rax}
call	rowSetTreeToList    ||     {}
jmp	.L81    ||     {}
.L79:    ||     {}
mov	rax, QWORD PTR -40[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -24[rbp]    ||     {rbp}
mov	QWORD PTR [rax], rdx    ||     {rdx}
.L81:    ||     {}
nop    ||     {}
leave    ||     {}
.cfi_def_cfa 7, 8    ||     {}
ret    ||     {}
.cfi_endproc    ||     {}
.LFE13:    ||     {}
.size	rowSetTreeToList, .-rowSetTreeToList    ||     {}
.type	rowSetNDeepTree, @function    ||     {}
rowSetNDeepTree:    ||     {}
.LFB14:    ||     {}
.cfi_startproc    ||     {}
push	rbp    ||     {rbp}
.cfi_def_cfa_offset 16    ||     {}
.cfi_offset 6, -16    ||     {}
mov	rbp, rsp    ||     {rsp}
.cfi_def_cfa_register 6    ||     {}
sub	rsp, 32    ||     {rsp}
mov	QWORD PTR -24[rbp], rdi    ||     {rdi}
mov	DWORD PTR -28[rbp], esi    ||     {rsi}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	rax, QWORD PTR [rax]    ||     {rax}
test	rax, rax    ||     {rax}
jne	.L83    ||     {}
mov	eax, 0    ||     {}
jmp	.L84    ||     {}
.L83:    ||     {}
cmp	DWORD PTR -28[rbp], 1    ||     {}
jle	.L85    ||     {}
mov	eax, DWORD PTR -28[rbp]    ||     {rbp}
lea	edx, -1[rax]    ||     {rax}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	esi, edx    ||     {rdx}
mov	rdi, rax    ||     {rax}
call	rowSetNDeepTree    ||     {}
mov	QWORD PTR -16[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	rax, QWORD PTR [rax]    ||     {rax}
mov	QWORD PTR -8[rbp], rax    ||     {rax}
cmp	QWORD PTR -8[rbp], 0    ||     {}
jne	.L86    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
jmp	.L84    ||     {}
.L86:    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 16[rax], rdx    ||     {rdx}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdx, QWORD PTR 8[rax]    ||     {rax}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	QWORD PTR [rax], rdx    ||     {rdx}
mov	eax, DWORD PTR -28[rbp]    ||     {rbp}
lea	edx, -1[rax]    ||     {rax}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	esi, edx    ||     {rdx}
mov	rdi, rax    ||     {rax}
call	rowSetNDeepTree    ||     {}
mov	rdx, QWORD PTR -8[rbp]    ||     {rbp}
mov	QWORD PTR 8[rdx], rax    ||     {rax}
jmp	.L87    ||     {}
.L85:    ||     {}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	rax, QWORD PTR [rax]    ||     {rax}
mov	QWORD PTR -8[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdx, QWORD PTR 8[rax]    ||     {rax}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	QWORD PTR [rax], rdx    ||     {rdx}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	QWORD PTR 8[rax], 0    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdx, QWORD PTR 8[rax]    ||     {rax}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	QWORD PTR 16[rax], rdx    ||     {rdx}
.L87:    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
.L84:    ||     {}
leave    ||     {}
.cfi_def_cfa 7, 8    ||     {}
ret    ||     {}
.cfi_endproc    ||     {}
.LFE14:    ||     {}
.size	rowSetNDeepTree, .-rowSetNDeepTree    ||     {}
.type	rowSetListToTree, @function    ||     {}
rowSetListToTree:    ||     {}
.LFB15:    ||     {}
.cfi_startproc    ||     {}
push	rbp    ||     {rbp}
.cfi_def_cfa_offset 16    ||     {}
.cfi_offset 6, -16    ||     {}
mov	rbp, rsp    ||     {rsp}
.cfi_def_cfa_register 6    ||     {}
sub	rsp, 48    ||     {rsp}
mov	QWORD PTR -40[rbp], rdi    ||     {rdi}
mov	rax, QWORD PTR -40[rbp]    ||     {rbp}
mov	QWORD PTR -16[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax}
mov	QWORD PTR -40[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 8[rax], 0    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	rdx, QWORD PTR 8[rax]    ||     {rax}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 16[rax], rdx    ||     {rdx}
mov	DWORD PTR -4[rbp], 1    ||     {}
jmp	.L89    ||     {}
.L90:    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR -24[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -40[rbp]    ||     {rbp}
mov	QWORD PTR -16[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax}
mov	QWORD PTR -40[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -24[rbp]    ||     {rbp}
mov	QWORD PTR 16[rax], rdx    ||     {rdx}
mov	edx, DWORD PTR -4[rbp]    ||     {rbp}
lea	rax, -40[rbp]    ||     {rbp}
mov	esi, edx    ||     {rdx}
mov	rdi, rax    ||     {rax}
call	rowSetNDeepTree    ||     {}
mov	rdx, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 8[rdx], rax    ||     {rax}
add	DWORD PTR -4[rbp], 1    ||     {rbp}
.L89:    ||     {}
mov	rax, QWORD PTR -40[rbp]    ||     {rbp}
test	rax, rax    ||     {rax}
jne	.L90    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
leave    ||     {}
.cfi_def_cfa 7, 8    ||     {}
ret    ||     {}
.cfi_endproc    ||     {}
.LFE15:    ||     {}
.size	rowSetListToTree, .-rowSetListToTree    ||     {}
.globl	sqlite3RowSetNext    ||     {}
.type	sqlite3RowSetNext, @function    ||     {}
sqlite3RowSetNext:    ||     {}
.LFB16:    ||     {}
.cfi_startproc    ||     {}
push	rbp    ||     {rbp}
.cfi_def_cfa_offset 16    ||     {}
.cfi_offset 6, -16    ||     {}
mov	rbp, rsp    ||     {rsp}
.cfi_def_cfa_register 6    ||     {}
sub	rsp, 16    ||     {rsp}
mov	QWORD PTR -8[rbp], rdi    ||     {rdi}
mov	QWORD PTR -16[rbp], rsi    ||     {rsi}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
movzx	eax, WORD PTR 50[rax]    ||     {rax}
movzx	eax, ax    ||     {rax}
and	eax, 2    ||     {rax}
test	eax, eax    ||     {rax}
jne	.L93    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
movzx	eax, WORD PTR 50[rax]    ||     {rax}
movzx	eax, ax    ||     {rax}
and	eax, 1    ||     {rax}
test	eax, eax    ||     {rax}
jne	.L94    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rax, QWORD PTR 16[rax]    ||     {rax}
mov	rdi, rax    ||     {rax}
call	rowSetEntrySort    ||     {}
mov	rdx, QWORD PTR -8[rbp]    ||     {rbp}
mov	QWORD PTR 16[rdx], rax    ||     {rax}
.L94:    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
movzx	eax, WORD PTR 50[rax]    ||     {rax}
or	eax, 3    ||     {rax}
mov	edx, eax    ||     {rax}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	WORD PTR 50[rax], dx    ||     {rdx}
.L93:    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rax, QWORD PTR 16[rax]    ||     {rax}
test	rax, rax    ||     {rax}
je	.L95    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rax, QWORD PTR 16[rax]    ||     {rax}
mov	rdx, QWORD PTR [rax]    ||     {rax}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR [rax], rdx    ||     {rdx}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rax, QWORD PTR 16[rax]    ||     {rax}
mov	rdx, QWORD PTR 8[rax]    ||     {rax}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	QWORD PTR 16[rax], rdx    ||     {rdx}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rax, QWORD PTR 16[rax]    ||     {rax}
test	rax, rax    ||     {rax}
jne	.L96    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdi, rax    ||     {rax}
call	sqlite3RowSetClear    ||     {}
.L96:    ||     {}
mov	eax, 1    ||     {}
jmp	.L97    ||     {}
.L95:    ||     {}
mov	eax, 0    ||     {}
.L97:    ||     {}
leave    ||     {}
.cfi_def_cfa 7, 8    ||     {}
ret    ||     {}
.cfi_endproc    ||     {}
.LFE16:    ||     {}
.size	sqlite3RowSetNext, .-sqlite3RowSetNext    ||     {}
.globl	sqlite3RowSetTest    ||     {}
.type	sqlite3RowSetTest, @function    ||     {}
sqlite3RowSetTest:    ||     {}
.LFB17:    ||     {}
.cfi_startproc    ||     {}
push	rbp    ||     {rbp}
.cfi_def_cfa_offset 16    ||     {}
.cfi_offset 6, -16    ||     {}
mov	rbp, rsp    ||     {rsp}
.cfi_def_cfa_register 6    ||     {}
sub	rsp, 80    ||     {rsp}
mov	QWORD PTR -56[rbp], rdi    ||     {rdi}
mov	DWORD PTR -60[rbp], esi    ||     {rsi}
mov	QWORD PTR -72[rbp], rdx    ||     {rdx}
mov	rax, QWORD PTR -56[rbp]    ||     {rbp}
mov	eax, DWORD PTR 52[rax]    ||     {rax}
cmp	DWORD PTR -60[rbp], eax    ||     {rax}
je	.L99    ||     {}
mov	rax, QWORD PTR -56[rbp]    ||     {rbp}
mov	rax, QWORD PTR 16[rax]    ||     {rax}
mov	QWORD PTR -8[rbp], rax    ||     {rax}
cmp	QWORD PTR -8[rbp], 0    ||     {}
je	.L100    ||     {}
mov	rax, QWORD PTR -56[rbp]    ||     {rbp}
add	rax, 40    ||     {rax}
mov	QWORD PTR -24[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -56[rbp]    ||     {rbp}
movzx	eax, WORD PTR 50[rax]    ||     {rax}
movzx	eax, ax    ||     {rax}
and	eax, 1    ||     {rax}
test	eax, eax    ||     {rax}
jne	.L101    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdi, rax    ||     {rax}
call	rowSetEntrySort    ||     {}
mov	QWORD PTR -8[rbp], rax    ||     {rax}
.L101:    ||     {}
mov	rax, QWORD PTR -56[rbp]    ||     {rbp}
mov	rax, QWORD PTR 40[rax]    ||     {rax}
mov	QWORD PTR -16[rbp], rax    ||     {rax}
jmp	.L102    ||     {}
.L105:    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
add	rax, 8    ||     {rax}
mov	QWORD PTR -24[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	rax, QWORD PTR 16[rax]    ||     {rax}
test	rax, rax    ||     {rax}
jne	.L103    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdi, rax    ||     {rax}
call	rowSetListToTree    ||     {}
mov	rdx, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 16[rdx], rax    ||     {rax}
jmp	.L104    ||     {}
.L103:    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	rax, QWORD PTR 16[rax]    ||     {rax}
lea	rdx, -40[rbp]    ||     {rbp}
lea	rcx, -32[rbp]    ||     {rbp}
mov	rsi, rcx    ||     {rcx}
mov	rdi, rax    ||     {rax}
call	rowSetTreeToList    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 16[rax], 0    ||     {}
mov	rax, QWORD PTR -32[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -8[rbp]    ||     {rbp}
mov	rsi, rdx    ||     {rdx}
mov	rdi, rax    ||     {rax}
call	rowSetEntryMerge    ||     {}
mov	QWORD PTR -8[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax}
mov	QWORD PTR -16[rbp], rax    ||     {rax}
.L102:    ||     {}
cmp	QWORD PTR -16[rbp], 0    ||     {}
jne	.L105    ||     {}
.L104:    ||     {}
cmp	QWORD PTR -16[rbp], 0    ||     {}
jne	.L106    ||     {}
mov	rax, QWORD PTR -56[rbp]    ||     {rbp}
mov	rdi, rax    ||     {rax}
call	rowSetEntryAlloc    ||     {}
mov	QWORD PTR -16[rbp], rax    ||     {rax}
mov	rax, QWORD PTR -24[rbp]    ||     {rbp}
mov	rdx, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR [rax], rdx    ||     {rdx}
cmp	QWORD PTR -16[rbp], 0    ||     {}
je	.L106    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR [rax], 0    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 8[rax], 0    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rdi, rax    ||     {rax}
call	rowSetListToTree    ||     {}
mov	rdx, QWORD PTR -16[rbp]    ||     {rbp}
mov	QWORD PTR 16[rdx], rax    ||     {rax}
.L106:    ||     {}
mov	rax, QWORD PTR -56[rbp]    ||     {rbp}
mov	QWORD PTR 16[rax], 0    ||     {}
mov	rax, QWORD PTR -56[rbp]    ||     {rbp}
mov	QWORD PTR 24[rax], 0    ||     {}
mov	rax, QWORD PTR -56[rbp]    ||     {rbp}
movzx	eax, WORD PTR 50[rax]    ||     {rax}
or	eax, 1    ||     {rax}
mov	edx, eax    ||     {rax}
mov	rax, QWORD PTR -56[rbp]    ||     {rbp}
mov	WORD PTR 50[rax], dx    ||     {rdx}
.L100:    ||     {}
mov	rax, QWORD PTR -56[rbp]    ||     {rbp}
mov	edx, DWORD PTR -60[rbp]    ||     {rbp}
mov	DWORD PTR 52[rax], edx    ||     {rdx}
.L99:    ||     {}
mov	rax, QWORD PTR -56[rbp]    ||     {rbp}
mov	rax, QWORD PTR 40[rax]    ||     {rax}
mov	QWORD PTR -16[rbp], rax    ||     {rax}
jmp	.L107    ||     {}
.L113:    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	rax, QWORD PTR 16[rax]    ||     {rax}
mov	QWORD PTR -8[rbp], rax    ||     {rax}
jmp	.L108    ||     {}
.L112:    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rax, QWORD PTR [rax]    ||     {rax}
cmp	QWORD PTR -72[rbp], rax    ||     {rax}
jle	.L109    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax}
mov	QWORD PTR -8[rbp], rax    ||     {rax}
jmp	.L108    ||     {}
.L109:    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rax, QWORD PTR [rax]    ||     {rax}
cmp	QWORD PTR -72[rbp], rax    ||     {rax}
jge	.L110    ||     {}
mov	rax, QWORD PTR -8[rbp]    ||     {rbp}
mov	rax, QWORD PTR 16[rax]    ||     {rax}
mov	QWORD PTR -8[rbp], rax    ||     {rax}
jmp	.L108    ||     {}
.L110:    ||     {}
mov	eax, 1    ||     {}
jmp	.L111    ||     {}
.L108:    ||     {}
cmp	QWORD PTR -8[rbp], 0    ||     {}
jne	.L112    ||     {}
mov	rax, QWORD PTR -16[rbp]    ||     {rbp}
mov	rax, QWORD PTR 8[rax]    ||     {rax}
mov	QWORD PTR -16[rbp], rax    ||     {rax}
.L107:    ||     {}
cmp	QWORD PTR -16[rbp], 0    ||     {}
jne	.L113    ||     {}
mov	eax, 0    ||     {}
.L111:    ||     {}
leave    ||     {}
.cfi_def_cfa 7, 8    ||     {}
ret    ||     {}
.cfi_endproc    ||     {}
.LFE17:    ||     {}
.size	sqlite3RowSetTest, .-sqlite3RowSetTest    ||     {}
.ident	"GCC: (Debian 13.2.0-6) 13.2.0"    ||     {}
.section	.note.GNU-stack,"",@progbits    ||     {}
