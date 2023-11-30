
// Write ‘C’ program to accept a single digit and display it in words. For example, Input = 9 Output = Nine

#include <stdio.h>

int main() {
    // Declare variables
    int digit;

    // Input a single digit from the user
    printf("Enter a single digit: ");
    scanf("%d", &digit);

    // Check if the input is a single digit (0-9)
    if (digit >= 0 && digit <= 9) {
        // Display the digit in words
        switch (digit) {
            case 0:
                printf("Zero\n");
                break;
            case 1:
                printf("One\n");
                break;
            case 2:
                printf("Two\n");
                break;
            case 3:
                printf("Three\n");
                break;
            case 4:
                printf("Four\n");
                break;
            case 5:
                printf("Five\n");
                break;
            case 6:
                printf("Six\n");
                break;
            case 7:
                printf("Seven\n");
                break;
            case 8:
                printf("Eight\n");
                break;
            case 9:
                printf("Nine\n");
                break;
        }
    } else {
        printf("Invalid input. Please enter a single digit.\n");
    }

    return 0;
}
