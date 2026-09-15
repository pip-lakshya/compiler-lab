%{
#include <stdio.h>
int yylex(void);
void yyerror(const char* S);
int f=1;
%}
%token A B
%% 
S: A S B
 | A B
 ;
%%
int main (){
 printf("Enter string:");
	yyparse();
if(f){
printf("Valid string");}
else{
printf("Invalid string");}
	return 0;
} 
void yyerror(const char *s){
f=0;
}
