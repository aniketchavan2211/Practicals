
// Write a ‘C’ program to display n terms of the Fibonacci series.

#include <stdio.h>

int main() {
    int n, firstTerm = 0, secondTerm = 1, nextTerm;

    // Accepting the number of terms from the user
    printf("Enter the number of terms: ");
    scanf("%d", &n);

    printf("Fibonacci Series: ");

    for (int i = 0; i < n; ++i) {
        // Displaying the current term in the series
        printf("%d, ", firstTerm);

        // Updating the terms for the next iteration
        nextTerm = firstTerm + secondTerm;
        firstTerm = secondTerm;
        secondTerm = nextTerm;
    }

    return 0;
}
