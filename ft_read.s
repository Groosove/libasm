section .data

section .text
	global _ft_read
	extern ___error

_ft_read:
	mov     rax, 0x2000003
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
