package genericLinkedListQueue;

public class Queue <ClassType> {

	//pointers to front and back of queue
	private Node frontNode = null;
	private Node backNode = null;

	private class Node {

		private ClassType classTypeObjectRef;
		private Node nextNodeRef;

		Node(ClassType newClassTypeObjectRef){
			classTypeObjectRef = newClassTypeObjectRef;
		}
	}
	/**
	 * puts an object on the list
	 * @param enqueueValue the object to place on the list
	 */
	public void enqueue(ClassType enqueueValue){ 
		//encapsulate the value into a node. 
		Node tempNode = new Node(enqueueValue);
		//if the front is empty, put it in the front, point both front and back to front. 
		if(frontNode == null){
			frontNode = tempNode;
			backNode = tempNode;
		} else { //list has a node in it, add new node to back.
			backNode.nextNodeRef = tempNode;
			backNode = tempNode;
		}
	}
	/**
	 * pulls the front object off the queue
	 * calling method needs to check if there is one first!
	 * @return the front object from the queue
	 */
	public ClassType dequeue(){
		Node tempNode = frontNode;
		frontNode = frontNode.nextNodeRef;
		return tempNode.classTypeObjectRef;

	}

	/**
	 * shows the front value without changing it. 
	 * @return the front value without changing it. 
	 */
	public ClassType peek(){
		return frontNode.classTypeObjectRef;
	}
	/**
	 * 
	 * @return false, its a linked list, it shouldn't ever be full. 
	 */
	public boolean isFull(){
		return false; //queue is a linked list, if its full we have bigger problems. 
	}

	/**
	 * 
	 * @return true if empty, false if not empty. 
	 */
	public boolean isEmpty(){
		return frontNode == null;
	}     
}



