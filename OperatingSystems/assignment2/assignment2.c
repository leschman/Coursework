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

void printList(linkedList *list){
	if(debug)printf("printing list.\n");
	int j = 0;
	struct node *ptr = list->head;
	for(j; j < list->size; j++){
		printf("%d, ",ptr->num);
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
	// while num isn't they type wanted, generate a new random number.
	while(num % i != 0){
		// generate a random number between [1, 40]
		num = rand()%40 + 1;
	}

	// TODO: append the number to the linked list.
	return false;
}

/* 
 * function to consume an even or odd int from the head of the list. 
 * takes an int [1,2]
 * checks if the head of the list mod that int is 0, if so removes it.
 * returns true if success, false otherwise. 
 */
bool intCon(int i, linkedList *list){
	// TODO: get the head of the list. 
	int head = 0;
	if(head % i == 0){
		// TODO: delete the head. 
		return true;
	}else{
		return false;
	}
}

/*
 * function for odd producer thread.
 */
void *oddProducer(linkedList *list){
	// Produce odd random ints < 40 and append them to linked-list.
	// TODO: print list. 
	bool success = intGen(1, list); // TODO: need pointer to list.
	// TODO: print list.
}

/*
 * function for even producer thread.
 */
void *evenProducer(linkedList *list){
	// Produce even random ints < 40 and append them to linked-list. 
	// TODO: print list. 
	bool success = intGen(2, list); // TODO: need pointer to list.
	// TODO: print list.
}

/*
 * function for odd consumer thread.
 */
void *oddConsumer(linkedList *list){
	// Consume odd ints at the head of the linked-list.
	// TODO: print list.
	bool success = intCon(1, list); // TODO: need pointer to list.
	// TODO: print list.
}

/*
 * function for even consumer thread.
 */
void *evenConsumer(linkedList *list){
	// Consume even ints at the head of the linked-list.
	// TODO: print list.
	bool success = intCon(2, list); // TODO: need pointer to list.
	// TODO: print list.
}

int main(){
	//create the head of the list.
	//struct node *head;
	//head = malloc(sizeof(struct node));
	//create the tail of the list.
	//struct node *tail;
	//tail = malloc(sizeof(struct node));

	//set up random number generator.
	srand((unsigned)time(NULL));
	
	//create the list.
	struct linkedList *list;
	list = malloc(sizeof(struct linkedList));
	list->size = 0;
	int n = 0;
	if(debug)printf("before while.\n");
	while(insert(n, list)){
		n++;
		printList(list);
	} 	
}
