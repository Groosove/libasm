NAME = libasm.a

SRC = ft_read.s ft_write.s ft_strcpy.s ft_strdup.s ft_strlen.s ft_strcmp.s
BSRC = ft_atoi_base_bonus.s ft_list_push_front_bonus.s ft_list_size_bonus.s

OBJ = $(SRC:.s=.o)
BOBJ = $(BSRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
		ar rc $(NAME) $^
		ranlib $(NAME)

%.o: %.s
	nasm -f macho64 $<

test: $(OBJ)
	gcc -L. -lasm -o test main.c

test_bonus: $(BOBJ) $(OBJ)
	ar rc $(NAME) $^
	ranlib $(NAME)
	gcc -L. -lasm -o btest main_bonus.c

bonus: $(BOBJ) $(OBJ)
	ar rc $(NAME) $^
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ)
	/bin/rm -f $(BOBJ)

fclean: clean
	/bin/rm -f $(NAME)
	/bin/rm -f test
	/bin/rm -f btest
	
re: all

.PHONY: all clean fclean re test 