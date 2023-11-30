
// Write a ‘C’ program to display all numbers between two given numbers.

#include <stdio.h>

int main() {
    // Declare variables
    int start, end;

    // Input the range from the user
    printf("Enter the starting number: ");
    scanf("%d", &start);

    printf("Enter the ending number: ");
    scanf("%d", &end);

    // Display numbers between the given range
    printf("\nNumbers between %d and %d are:\n", start, end);
    for (int i = start + 1; i < end; i++) {
        printf("%d ", i);
    }

    return 0;
}

