
// Write a ‘C’ program to calculate the sum of factors of a number.

#include <stdio.h>

int main() {
    // Declare variables for the number and the sum of factors
    int number, sum = 0;

    // Input the number from the user
    printf("Enter a positive integer: ");
    scanf("%d", &number);

    // Check for non-positive values
    if (number <= 0) {
        printf("Please enter a positive integer. Exiting...\n");
        return 1; // Return an error code
    }

    // Calculate the sum of factors
    for (int i = 1; i <= number; i++) {
        if (number % i == 0) {
            sum += i;
        }
    }

    // Display the results
    printf("The sum of factors of %d is: %d\n", number, sum);

    return 0;
}
