
// Write a ‘C’ program to find maximum of two numbers

#include <stdio.h>

int main() {
    // Declare variables
    int num1, num2;

    // Input the two numbers from the user
    printf("Enter the first number: ");
    scanf("%d", &num1);

    printf("Enter the second number: ");
    scanf("%d", &num2);

    // Find and display the maximum of the two numbers
    if (num1 > num2) {
        printf("The maximum of %d and %d is: %d\n", num1, num2, num1);
    } else {
        printf("The maximum of %d and %d is: %d\n", num1, num2, num2);
    }

    return 0;
}

