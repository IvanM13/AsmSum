; sum.asm
extern printf
section .data
		number1		dq		1475
		number2		dq		345
		fmt			db		"The numbers are %ld and %ld",10,0
		fmtint		db		"%s %ld",10,0
		sum			db		"The sum is",0
section .bss
	result	resq	1
section .text
		global main
main:
	push	rbp
	mov		rbp, rsp
	mov		rdi, fmt
	mov		rsi, [number1]
	mov		rdx, [number2]
	mov		rax, 0
	call	printf
	
	mov		rax, [number1]
	add		rax, [number2]
	mov		[result], rax
	
	lea		rdi, [fmtint]
	lea		rsi, [sum]
	mov		rdx, [result]
	mov		rax, 0
	call	printf
	
mov		rsp, rbp
pop 	rbp
ret
	
	