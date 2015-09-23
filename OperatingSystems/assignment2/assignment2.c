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

/*
 * function to generate even or odd ints and append them to the list.
 * takes an int (should be 1 or 2).
 * appends to the end of the list  a random int < 40 where it mod the input = 0.
 * Returns true if success, false otherwise.
 */
bool intGen(int i, LinkedList *list){
	// initialize num to odd if even is wanted and vice versa. 
	int num = i + 1; 
	// while num isn't they type wanted, generate a new random number.
	while(num % i != 0){
		// generate a random number between [1, 40]
		num = srand((unsigned)time(NULL)) % 41 + 1;
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
bool intCon(int i, LinkedList *list){
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
void *oddProducer(void *arg){
	// Produce odd random ints < 40 and append them to linked-list.
	// TODO: print list. 
	bool success = intGen(1, list) // TODO: need pointer to list.
	// TODO: print list.
}

/*
 * function for even producer thread.
 */
void *evenProducer(void *arg){
	// Produce even random ints < 40 and append them to linked-list. 
	// TODO: print list. 
	bool success = intGen(2, list) // TODO: need pointer to list.
	// TODO: print list.
}

/*
 * function for odd consumer thread.
 */
void *oddConsumer(void *arg){
	// Consume odd ints at the head of the linked-list.
	// TODO: print list.
	bool success = intCon(1, list) // TODO: need pointer to list.
	// TODO: print list.
}

/*
 * function for even consumer thread.
 */
void *evenConsumer(void *arg){
	// Consume even ints at the head of the linked-list.
	// TODO: print list.
	bool success = intCon(2, list) // TODO: need pointer to list.
	// TODO: print list.
}
