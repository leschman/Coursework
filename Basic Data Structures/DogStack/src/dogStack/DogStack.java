package dogStack;

public class DogStack {

	private final int stackSize = 5;  
	private Dog[] stackArray = new Dog[stackSize];
	private int top = 0;

	public void push(Dog pushValue)
	{       
		stackArray[top] = pushValue;
		top++;
	}

	public Dog pop(){
		top--;
		return stackArray[top];
	}

	public boolean isEmpty(){
		return(top == 0);
	}

	public boolean isFull(){
		return (top == stackSize);
	}

	public Dog peek() {
		return stackArray[top - 1];
	}


}

