# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tsito <tsito@student.42tokyo.jp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/04/01 19:35:41 by tsito             #+#    #+#              #
#    Updated: 2026/04/01 19:35:44 by tsito            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = program

CC = cc
CFLAGS = -Wall -Wextra -Werror

SRCS_DIR = src
INCLUDES_DIR = inc

SRCS =
OBJS = $(addprefix $(SRCS_DIR)/, $(SRCS:.c=.o))

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) -I $(INCLUDES_DIR) -o $(NAME) $(OBJS)

clean:
	rm -f $(OBJS)

fclean: clean
    rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re

