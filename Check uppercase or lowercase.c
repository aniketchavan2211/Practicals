
// Write a ‘C’ program to accept a character and check if it is uppercase or lowercase

#include <stdio.h>

int main() {
    char ch;

    // Accepting a character from the user
    printf("Enter a character: ");
    scanf("%c", &ch);

    // Checking if the character is uppercase or lowercase
    if (ch >= 'A' && ch <= 'Z') {
        printf("%c is an uppercase letter.\n", ch);
    } else if (ch >= 'a' && ch <= 'z') {
        printf("%c is a lowercase letter.\n", ch);
    } else {
        printf("%c is not a valid letter.\n", ch);
    }

    return 0;
}
