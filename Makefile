CC			= gcc

RM			= rm -f

CFLAGS			= -I marlowe

LDFLAGS			= -L marlowe -lspl -lm

NAME			= 103architecte

SPL2CC			= marlowe/spl2c

SPL			= 103architecte.spl

SRC			= $(SPL:.spl=.c)

$(NAME):		$(SRC)
			$(CC) $(CFLAGS) -o $(NAME) $(SRC) $(LDFLAGS)

$(SRC):
			make -C marlowe
			$(SPL2CC) < $(SPL) > $(SRC)

all: 			$(NAME)

clean:
			make clean -C marlowe
			$(RM) $(SRC)

fclean: 		clean
			$(RM) $(NAME)

re: 			fclean all

.PHONY: 		all clean fclean re
