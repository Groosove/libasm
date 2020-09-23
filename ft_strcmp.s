section .data

section .text
	global _ft_strcmp

_ft_strcmp:
	xor rcx, rcx
again:
	mov al, byte[rdi+rcx]
	mov dl, byte[rsi+rcx]
	sub rax, rdx
		jnz return
	test dl, dl
		je return
	inc rcx
	jmp again

return:
	ret