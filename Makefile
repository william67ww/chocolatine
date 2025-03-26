##
## EPITECH PROJECT, 2025
## Makefile
## File description:
## Makefile
##

SRC_MAIN		=	./main.c

SRC_TEST		=	units_tests/test.c

OBJ 			=	$(SRC_MAIN:.c=.o)						\

OBJ_TEST		=	$(SRC_TEST:.c=.o)						\

CFLAGS			=	-W -Wall -Wextra -I./include

FLAGS_DEBUG 	= 	-g3

FLAGS_TEST 		=	--coverage -lcriterion

NAME			=	chocolatine

NAME_TEST		= 	unit_tests

$(NAME):			$(OBJ)
					gcc -o $(NAME) $(OBJ) $(CFLAGS)

all:				$(NAME)

debug: 				CFLAGS += $(FLAGS_DEBUG)

debug:				$(OBJ)
					gcc -o $(NAME) $(OBJ) $(CFLAGS)

clean:
					rm -rf $(OBJ)

clean_test:
					find . -name "*.gcda" -delete -or -name "*.gcno" -delete
					rm -rf $(NAME_TEST)

fclean:				clean clean_test
					rm -rf $(NAME)
					rm -rf $(OBJ)
					rm -rf $(OBJ_TEST)

tests_run:			CFLAGS += --coverage

tests_run: 			$(OBJ_TEST)
					gcc -o $(NAME_TEST) $(OBJ_TEST) $(CFLAGS) $(FLAGS_TEST)
					./unit_tests --verbose

re:					fclean all

.PHONY: 			all debug clean clean_test fclean tests_run re
