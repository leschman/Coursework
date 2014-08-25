package emergencyRoom;

/**
 * a generic queue.
 *
 * @author Logan Esch
 */
public class Queuer<E> {
    //data fields

    private Noder<E> first; // the first item in the queue.
    private Noder<E> last; // the last node in the queue. 

    /**
     * a private wrapper to build the queue.
     *
     * @param <E> the class type held by the queue.
     */
    private class Noder<E> {
        //data fields

        private E data; //the data held by the node.
        private Noder<E> next; //the next node in the queue.

        //Constructors
        /**
         *
         * @param data the data held by the node.
         */
        private Noder(E data) {
            this.data = data;
        }

        /**
         *
         * @param data the data held by the node.
         * @param next the next node.
         */
        private Noder(E data, Noder<E> next) {
            this.data = data;
            this.next = next;
        }
    }

    /**
     *
     * @return the first object in the queue.
     */
    public E dequeue() {
        Noder<E> temp = first;
        if (first.next == null) {
            first = null;
        } else {
            first = first.next;
        }
        return temp.data;
    }

    /**
     * takes an object and puts it at the back of the queue.
     *
     * @param data the object to go on the queue.
     */
    public void enqueue(E data) {
        Noder<E> temp = new Noder<>(data);
        if (first == null) {
            last = temp;
            first = last;
        } else {
            if (first.next == null) {
                first.next = temp;
            }
            last.next = temp;
            last = temp;
        }
    }

    /**
     * method to place new object at front of queue.
     *
     * @param data the object to go in the queue.
     */
    public void cut(E data) {
        first = new Noder<>(data, first);
    }

    /**
     * method to check if empty
     *
     * @return true if empty, false if not.
     */
    public boolean isEmpty() {
        if (first == null) {
            return true;
        } else {
            return false;
        }
    }
}
