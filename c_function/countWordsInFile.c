#include <stdio.h>

int countWordsInFile(const char *filename) {
    FILE *file = fopen(filename, "r");
    if (file == NULL) {
        perror("Error opening file");
        return -1;
    }
    int count = 0;
    char c;
    int inWord = 0;  // 0 when outside a word, 1 when inside a word
    while ((c = fgetc(file)) != EOF) {
        if (c == ' ' || c == '\n' || c == '\t') {
            inWord = 0;
        } else if (inWord == 0) {
            inWord = 1;
            count++;
        }
    }
    fclose(file);
    return count;
}

int main(){
    // File Reading and Word Count
    const char *filename = "sample.txt";
    int wordCount = countWordsInFile(filename);
    if (wordCount >= 0) {
        printf("Word count in %s: %d\n", filename, wordCount);
    } else {
        printf("Error counting words in %s\n", filename);
    }
    return 0;
}