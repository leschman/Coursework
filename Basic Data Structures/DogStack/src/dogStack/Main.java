package dogStack;
import java.util.Scanner;

public class Main{




	public static void main(String args[])
	{
		int choice = 0; 
		String breed = null; 
		Dog dogReference = null;
		boolean done = false;
		DogStack dogStack = new DogStack();

		Scanner keyboard = new Scanner(System.in); 

		while (!done) {
			System.out.print("Enter 1 to push, 2 to pop, 3 to check empty,"
					+ " 4 to check full, and 5 to quit: ");
			choice = keyboard.nextInt();
			System.out.println();

			switch (choice){
			case 1:
				if (dogStack.isFull()){
					System.out.print("Can't push, stack is full!");
				}
				else{                        
					System.out.print("Enter a dog breed to push: ");
					keyboard.nextLine();
					breed = keyboard.nextLine();
					System.out.print("Enter the dogs points: ");
					int tempPoints = keyboard.nextInt();
					dogReference = new Dog(breed, tempPoints);
					sort(dogReference, dogStack);
					System.out.println();
				}
				break;

			case 2:
				if (dogStack.isEmpty()){
					System.out.println("Can't pop, stack is empty!");
				}
				else{
					System.out.println("The top dog was a: " +
							dogStack.pop().getBreed());                    
					System.out.println();
				}
				break;
			case 3: 
				if (dogStack.isEmpty()){
					System.out.println("The stack is empty.");
				}
				else {
					System.out.println("The stack is not empty.");
				}
				break;
			case 4: 
				if (dogStack.isFull()){
					System.out.println("The stack is full.");
				}
				else {
					System.out.println("The stack is not full.");
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
		System.out.println("...quitting. Good Buy!");
	}

	/**
	 * Sorts a new dog into the dog stack in order of points, so that the dog with the most points is 
	 * always top dog. 
	 * @param newDog the new dog being added to the stack
	 * @param dogStack the stack that the dog is being added to. 
	 */
	static public void sort(Dog newDog, DogStack dogStack)
	{

		boolean done = false; //flag for if the new dog has been added to the stack
		DogStack tempStack = new DogStack(); // temp stack to hold dogs with higher points
		while(!done){ // loop to place the new dog at the correct depth in the stack
			//if the stack is empty, put the new dog on the stack. 
			if (dogStack.isEmpty())
			{
				dogStack.push(newDog);
				done = true;
				break;
			} else if(dogStack.peek().getPoints() <= newDog.getPoints())
			{//if the top dog has less points than the new dog, push the new dog on top.
				dogStack.push(newDog);
				done = true;
				break;
			} else {
				//otherwise, the top dog has more points than the new dog.
				//put the top dog on the temp stack and loop again. 
				tempStack.push(dogStack.pop());
			}
		}

		while(!tempStack.isEmpty()){ // loop to place the higher scoring dogs back on the stack
			dogStack.push(tempStack.pop());
		}
	}
}

