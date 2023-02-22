#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main() {
    // char s[] = "hello";
    // char *p = s;
    // *(p+1) = 'a';
    // s[2] = 'a';
    // printf("%s", p);
    // printf("%c", s);
    // printf("%c", s);
    char s[] = "324retdnbgva";
    char *str;
    str = (char *) malloc(15);
    str = (char *) realloc(str, 8999999999999999999);
    printf("%s", s);
    
    free(str);
    printf("%s", s);






    return 0;
}