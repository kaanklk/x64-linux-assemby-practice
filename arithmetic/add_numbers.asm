section .data
	num1 dq 10		; Declaring QWORD(8 bytes) initialized to 10
	num2 dq 20
	result dq 0		; Reserve space for the result, initialized to 0

section .text
	global _start

_start:
	mov rax, [num1] 	; Load num1 value to rax
	mov rbx, [num2]		; Load num2 value to rbx

	add rax, rbx		; rax = num1 + num2
	mov [result], rax	; Store the result
	mov rax, 60		; sys_exit
	mov rdi, 0x0		; exit code 0
	syscall
