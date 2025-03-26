/*
** EPITECH PROJECT, 2025
** unit_test
** File description:
** unit_test
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "../include/my.h"

test(test1, error_return_value)
{
    int argc = 0;
    char **argv = NULL;

    cr_assert(error(argc, argv) == -1);
}
