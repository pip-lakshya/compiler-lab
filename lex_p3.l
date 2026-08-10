%{
#include<stdio.h>
#include<string.h>
int fchar=0;
int fnum=0;
int display(char *yytext){
if(fchar)printf("%s is a word\n",yytext);

if(fnum)printf("%s is a number\n",yytext);

return 0;
}
%}

%%
[A-Za-z]+ {fnum=0;fchar=1;display(yytext);}
[0-9]+ {fchar=0;fnum=1;display(yytext);}

%%
 int main(){
printf("Enter a string: ");
yylex();
return 0;
}
