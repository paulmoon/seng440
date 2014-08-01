#include <stdio.h>
#include <string.h>

/*
This function takes a huffman code and a list of characters that are ordered 
from most frequent to least frequent in the original string. It uses this 
information to decrypt the code and return the original string of characters.

Note that it assumes 0 is related to the most frequent then 10 to the 2nd most 
frequent and 110 to the third etc.
*/

int main(void){
    //Open input file
    FILE *file = fopen("input_optimized.txt", "r");

    //Lengths
    register int codeLength;
    register int numVariables;

    //Code, variable and output strings
    char code[1000];
    char variables[100];
    char output[1000];

    //Acquiring input from file
    fgets(variables, sizeof variables, file);
    fgets(code, sizeof code, file);

    //Fixing and determining length of inputs
    strtok(variables, "\n");
    codeLength = strlen(code);
    numVariables = strlen(variables);

    //Closing file
    fclose(file);

    __asm__("huffman %0, %1" : "=r" (code) : "r" (variables));

    //Output the string
    printf("%s\n", output);
    return 0;
}