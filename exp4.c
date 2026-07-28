#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>

int main() {
    FILE *file;
    int frequency[26] = {0};
    char ch;

    file = fopen("exp2_file.txt", "r");
    if (file == NULL) {
        printf("Could not open file \n");
        return 1;
    }

     while ((ch = fgetc(file)) != EOF) {
        if (isalpha(ch)) {
            ch = tolower(ch);
            frequency[ch - 'a']++;
        }
    }

    fclose(file);

    printf("\nAlphabet Frequencies:\n");
    for (int i = 0; i < 26; i++) {
        if (frequency[i] > 0) {
            printf("'%c': %d\n", i + 'a', frequency[i]);
        }
    }

    return 0;
}   
