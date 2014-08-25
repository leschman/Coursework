/**
 * @author Logan Esch, Hannah Cho
 * @date 18 Sep 13
 */
package queueDogArray;

public class DogQueue { 

	private final int queueSize = 5;  
	private Dog[] queueArray = new Dog[queueSize];
	private int front = 0;
	private int rear = 0;
	private int count = 0;

	/**
	 * takes a dog and places it in the array if the array has room, 
	 * makes array circular, so it will role over to beginning of array if there is room there. 
	 * @param enqueueValue a Dog Object to enqueue
	 */
	public void enqueue(Dog enqueueValue)
	{   
		if(count < queueSize){    
			queueArray[rear] = enqueueValue;
			rear++;
			count++;
			if(rear > (queueSize -1)){
				rear = 0; // role over to beginning of array. 
			}
		}
	}
/**
 * returns the first Dog object in an array, roles over to beginning of array if it reaches end.
 * @return a Dog Object at the front of the queue
 */
	public Dog dequeue(){
		Dog temp = queueArray[front]; //store the front in a temp value.
		count--;
		front++;
		if(front > (queueSize -1)){
			front = 0; // role over to beginning of array
		}
		return temp; //return the front value	
	}

	public boolean isEmpty(){
		return(count == 0);
	}

	public boolean isFull(){
		return (count == queueSize);
	}
} 
