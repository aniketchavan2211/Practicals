
// Write a ‘C’ program to accept a character and check if it is alphabet,  digit or special symbol. If it is an alphabet, check if it is uppercase or lowercase.

#include <stdio.h>

int main() {
    // Declare variable
    char ch;

    // Input a character from the user
    printf("Enter a character: ");
    scanf(" %c", &ch);

    // Check if the character is an alphabet, digit, or special symbol
    if ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z')) {
        // Check if the alphabet is uppercase or lowercase
        if (ch >= 'a' && ch <= 'z') {
            printf("%c is a lowercase alphabet.\n", ch);
        } else {
            printf("%c is an uppercase alphabet.\n", ch);
        }
    } else if (ch >= '0' && ch <= '9') {
        printf("%c is a digit.\n", ch);
    } else {
        printf("%c is a special symbol.\n", ch);
    }

    return 0;
}
