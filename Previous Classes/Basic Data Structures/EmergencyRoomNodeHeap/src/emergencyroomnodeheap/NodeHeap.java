package emergencyroomnodeheap;

/**
 * a generic queue.
 *
 * @author Logan Esch, Hannah Cho
 */
public class NodeHeap<E extends Comparable<E>> {
    //data fields

    /**
     * The root node of the heap. The smallest.
     */
    private Noder<E> root;
    private int total = 0;

    /**
     * a private wrapper to build the queue.
     *
     * @param <E> the class type held by the queue.
     */
    private class Noder<E extends Comparable<E>> {
        //data fields

        private E data; //the data held by the node.
        private Noder<E> left; // the node to the left of this one. 
        private Noder<E> right; //the node to the right of this one. 
        private Noder<E> parent; // the parent of this node.
        private int depth = 0;

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
         * @param left the node to the left.
         * @param right the node to the right.
         */
        private Noder(E data, Noder<E> left, Noder<E> right, Noder<E> parent) {
            this.data = data;
            this.left = left;
            this.right = right;
            this.parent = parent;
        }
    }
/**
 * Inserts data into the heap. 
 * @param data the inserted. 
 */
    public void insert(E data) {
        Noder<E> newNode = new Noder<>(data);
        if (root == null) {
            root = newNode;
        } else {
            newNode.parent = getLastParent(root, 0);
            if (newNode.parent.left == null) {
                newNode.parent.left = newNode;
            } else {
                newNode.parent.right = newNode;
            }
            bubbleUp(newNode);
        }
    }
/**
 * used to re sort the heap after an insertion. 
 * @param node the node to sort from, should be one inserted. 
 */
    private void bubbleUp(Noder node) {
        while (node.parent != null && node.data.compareTo(node.parent.data) < 0) {

            Noder temp = new Noder(node.parent.data);
            node.parent.data = node.data;
            node.data = temp.data;

            node = node.parent;
        }
    }
/**
 * Used to resort the array after a deletion
 * @param node should be new "root" to shake it down to proper place. 
 */
    private void bubbleDown(Noder node) {

        while (node.left != null && node.right != null && (node.data.compareTo(node.left.data) > 0 || node.data.compareTo(node.right.data) > 0)) {
            if (node.left.data.compareTo(node.right.data) < 0) {
                Noder temp = new Noder(node.left.data);
                node.left.data = node.data;
                node.data = temp.data;
                node = node.left;
            } else {
                Noder temp = new Noder(node.right.data);
                node.right.data = node.data;
                node.data = temp.data;
                node = node.right;
            }

        }
    }
/**
 * 
 * @return data on top of heap. 
 */
    public E delete() {
        E data = root.data;
        Noder temp = getDeepest(root, 0);
        if (temp.right != null) {
            temp = temp.right;
        } else if (temp.left != null) {
            temp = temp.left;
        }
        if (temp.parent.left != null && temp.parent.left == temp) {
            temp.parent.left = null;
        } else {
            temp.parent.right = null;
        }
        temp.parent = null;
        root.data = (E) temp.data;
        bubbleDown(root);
        return data;
    }
/**
 * used to find where to insert a new item. 
 * @param node the node we are inserting. 
 * @param depth used for recursion, first call should be 0. 
 * @return the parent of the node we are about to insert. 
 */
    private Noder getLastParent(Noder node, int depth) {
        depth++;
        node.depth = depth;
        if (node.left == null || node.right == null) {
            return node;
        } else {
            //nessisary because of reordering later. 
            node.left.depth = 0;
            node.right.depth = 0;
            Noder left = getLastParent(node.left, depth);
            Noder right = getLastParent(node.right, depth);
            if (node.left.depth == node.right.depth) {
                node.depth += left.depth;
                return left;
            } else if (node.left.depth > node.right.depth) {
                node.depth += right.depth;
                return right;
            }
            System.out.println("We had an error");
            return node;
        }
    }
/**
 * used to find node to take to top after deletion. 
 * @param node should be root. 
 * @param depth used for recursion. should be 0 at first. 
 * @return the parent of the node we are about to take to root. 
 */
    private Noder getDeepest(Noder node, int depth) {
        depth++;
        node.depth = depth;
        if (node.left == null || node.right == null) {
            return node;

        } else {
            //nessisary because of reordering later. 
            node.left.depth = 0;
            node.right.depth = 0;
            Noder left = getDeepest(node.left, depth);
            Noder right = getDeepest(node.right, depth);
            if (node.left.depth <= node.right.depth) {
                node.depth += left.depth;
                return left;
            } else {
                node.depth += right.depth;
                return right;
            }
        }
    }
}
