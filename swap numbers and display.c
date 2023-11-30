
// Write a ‘C’ program to interchange two numbers and display the interchanged nunbers.

#include <stdio.h>

int main() {
    // Declare variables
    int num1, num2, temp;

    // Input the first number
    printf("Enter the first number: ");
    scanf("%d", &num1);

    // Input the second number
    printf("Enter the second number: ");
    scanf("%d", &num2);

    // Interchange the numbers using a temporary variable
    temp = num1;
    num1 = num2;
    num2 = temp;

    // Display the interchanged numbers
    printf("\nAfter interchange:\n");
    printf("First number: %d\n", num1);
    printf("Second number: %d\n", num2);

    return 0;
}
