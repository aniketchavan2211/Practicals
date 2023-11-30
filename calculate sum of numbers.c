
// Write a function in ‘C’ to calculate sum of digits of an integer. Use  this function in main

#include <stdio.h>

// Function to calculate the sum of digits
int sumOfDigits(int n) {
    int sum = 0;

    // Iterate through each digit of the number
    while (n != 0) {
        sum += n % 10; // Add the last digit to the sum
        n /= 10;       // Move to the next digit
    }

    return sum;
}

int main() {
    // Declare variables
    int num;

    // Input an integer from the user
    printf("Enter an integer: ");
    scanf("%d", &num);

    // Calculate and display the sum of digits using the function
    printf("Sum of digits of %d is: %d\n", num, sumOfDigits(num));

    return 0;
}
