package avltree;

public class Node {

    /**
     * the data held by the node.
     */
    private int item;
    /**
     * the left child of this one.
     */
    private Node left;
    /**
     * the right child of this one.
     */
    private Node right;
    public static final int BALANCED = 0;
    public static final int RIGHT_HEAVY = 1;
    public static final int LEFT_HEAVY = -1;
    /**
     * the balance of the node in the tree. BALANCED: 0 RIGHT_HEAVY: 1
     * LEFT_HEAVY: -1
     */
    public int balance = 0;

    /**
     * constructor for a Node, returns a node holding an int.
     *
     * @param a the int to have this node hold.
     */
    Node(int a) {
        item = a;
    }

    /**
     *
     * @return the int held by this node.
     */
    public int getItem() {
        return item;
    }

    /**
     * sets the right child of this node.
     *
     * @param i the node to make the right child of this one.
     */
    public void setRight(Node i) {
        right = i;
    }

    /**
     *
     * @param i the node to make the left child of this one.
     */
    public void setLeft(Node i) {
        left = i;
    }

    /**
     *
     * @return the left child of this node.
     */
    public Node getLeft() {
        return left;
    }

    /**
     *
     * @return the right child of this node.
     */
    public Node getRight() {
        return right;
    }
}
