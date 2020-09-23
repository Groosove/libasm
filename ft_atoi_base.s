section .data

section .text
	global _ft_atoi_base

_ft_atoi_base:;			ft_atoi_base(char const *str, int base)
	xor rcx, rcx; 		int index = 0;
	mov r12, 1;		int negative = 1
	mov r11, 0;		int tmp = 0;
	xor rax, rax;		int result = 0
	mov r13, rsi;		int base_length = base;
spacecheck:
	mov bl, byte[rdi+rcx];	char ch = str[index]
	inc rcx;		index++;
	cmp bl, 9
		je spacecheck
	cmp bl, 10
		je spacecheck
	cmp bl, 11
		je spacecheck
	cmp bl, 12
		je spacecheck
	cmp bl, 13
		je spacecheck
	cmp bl, 32
		je spacecheck;	if ((ch >= 9 && ch <= 13) || ch == 32) jump spacecheck
	dec rcx

signcheck:
	mov bl, byte[rdi+rcx];	char ch = str[index]
	cmp r12, -1
		je basecheck
	cmp bl, 43;		if (ch == '+')
		je plus;	index++
	cmp bl, 45;		if (ch == '-')
		je minus;		jump minus

basecheck:
	mov bl, byte[rdi+rcx]
	mov r11, 0
	cmp bl, 48
		je multiply
	mov r11, 1
	cmp bl, 49
		je multiply
	mov r11, 2
	cmp bl, 50
		je multiply
	mov r11, 3
	cmp bl, 51
		je multiply
	mov r11, 4
	cmp bl, 52
		je multiply
	mov r11, 5
	cmp bl, 53
		je multiply
	mov r11, 6
	cmp bl, 54
		je multiply
	mov r11, 7
	cmp bl, 55
		je multiply
	mov r11, 8
	cmp bl, 56
		je multiply
	mov r11, 9
	cmp bl, 57
		je multiply
	mov r11, 10
	cmp bl, 65
		je multiply
	mov r11, 11
	cmp bl, 66
		je multiply
	mov r11, 12
	cmp bl, 67
		je multiply
	mov r11, 13
	cmp bl, 68
		je multiply
	mov r11, 14
	cmp bl, 69
		je multiply
	mov r11, 15
	cmp bl, 70
		je multiply
	mov r11, 10
	cmp bl, 97
		je multiply
	mov r11, 11
	cmp bl, 98
		je multiply
	mov r11, 12
	cmp bl, 99
		je multiply
	mov r11, 13
	cmp bl, 100
		je multiply
	mov r11, 14
	cmp bl, 101
		je multiply
	mov r11, 15
	cmp bl, 102
		je multiply
	jmp return

multiply:
	cmp r11, r13
		jge error
	imul rax, r13;		result *= base;
	add rax, r11;		result += tmp
	inc rcx
	jmp basecheck;
minus:
	mov r12, -1;		negative = -1;
	inc rcx
	jmp signcheck

plus:
	inc rcx
	jmp basecheck
return:
	imul rax, r12
	ret

error:
	mov rax, -1
	ret