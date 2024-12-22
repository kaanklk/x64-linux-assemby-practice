section .data
	num1 dq 30		; num1 holds the value 30
	num2 dq 10		; num2 holds the value 10

section .text
	global _start

_start:
	mov rax, [num1]		; rax = num1 (30)
	sub rax, [num2]		; rax = rax - [num2] (20)

	mov rax, 60		; sys_exit
	mov rdi, 0x0
	syscall
