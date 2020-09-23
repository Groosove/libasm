section .data

section .text
	global _ft_strcpy

_ft_strcpy:
	xor rax, rax
again:
	mov cl, byte[rsi+rax]
	mov byte[rdi+rax], cl
	test cl, cl
		je return
	inc rax
	jmp again

return:
	mov	rax, rdi
	ret

