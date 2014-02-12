package binarysearchtree;

/**
 * Node class to hold data for a binary tree.
 *
 * @author Logan Esch
 */
public class Node<E extends Comparable> implements Comparable<Node<E>> {

    /**
     * Data to be encapsulated by node.
     */
    private E data;
    /**
     * The left child node of this node.
     */
    private Node leftChild;
    /**
     * The right child node of this node.
     */
    private Node rightChild;
    
    /**
     * The parent of this node.
     */
    private Node parent;

    /**
     * Returns a new node with left and right children as null.
     *
     * @param data the data to be held by the node.
     */
    public Node(E data) {

        this.data = data;
        leftChild = null;
        rightChild = null;
    }

    /**
     * Returns a new node as specified.
     *
     * @param data the data to be held by the node.
     * @param leftChild the left child of this node.
     * @param rightChild the right child of this node.
     * @param parent the parent of this node.
     */
    public Node(E data, Node leftChild, Node rightChild, Node parent) {
        this.data = data;
        this.leftChild = leftChild;
        this.rightChild = rightChild;
        this.parent = parent;
    }

    /**
     *
     * @return the data held by this node.
     */
    public E getData() {
        return data;
    }
    
    /**
     * Changes the data held by the node. 
     * @param data the data to set this node to.
     */
    public void setData(E data){
        this.data = data;
    }

    /**
     *
     * @return reference to right child of this node.
     */
    public Node getRightChild() {
        return rightChild;
    }

    /**
     *
     * @return reference to left child of this node.
     */
    public Node getLeftChild() {
        return leftChild;
    }

    /**
     *
     * @param newRightChild node to be the new right child of this node.
     */
    public void setRightChild(Node newRightChild) {
        rightChild = newRightChild;
    }

    /**
     *
     * @param newLeftChild node to be the new left child of this node.
     */
    public void setLeftChild(Node newLeftChild) {
        leftChild = newLeftChild;
    }
    
    /**
     * 
     * @return the parent of this node.
     */
    public Node getParent(){
        return parent;
    }
    
    /**
     * 
     * @param parent node to set parent as.  
     */
    public void setParent(Node parent){
        this.parent = parent;
    }

    /**
     * Compares the data in this node to the data in another node.
     *
     * @param otherNode the node to compare this node to.
     * @return the data in this node compared to data in other node.
     */
    @Override
    public int compareTo(Node<E> otherNode) {
        return data.compareTo(otherNode.getData());
    }
}
