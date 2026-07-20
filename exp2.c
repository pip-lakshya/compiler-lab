// wap in c to count the number of keywords in c 
#include <stdio.h>
#include<string.h>
int detect_key (char str[30]){
    int i=0,f=0;
const char keyword[32][10] = {
        "auto", "break", "case", "char", "const", "continue",
        "default", "do", "double", "else", "enum", "extern",
        "float", "for", "goto", "if", "int", "long",
        "register", "return", "short", "signed", "sizeof", "static",
        "struct", "switch", "typedef", "union", "unsigned", "void",
        "volatile", "while"};
    for(i=0;keyword[i][0] != '\0';i++){
        if(!strcmp(str,keyword[i])){
            f=1;
            return f;
        }else{
            continue;
        }
        }
   
    if(f==0){
    return f;}
}

int main(){
FILE *fp = fopen("example.txt", "r");
if (fp == NULL) {
    perror("Error opening file");
    return 1;}
char word[30];
int count=0;
while (fscanf(fp, "%29s", word) == 1) {
        count+=detect_key(word);
    }
printf("%d is the number of keywords in file. \n",count);

fclose(fp);
return 0;}
