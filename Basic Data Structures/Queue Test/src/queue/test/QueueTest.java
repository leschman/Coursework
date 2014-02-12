/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package queue.test;

/**
 *
 * @author Logan Esch
 */
public class QueueTest {

    Queuer<Patient> queue = new Queuer<>();

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Patient adam = new Patient("adam", "adf", 1);
        Patient bob = new Patient("bob", "adf", 1);
        Patient charlie = new Patient("Charlie", "adf", 1);
        QueueTest queueTest = new QueueTest();
        System.out.println("enqueuing " + adam.getName());
        queueTest.queue.enqueue(adam);
        System.out.println("enqueuing " + bob.getName());
        queueTest.queue.enqueue(bob);
        System.out.println("enqueuing " + charlie.getName());
        queueTest.queue.enqueue(charlie);
        System.out.println("enqueuing " + adam.getName());
        queueTest.queue.enqueue(adam);
        System.out.println("enqueuing " + bob.getName());
        queueTest.queue.enqueue(bob);
        System.out.println("enqueuing " + charlie.getName());
        queueTest.queue.enqueue(charlie);
        System.out.println("enqueuing " + adam.getName());
        queueTest.queue.enqueue(adam);
        System.out.println("enqueuing " + bob.getName());
        queueTest.queue.enqueue(bob);
        System.out.println("enqueuing " + charlie.getName());
        queueTest.queue.enqueue(charlie);
        
        System.out.println("Dequeueing: /n");
        while(!queueTest.queue.isEmpty())
        System.out.println(queueTest.queue.dequeue().getName());

    }
}
