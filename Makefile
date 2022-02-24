FILE		= ft_putchar.c ft_swap.c ft_putstr.c ft_strlen.c ft_strcmp.c

PATHC		= ./srcs/

SRCS		= ${addprefix ${PATHC}, ${FILE}}

OBJS		= ${SRCS:.c=.o}

PATHH		= ./includes/

NAME		= libft.a

AR		= ar rc

RM		= rm -f

LIB		= ranlib

GCC		= gcc

CFLAGS		= -Wall -Wextra -Werror

.c.o:
		${GCC} ${CFLAGS} -c -I ${PATHH} $< -o ${<:.c=.o}

${NAME}:	${OBJS}
		${AR} ${NAME} ${OBJS}
		${LIB} ${NAME}
		
all:		${NAME}

clean:
		${RM} ${OBJS}

fclean:	clean
		${RM} ${NAME}

re:		fclean all

.PHONY:	all clean fclean re

