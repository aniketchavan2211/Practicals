
// Write a ‘C’ program to calculate area and perimeter of a rectangle.

#include <stdio.h>

int main() {
    // Declare variables for length and width
    float length, width;

    // Input length and width from the user with error checking
    printf("Enter the length of the rectangle: ");
    if (scanf("%f", &length) != 1) {
        printf("Invalid input for length. Exiting...\n");
        return 1; // Return an error code
    }

    printf("Enter the width of the rectangle: ");
    if (scanf("%f", &width) != 1) {
        printf("Invalid input for width. Exiting...\n");
        return 1; // Return an error code
    }

    // Check for non-positive values
    if (length <= 0 || width <= 0) {
        printf("Length and width must be positive. Exiting...\n");
        return 1; // Return an error code
    }

    // Calculate area and perimeter
    float area = length * width;
    float perimeter = 2 * (length + width);

    // Display the results
    printf("Area of the rectangle: %.2f square units\n", area);
    printf("Perimeter of the rectangle: %.2f units\n", perimeter);

    return 0;
}
