/**
 * @author Logan Esch, Hannah Cho
 * @date 18 Sep 13
 */
package queueDogArray; 
import java.util.Scanner;

public class Main{
	public static void main(String args[])
	{
		int choice = 0; 
		String breed = null; 
		Dog dogReference = null;
		boolean done = false;
		DogQueue dogQueue = new DogQueue();
		Scanner keyboard = new Scanner(System.in); 

		while (!done) {
			System.out.print("Enter 1 to enqueue, 2 to dequeue, 3 to check empty,"
					+ " 4 to check full, and 5 to quit: ");
			choice = keyboard.nextInt();
			System.out.println();

			switch (choice){
			case 1:
				if (dogQueue.isFull()){
					System.out.print("Can't enqueue, stack is full!");
				}
				else{                        
					System.out.print("Enter a dog breed to enqueue: ");
					breed = keyboard.next();
					dogReference = new Dog(breed);
					dogQueue.enqueue(dogReference);
					System.out.println();
				}
				break;

			case 2:
				if (dogQueue.isEmpty()){
					System.out.println("Can't dequeue, stack is empty!");
				}
				else{
					System.out.println("The front dog was a: " +
							dogQueue.dequeue().getBreed());                    
					System.out.println();
				} 
				break; 
			case 3:

				if (dogQueue.isEmpty()){
					System.out.println("The queue is empty.");
				} 
				else {
					System.out.println("The queue is not empty.");
				}
				break;
			case 4: 
				if (dogQueue.isFull()){
					System.out.println("The queue is full.");
				}
				else {
					System.out.println("The queue is not full.");
				}
				break;                  
			case 5: 
				done = true;
				break;
			default: 
				System.out.println("The number you entered, "+ choice + 
						", + is not 1, 2, 3, 4 or 5. Try again!");
				System.out.println();
				break;
			}
		}
		System.out.println("...quitting");
		keyboard.close();
	}
}



