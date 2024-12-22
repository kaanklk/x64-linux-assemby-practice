section .data
	msg db  "Hello, Kaan!",0		; Allocates memory and writes text and null terminator

section .text
	global _start				; Make _start label the entry point of the program

_start:
	mov rax, 1				; rax register is 1, hence its sys_write
	mov rdi, 1				; 1 stands for stdout
	mov rsi, msg				; msg memory address is moved to rsi, message to be printed
	mov rdx, 13				; 13 is the length of message, 12 and null terminator
	syscall

	mov rax, 60				; sys_exit system call
	mov rdi, 0x0				; exit code is 0
	syscall
