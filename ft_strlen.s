section .data

section .text
	global _ft_strlen

_ft_strlen:
	xor rax, rax

again: 
	cmp byte[rdi+rax], 0
		jne plus
	ret

plus:
	inc rax
	jmp again

