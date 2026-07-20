//wap in c to check whether the given word is a keyword or not
#include <stdio.h>
#include <string.h>

int main (){
    int i=0,f=0;
    char str [20];
    char keyword[][10]={"if","else","int","for"};
    printf("Enter a word ");
    scanf("%s",str);
    for(i=0;keyword[i][0] != '\0';i++){
        if(!strcmp(str,keyword[i])){
            printf("%s is a keyword",str);
            f=1;
            break;
        }else{
            continue;
        }
        }
   
    if(f==0){
        printf("%s is not a keyword",str);
    }return 0;}
