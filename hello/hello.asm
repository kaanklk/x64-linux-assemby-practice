section .data 
	msg db "Hello, world!", 0xA	; String and newline
	len equ $ - msg			; Calculate the lenght of string

section .text
	global _start			; Entry point for the linker

_start:
	mov rax, 1			; syscall: write
	mov rdi, 1			; file descriptor: stdout
	mov rsi, msg			; pointer to message
	mov rdx, len			; lenght of the message
	syscall				; make the system call

	mov rax, 60			; syscall: exit
	xor rdi, rdi			; exit code 0
	syscall				; make the system call
