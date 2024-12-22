section .data
	num1 dq 20		; num1 is 20
	num2 dq 2		; num2 is 2

section .text
	global _start

_start:
	mov rax, [num1]		; rax = 20
	mov rbx, [num2]		; rbx = 2

	div rbx			; divide rax by rbx 20/2

	mov rax, 60		; sys_exit
	mov rdi, 0x0		; exit code 0
	syscall
