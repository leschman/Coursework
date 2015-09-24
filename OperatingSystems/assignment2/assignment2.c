/*
 * Author: Logan Esch
 * Date: 23 Sep 2015
 * CSCI 460 Assignment 2
 */

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

const int max = 20;
const bool debug = false;

/*
 * node structure for list. 
 * contains references to next node, previous node and an int. 
 */
struct node{
	int num;
	struct node *next;
	struct node *prev;
};

/*
 * list struct for locking doubly linked list.
 * contains head, tail, size.
 */
struct linkedList{
	struct node *head;
	struct node *tail;
	int size;
};	

//type defs.
typedef struct node node;
typedef struct linkedList linkedList;


/*
 * insert a given number into the list.
 * return true if successful. false if list full. 
 */
bool insert(int i, linkedList *list){
	if(debug)printf("45\n");
	// check if the list is full, if so return false. 
	if(list->size >= 20){
		return false;
	}else{
		// create the new node.
		if(debug)printf("53\n");
		struct node *newNode;
		if(debug)printf("55\n");
		newNode = malloc(sizeof(struct node));
		if(debug)printf("57\n");
		// assign the value to the node.
		newNode->num = i;
		//initialize newNode next to 0.
		if(debug)printf("61\n");
		newNode->next = 0;
		// point newNode's previous to tail.
		if(debug)printf("64\n");
		newNode->prev = list->tail;
		if(debug)printf("66\n");
		if(list->size <= 0){
			//list is empty, initialize head to current node.
			list->head = newNode;
		}else{
			// point tail's next to newNode.
			if(debug)printf("72\n");
			list->tail->next = newNode;
		}
		if(debug)printf("75\n");
		// change tail to newNode.
		list->tail = newNode;
		if(debug)printf("78\n");
		// increment the size.
		list->size++;
		if(debug)printf("81\n");
		return true;
	}
}

/*
 * delete and return the head of the list. 
 * returns the int in the head of the list, -1 if list is empty.
 */
int delete(linkedList *list){
	if (list->size <= 0){
		return -1;
	}else{
		if(debug)printf("93\n");
		//delete the head node and return the int.
		int val = list->head->num;
		if(debug)printf("val = %d\n", val);
		if(debug)printf("96\n");
		struct node *toFree = list->head;
		if(debug)printf("98\n");
		list->head = list->head->next;
		if(debug)printf("100\n");
		free(toFree);
		if(debug)printf("102\n");
		list->size--;
		return val;
	}
}

void printList(linkedList *list){
	if(debug)printf("printing list.\n");
	int j = 0;
	struct node *ptr = list->head;
	for(j; j < list->size; j++){
		printf("%2d, ",ptr->num);
		ptr = ptr->next;
	}
	printf("\n");
}

/*
 * function to generate even or odd ints and append them to the list.
 * takes an int (should be 1 or 2).
 * appends to the end of the list  a random int < 40 where it mod the input = 0.
 * Returns true if success, false otherwise.
 */
bool intGen(int i, linkedList *list){
	// initialize num to odd if even is wanted and vice versa. 
	int num = i + 1; 
	if(debug) printf("i: %d, num: %d\n",i, num);
	// generate a random number between [0, 19], double it and add i, giving random number [1, 40]. 
	num = (2*(rand()%20))+i;

	// TODO: append the number to the linked list.
	return insert(num, list);	
}

/* 
 * function to consume an even or odd int from the head of the list. 
 * takes an int [1,2]
 * checks if the head of the list plus that int mod 2 is even, if so removes it.
 * takes advantage of an even+even is even, odd+odd is even. 
 * so if the sum is even, then the head is the desired even/odd.
 * returns 0 if list is empty, -1 if head isn't odd/even, the head if all is well. 
 */
int intCon(int i, linkedList *list){
	if(list->size <= 0){
		return 0;
	}else if((list->head->num + i) % 2 == 0){
		// head is odd/even. 
		return delete(list);
	}else{
		// head isn't odd/even. 
		return -1;
	}
}

/*
 * function for odd producer thread.
 */
void *oddProducer(void *args){
	if(debug)printf("hello from the thread.\n");
	struct linkedList *list = args; 
	while(true){
		// Produce odd random ints < 40 and append them to linked-list.
		printList(list);
		bool success = intGen(1, list); 
		if (!success){
			// list is full generate message and wait.
			printf("List is full. Odd Producer is waiting.\n");
			//TODO: wait.
		}
		printList(list);
		sleep(1);
	}
}

/*
 * function for even producer thread.
 */
void *evenProducer(void *args){
	struct linkedList *list = args;
	while(true){
		// Produce even random ints < 40 and append them to linked-list. 
		printList(list);
		bool success = intGen(2, list);
		if (!success){
			// list is full generate message and wait.
			printf("List is full. Even Producer is waiting.\n");
			//TODO: wait.
		}
		printList(list);
		sleep(1);
	}
}

/*
 * function for odd consumer thread.
 */
void *oddConsumer(linkedList *list){
	// Consume odd ints at the head of the linked-list.
	printList(list);
	int success = intCon(1, list);
	if (success == 0){
		// list is empty generate message and wait.
		printf("List is empty. Odd Consumer is waiting.\n");
		//TODO: wait.
	}else if(success == -1){
		// list doesn't have odd head; block.
		printf("List has even head. Odd Consumer is waiting.\n");
		//TODO: block.
	}else{
		printf("Odd consumer removed %2d.\n",success);
	}
	printList(list);
}

/*
 * function for even consumer thread.
 */
void *evenConsumer(linkedList *list){
	// Consume even ints at the head of the linked-list.
	printList(list);
	int success = intCon(2, list);
	if (success == 0){
		// list is empty generate message and wait.
		printf("List is empty. Even Consumer is waiting.\n");
		//TODO: wait.
	}else if(success == -1){
		// list doesn't have odd head; block.
		printf("List has odd head. Even Consumer is waiting.\n");
		//TODO: block.
	}else{
		printf("Even consumer removed %2d.\n",success);
	}
	printList(list);
}

int main(){
	//set up random number generator.
	srand((unsigned)time(NULL));
	
	//create the list.
	struct linkedList *list;
	list = malloc(sizeof(struct linkedList));
	list->size = 0;

	//pointers to threads.
	pthread_t pOddProducer;
	pthread_t pEvenProducer;
		
	//Testing stuff.
	if(debug)printf("creating thread.\n");
	//pthread_create(&pOddProducer, NULL, &oddProducer, list);
	//pthread_join(pOddProducer, NULL);
	pthread_create(&pEvenProducer, NULL, &evenProducer, list);
	pthread_join(pEvenProducer, NULL);
}
