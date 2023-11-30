
// Write a ‘C’ program to accept three dimensions length (l), breadth(b) and height(h) of a cuboid and print surface area (surface area=2(lb+lh+bh)

#include <stdio.h>

int main() {
    // Declare variables
    float length, breadth, height, surfaceArea;

    // Input the dimensions from the user
    printf("Enter the length of the cuboid: ");
    scanf("%f", &length);

    printf("Enter the breadth of the cuboid: ");
    scanf("%f", &breadth);

    printf("Enter the height of the cuboid: ");
    scanf("%f", &height);

    // Calculate the surface area of the cuboid
    surfaceArea = 2 * (length * breadth + length * height + breadth * height);

    // Display the surface area
    printf("\nThe surface area of the cuboid is: %.2f\n", surfaceArea);

    return 0;
}
