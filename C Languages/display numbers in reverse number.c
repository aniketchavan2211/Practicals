
// Write a ‘C’ program to accept an array of n float values and display them in the reverse order.

#include <stdio.h>

int main() {
    // Declare variables
    int n;

    // Input the size of the array
    printf("Enter the number of elements in the array: ");
    scanf("%d", &n);

    // Declare an array of float values
    float arr[n];

    // Input the array elements from the user
    printf("Enter %d float values:\n", n);
    for (int i = 0; i < n; i++) {
        printf("Element %d: ", i + 1);
        scanf("%f", &arr[i]);
    }

    // Display the array in reverse order
    printf("\nArray in reverse order:\n");
    for (int i = n - 1; i >= 0; i--) {
        printf("%.2f ", arr[i]);
    }

    return 0;
}
