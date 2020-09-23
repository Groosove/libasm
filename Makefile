NAME = libasm.a

SRC = ft_read.s ft_write.s ft_strcpy.s ft_strdup.s ft_strlen.s ft_strcmp.s ft_atoi_base.s

OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
		ar rc $(NAME) $^
		ranlib $(NAME)

%.o: %.s
	nasm -f macho64 $<

test: re
	gcc -L. -lasm -o test main.c

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)
	/bin/rm -f test
	
re: all

.PHONY: all clean fclean re test 