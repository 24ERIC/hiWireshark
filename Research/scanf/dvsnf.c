#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() 
{
	int a = 1;
    int *b;
    b = &a;
    printf("%d\n", a);
    printf("%p\n", (void*)b);
    printf("%d\n", *b);
    // b = a;
    // printf("%p\n", (void*)b);
    // printf("%d\n", *b);
}