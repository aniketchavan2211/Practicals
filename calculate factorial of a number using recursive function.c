
//Write a recursive function in ‘C’ to calculate factorial of a number. Use this function in main.

#include <stdio.h>

// Recursive function to calculate factorial
int factorial(int n) {
    if (n == 0 || n == 1) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

int main() {
    // Declare variables
    int num;

    // Input the number from the user
    printf("Enter a number: ");
    scanf("%d", &num);

    // Calculate and display the factorial using the recursive function
    printf("Factorial of %d is: %d\n", num, factorial(num));

    return 0;
}
