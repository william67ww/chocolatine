/*
** EPITECH PROJECT, 2025
** main
** File description:
** main
*/

#include "./include/my.h"

int error(int argc, char *argv[])
{
    if (argc != 1 || argv == NULL)
        return -1;
    return 0;
}

int main(int argc, char *argv[])
{
    if (error(argc, argv) == -1)
        return 84;
    return 0;
}
