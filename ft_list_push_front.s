section .data

section .text
	extern _malloc
	global _ft_list_push_front

_ft_list_push_front:
	cmp rdi, 0
		je single
	push rdi
	push rsi
	mov rdi, 16
	call _malloc
	pop rsi
	pop rdi
	mov [rax], rsi
	mov rcx, [rdi]
	mov [rax + 8], rcx
	mov [rdi], rax

return:
	ret

single:
	push rdi
	push rsi
	mov rdi, 16
	call _malloc
	pop rsi
	pop rdi
	mov [rax], rsi
	mov [rdi], rax

