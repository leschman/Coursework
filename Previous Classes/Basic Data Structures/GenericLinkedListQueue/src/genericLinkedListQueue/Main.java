package genericLinkedListQueue;

import java.util.NoSuchElementException;
import javax.swing.JOptionPane;
public class Main
{
	public static void main(String args[])
	{
		boolean done = false;
		Queue<Integer> queue = new Queue<>();

		String[] choices = {"enqueue", "dequeue", "peek", "check full", "check empty", "quit"};
		while (!done) 
		{
			int choice = JOptionPane.showOptionDialog(
					null, 
					"Click a choice",
					"Queue Operations Menu",
					JOptionPane.YES_NO_CANCEL_OPTION,
					JOptionPane.QUESTION_MESSAGE, 
					null,
					choices,
					choices[0]);
			try{
				int enqueueValue;            
				switch (choice){
				case 0:
					enqueueValue = 
					Integer.parseInt(JOptionPane.showInputDialog
							("Enter an integer to enqueue: "));
					queue.enqueue(enqueueValue);
					break;
				case 1:
					//check if empty, if so spit out error. 
					if (queue.isEmpty())
					{
						JOptionPane.showMessageDialog(
								null,
								"The queue is empty, please try again.");    
						break;
					}else{
						JOptionPane.showMessageDialog(
								null,
								"The front element of the queue was "
										+ queue.dequeue() + ".");    
						break;
					}
				case 2: //peek
					JOptionPane.showMessageDialog(
							null,
							"The front element of the queue was "
									+ queue.peek() + ".");    
					break;
				case 3: // is full
					JOptionPane.showMessageDialog(
							null,
							"The queue is full == "
									+ queue.isFull() + ". (it's a linked list...)");    
					break;
				case 4: // is empty
					JOptionPane.showMessageDialog(
							null,
							"The queue is empty == "
									+ queue.isEmpty() + ".");    
					break;
				case 5: 
					done = true;
					break;
				default:
					JOptionPane.showMessageDialog(
							null,
							"Invalid selection");
				} // end switch
			} // end try
			catch (NoSuchElementException e){
				JOptionPane.showMessageDialog(
						null,
						"The Queue is Empty",
						"",
						JOptionPane.ERROR_MESSAGE);

			} // end catch
		} //end while
		JOptionPane.showMessageDialog(null, "...quitting");
	} // end method main
} // end class Main