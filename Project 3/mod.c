//M MOD N CALCULATOR
// Made by Cody Otterbine

#include <stdio.h>

extern int modone(int, int); 
extern int modtwo(int, int);
int k;
int m;
int n;
int vone;
int vtwo;

int main(void){
	int vone;
	int vtwo;
	int i;

	printf("M MOD N CALULATOR \n\n");
	printf("This program calculates m mod n using two seperate assembly modules. \n");
	printf("Module 2 can only compute the result if n is a power of 2. \n");
	printf("A result of -1 for Module 2 indicates that the n used was not a power of two. \n\n");
	
	printf("K | M | N | Module 1 Result | Module 2 Result \n");
	for (i = 2; i < 26; i++){ //runs through k from 2 to 25
		n = 4 * i;
		m = i;
		vone = modone(n, m); //Module 1 result
		vtwo = modtwo(n, m); // Module 2 result
		printf("%d | %d | %d | %d | %d \n", i, m, n, vone, vtwo); // print all data for current set
	}
     	
    getchar();    	//type any character to terminate the program

	return 0;
}
