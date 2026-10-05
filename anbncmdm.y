%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
int yyerror(char *s);
%}

%token A B C D

%%

S : X Y
  ;

X : A X B
  | A B
  ;

Y : C Y D
  | C D
  ;

%%

int yyerror(char *s)
{
    return 0;
}

int main()
{
    printf("Enter string: ");

    if (yyparse() == 0)
        printf("Valid string\n");
    else
        printf("Invalid string\n");

    return 0;
}
