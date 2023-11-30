
// Write a function in ‘C’ to reverse an integer. Use this in main.

#include <stdio.h>

// Function to reverse an integer
int reverseInteger(int n) {
    int reversed = 0;

    // Reverse the digits of the number
    while (n != 0) {
        reversed = reversed * 10 + n % 10;
        n /= 10;
    }

    return reversed;
}

int main() {
    // Declare variables
    int num;

    // Input an integer from the user
    printf("Enter an integer: ");
    scanf("%d", &num);

    // Reverse the integer using the function
    int reversedNum = reverseInteger(num);

    // Display the reversed integer
    printf("Reversed integer: %d\n", reversedNum);

    return 0;
}
