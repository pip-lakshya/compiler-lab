%{
#include <stdio.h>

int f = 0;

void display()
{
    if(f)
        printf("Word starts with vowel\n");
    else
        printf("Word does not start with vowel\n");
}
%}

%%

[aAeEiIoOuU][a-zA-Z]*   { f = 1; }
[a-zA-Z]+               { f = 0; }
\n                      { display(); return 0; }

%%

int main()
{
    printf("Enter a word: ");
    yylex();
    return 0;
}
