
// Write a ‘C’ program to accept an integer and check if it is divisible by 3 and 5.

#include <stdio.h>

int main() {
    // Declare variable
    int num;

    // Input an integer from the user
    printf("Enter an integer: ");
    scanf("%d", &num);

    // Check if the integer is divisible by both 3 and 5
    if (num % 3 == 0 && num % 5 == 0) {
        printf("%d is divisible by both 3 and 5.\n", num);
    } else {
        printf("%d is not divisible by both 3 and 5.\n", num);
    }

    return 0;
}
