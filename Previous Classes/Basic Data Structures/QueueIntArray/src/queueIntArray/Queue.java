package queueIntArray;

public class Queue
{
    private final int queueSize = 5;
    private int[] queueArray = new int[queueSize];
    private int front = 0;
    private int back = 0;
    private int count = 0;

    public void enqueue(int value)
    {
        queueArray[back] = value;
        back = (back+1)%queueArray.length;
        count++;
    }
    
    public int dequeue()
    {
        int temp = queueArray[front];
        front = (front+1)%queueArray.length;
        count--;
        return(temp);
    }
    /**
     * 
     * @return the front int in the queue without changing front
     */
    public int peek(){
    	return queueArray[front];
    }
    /**
     * tests if the queue is full, 
     * @return true if full, false if not full
     */
    public boolean isFull(){
    	if(count >= queueSize){
    		return true;
    	}else{
    		return false;
    	}
    }
    
    /**
     * tests if the queue is empty
     * @return true if empty, false if not. 
     */
    public boolean isEmpty(){
    	if(count <= 0){
    		return true;
    	}else{
    		return false;
    	}
    }
}