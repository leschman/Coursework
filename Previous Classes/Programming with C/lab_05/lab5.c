/**
*Logan Esch
*Lab 5
*/
#include <stdio.h>
#include <stdlib.h>

//function prototypes
void problem_1(char c);
void problem_2();
void problem_3();

/**
* main function
*/
int
main(){
	problem_3();

return(0);
}

/**
* problem 1
* searches input for a given char. 
* prints that it was found for every occurance. 
*/
void problem_1(char c){
	char nextChar;
	int hasNext = 0;
	while(hasNext != -1){
		hasNext=scanf("%c",&nextChar);
		if(nextChar == c){
			printf("The character %c has been found.\n", c);
		}
	}
}

void problem_2(){
	int i = 3;
	int j = 0;
	
	j = i++;
	printf("the value of j is %i \n", j);
	
	j = --i;
	printf("the value of j is %i \n", j);
	
	j = i--;
	printf("the value of j is %i \n", j);

	j = ++i;
	printf("the value of j is %i \n", j);
}


void problem_3(){
	char nextChar;
	int oCount = 0;
	int hasNext = 0;
	while(hasNext != -1){
		hasNext = scanf("%c", &nextChar);
		if(nextChar == 'O'){
			oCount++;	
		}else{
			if(oCount != 0){
			printf("a group of %d capital letter O's have been found together.\n", oCount);
			oCount = 0;
			}
		}
	}
}
