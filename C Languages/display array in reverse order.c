
// Write a ‘C’ program to accept n integers in an array and display the array in reverse order.

#include <stdio.h>

int main() {
    // Declare variables
    int n;

    // Input the size of the array from the user
    printf("Enter the number of elements in the array: ");
    scanf("%d", &n);

    // Declare an array of integers
    int arr[n];

    // Input the array elements from the user
    printf("Enter %d integers:\n", n);
    for (int i = 0; i < n; i++) {
        printf("Element %d: ", i + 1);
        scanf("%d", &arr[i]);
    }

    // Display the array in reverse order
    printf("\nArray in reverse order:\n");
    for (int i = n - 1; i >= 0; i--) {
        printf("%d ", arr[i]);
    }

    return 0;
}
