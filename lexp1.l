%{
#include<stdio.h>
#include<string.h>
char name[20];
%}

%%

[\n] {
int nameprint(){
printf("Your name is %s",name);
return 0;
}
nameprint();
}

%%

int main(){
printf("Enter your name");
scanf("%s",name);
yylex();
return 0;}


