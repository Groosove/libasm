section .data

section .text
	global _ft_list_size

_ft_list_size:
	xor rax,rax

again:
	test rdi,rdi
		je return
	mov rdi, [rdi + 8]
	inc	rax
	jmp again

return:
	ret
