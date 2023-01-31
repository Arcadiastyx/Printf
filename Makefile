# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: inaranjo <inaranjo@student.42lausan>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/09 11:12:46 by inaranjo          #+#    #+#              #
#    Updated: 2022/11/15 12:49:10 by inaranjo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = \
	ft_printf.c \
	link_to_manage.c \
	manage_base.c \
	manage_char.c \
	manage_hexa.c \
	manage_int.c \
	manage_pointer.c \

OBJS = ${SRCS:.c=.o}

OBJSBONUS = ${BONUS:.c=.o}

CC		= gcc
RM		= rm -f

CFLAGS = -Wall -Wextra -Werror

.c.o:
		${CC} ${CFLAGS} -g -c $< -o ${<:.c=.o}


$(NAME): ${OBJS}
		ar rcs ${NAME} ${OBJS}

all:	${NAME}

clean:
		@${RM} ${OBJS} ${OBJSBONUS}

fclean:	clean
		@${RM} ${NAME}

re:		fclean all

.PHONY: all clean fclean re


