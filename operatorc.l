%{
#include<stdio.h>
int arrithc=0;
int assignc=0;
int relac=0;
int logicc=0;
int incrc=0;

%}

%%
"++"|"--" { incrc++;}
[-+*/%] {arrithc++;}
"="|"+="|"-="|"*="|"/=" {assignc++;}
"=="|"<="|">="|"!="|">"|"<" {relac++;}
"&&"|"||"|"!" {logicc++;}
[\t\n]+ {}
.  {}

%%

int yywrap(){
 return 1;}

int main(){
yylex();
printf("\nArrithmatic opp count:%d\n", arrithc);
printf("Assignment opp count:%d\n", assignc);
printf("Relational opp count:%d\n", relac);
printf("Logical opp count:%d\n",logicc);
printf("Incremental opp count:%d\n", incrc);
return 0;
}
