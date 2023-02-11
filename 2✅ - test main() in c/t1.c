#include<stdio.h>

// int main(int argc, *argv[]) {
//     printf(argc);
//     printf(argv);
// }
int main(int argc,char *argv[]) {
  int i;
  char thisChar;
  for (i = 1; i < argc; i++) { // argv[0] may be the file name (no guarantee, see Peter M's comment)
    thisChar = argv[i][0]; // If the parameter is "abc", thisChar = 'a'
    printf("%c\tAscii: %d\n", thisChar, thisChar);
  }
  return 0;
} 