#include <stdio.h>

// Function to Calculate the Nth Fibonacci Number (recursive version)
int fibonacci(int n) {
    if (n <= 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}

int main() {
    int fib_num = 7;
    printf("Fibonacci number at position %d is %d\n", fib_num, fibonacci(fib_num));
    return 0;
}