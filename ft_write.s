section .data

section .text
	global _ft_write
	extern ___error

_ft_write:
	mov     rax, 0x2000004
	syscall
	cmp rax, 9
	je return_error
	ret

return_error:
	mov     rax, -1
	push    rax
	call    ___error
	pop     rax
	ret