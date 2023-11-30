
// Write a ‘C’ program to calculate area and circumference of a circle.

#include <stdio.h>
#include <math.h>

#define PI 3.14159265358979323846

int main() {
    // Declare variables
    double radius, area, circumference;

    // Input the radius from the user
    printf("Enter the radius of the circle: ");
    scanf("%lf", &radius);

    // Calculate the area and circumference
    area = PI * pow(radius, 2);
    circumference = 2 * PI * radius;

    // Display the calculated values
    printf("\nArea of the circle: %.2lf square units\n", area);
    printf("Circumference of the circle: %.2lf units\n", circumference);

    return 0;
}
