#include <stdio.h>
#include <stdlib.h>
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
	FILE *file = fopen("input.txt", "r");

	//Counting Variables
	int i = 0;
	int outputIndex = 0;

	//Lengths
	int codeLength;
	int numVariables;

	//Code, variable and output strings
	char code[1000];
	char variables[100];
	char output[1000];
	char temp[100];
	memset(temp, 0, sizeof(char)*100);

	//Acquiring input from file
	fgets(variables, sizeof variables, file);
	fgets(code, sizeof code, file);

	//Fixing and determining length of inputs
	strtok(variables, "\n");
	codeLength = strlen(code);
	numVariables = strlen(variables);

	char *buffer = malloc(sizeof(char) * numVariables);
	memset(buffer, 0x30, sizeof(char)*numVariables);
	strcat(code, buffer);

	//Closing file
	fclose(file);

	char LUT[128] = {'d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','d','b','b','b','b','b','b','b','b','b','b','b','b','b','b','b','b','e','e','e','e','e','e','e','e','c','c','c','c','f','f','a','a'};
	int codeLenLUT[128] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,4,4,4,4,5,5,6,6};

	//Loop through values in code
	while (i < codeLength) {
		// QUESTIONABLE?
		strncpy(temp, code+i, numVariables);
		int index = (int) strtol(temp, NULL, 2);
		output[outputIndex++] = LUT[index];
		i += codeLenLUT[index];
	}

	//Output the string
	printf("%s\n", output);

	return 0;
}