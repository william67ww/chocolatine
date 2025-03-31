/*
** EPITECH PROJECT, 2025
** unit_test
** File description:
** unit_test
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "../include/my.h"

void test(int test1, int error_return_value)
{
    int argc = 0;
    char **argv = NULL;

    (void)test1;
    (void)error_return_value;
    cr_assert(error(argc, argv) == -1, "Expected error() to return -1");
}
