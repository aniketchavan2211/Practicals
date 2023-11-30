
// Write a ‘C’ program to accept two integers from the user and interchange them. Display the interchanged numbers.

#include <stdio.h>

int main() {
    // Declare variables
    int num1, num2, temp;

    // Input the first integer
    printf("Enter the first integer: ");
    scanf("%d", &num1);

    // Input the second integer
    printf("Enter the second integer: ");
    scanf("%d", &num2);

    // Interchange the numbers using a temporary variable
    temp = num1;
    num1 = num2;
    num2 = temp;

    // Display the interchanged numbers
    printf("\nAfter interchange:\n");
    printf("First integer: %d\n", num1);
    printf("Second integer
