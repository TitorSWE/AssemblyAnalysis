#include <stdio.h>

// Fonction pour calculer la somme de deux nombres
int addition(int a, int b) {
    return a + b;
}

int main() {
    
    int a = 10, b = 5;
    printf("Addition : %d\n", addition(a, b));
    return 0;
}