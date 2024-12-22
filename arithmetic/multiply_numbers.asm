section .data
	num1 dq 3		; num1 is 3
	num2 dq 5		; num2 is 5

section .text
	global _start

_start:
	mov rax, [num1]		; rax = num1 (3)
	mov rbx, [num2]		; rbx = num2 (5)
	mul rbx			; rbx is multiplied by rax

	mov rax, 60		; sys_exit
	mov rdi, 0x0		; exit code 0
	syscall
