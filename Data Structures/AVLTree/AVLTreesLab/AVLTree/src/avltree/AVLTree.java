package avltree;

import java.util.*;

public class AVLTree {

    /**
     * the root node of the tree.
     */
    private Node root;
    /**
     * boolean flag to indicate new node has been inserted.
     */
    private boolean increase;
    /**
     * ????
     */
    private boolean decrease;
    /**
     * ????
     */
    private boolean addReturn;
    /**
     * ????
     */
    private Scanner stop;

    public AVLTree() {
        root = null;
        addReturn = false;
        increase = false;
        stop = new Scanner(System.in);
    }

    /**
     * public method to insert into tree.
     *
     * @param item to be inserted into tree.
     * @return boolean indicating successful insertion.
     */
    public boolean add(int item) {

        System.out.println("Starting to search for a place to put " + item);
        increase = false;
        root = add(root, item);
        return addReturn;
    }

    /**
     * private recursive method to insert items into the tree.
     *
     * @param localRoot the local root to operate on.
     * @param item the item to insert into the tree.
     * @return reference to node inserted.
     */
    private Node add(Node localRoot, int item) {

        if (localRoot == null) {
            //localRoot is null, insert item. 
            addReturn = true;
            increase = true;
            System.out.println("Added " + item);
            //return reference to new item inserted. 
            return new Node(item);
        }
        System.out.println("Add called with " + localRoot.getItem() + " as the root.");
        if (item == localRoot.getItem()) {                                //item is alreday in tree
            //if item is already in tree, return refernece to it. 
            increase = false;
            addReturn = false;
            return localRoot;
        } else if (item < localRoot.getItem()) {
            //item is less than localRoot, branch left. 
            System.out.println("Branching left");
            // set left to recursive call on left node. 
            localRoot.setLeft(add(localRoot.getLeft(), item));

            if (increase) {
                //inserted to left, need to decrease balance. 
                decrementBalance(localRoot);
                if (localRoot.balance < Node.LEFT_HEAVY) {
                    //check if node is left heavy. 
                    increase = false;
                    //call rebalance method on local root. 
                    return rebalanceLeft(localRoot);
                }
            }
            return localRoot;                                            // Rebalance not needed.
        } else {
            System.out.println("Branching right");
            // recurse right, set right to returned node. 
            localRoot.setRight(add(localRoot.getRight(), item));
            if (increase) {
                //inserted to right, need to increase balance.
                incrementBalance(localRoot);
                if (localRoot.balance > Node.RIGHT_HEAVY) {
                    //right heavy, need to rebalance. 
                    return rebalanceRight(localRoot);
                } else {
                    return localRoot;
                }
            } else {
                return localRoot;
            }
        }

    }

    /**
     * decreases the balance on the given node by one.
     *
     * @param node the node to operate on.
     */
    private void decrementBalance(Node node) {
        node.balance--;
        if (node.balance == Node.BALANCED) {
            increase = false;
        }
    }

    private Node rebalanceRight(Node localRoot) {

        // Obtain reference to right child
        Node rightChild = localRoot.getRight();
        // See if right-left heavy
        if (rightChild.balance < 0) {
            // Obtain reference to right-left child
            Node rightLeftChild = rightChild.getLeft();
            /* Adjust the balances to be their new values after
             the rotates are performed.
             */
            if (rightLeftChild.balance > 0) {
                //UPDATE BALANCE FOR RIGHT LEFT BEING RIGHT HEAVY
                localRoot.balance = 0;
                rightChild.balance = -1;
                rightLeftChild.balance = 0;
            } else if (rightLeftChild.balance < 0) {
                // UPDATE BALANCE FOR RIGHT LEFT BEING LEFT HEAVY
                localRoot.balance = 1;
                rightChild.balance = 0;
                rightLeftChild.balance = 0;
            } else {
                // UPDATE BALANCE FOR RIGHT LEFT BEING BALANCED.
                localRoot.balance = 0;
                rightChild.balance = 0;
                rightLeftChild.balance = 0;
            }
            /**
             * After the rotates the overall height will be reduced thus
             * increase is now false, but decrease is now true.
             */
            increase = false;
            decrease = true;
            // Perform double rotation
            localRoot.setRight(rotateLeft(localRoot.getRight()));
            return rotateRight(localRoot);
        } else {
            /* In this case both the rightChild (the new root)
             and the root (new left child) will both be balanced
             after the rotate. Also the overall height will be
             reduced, thus increase will be false, but decrease
             will be true.
             */
            //set both nodes involved to balanced
            localRoot.balance = 0;
            rightChild.balance = 0;
            increase = false;
            decrease = true;

            // Now rotate 
            return rotateRight(localRoot);
        }
    }

    private Node rebalanceLeft(Node localRoot) {
        // Obtain reference to left child
        Node leftChild = localRoot.getLeft();
        // See if leftRight heavy
        if (leftChild.balance > 0) {
            // Obtain reference to leftRight child
            Node leftRightChild = leftChild.getRight();
            /* Adjust the balances to be their new values after
             the rotates are performed.
             */
            if (leftRightChild.balance > 0) {
                //UPDATE BALANCE FOR LEFT RIGHT BEING RIGHT HEAVY
                localRoot.balance = -1;
                leftChild.balance = 0;
                leftRightChild.balance = 0;
            } else if (leftRightChild.balance < 0) {
                // UPDATE BALANCE FOR LEFT RIGHT BEING LEFT HEAVY
                localRoot.balance = 0;
                leftChild.balance = 1;
                leftRightChild.balance = 0;
            } else {
                // UPDATE BALANCE FOR LEFT RIGHT BEING BALANCED.
                localRoot.balance = 0;
                leftChild.balance = 0;
                leftRightChild.balance = 0;
            }
            /**
             * After the rotates the overall height will be reduced thus
             * increase is now false, but decrease is now true.
             */
            increase = false;
            decrease = true;
            // Perform double rotation
            localRoot.setLeft(rotateRight(localRoot.getLeft()));
            return rotateLeft(localRoot);
        } else {
            /* In this case both the rightChild (the new root)
             and the root (new left child) will both be balanced
             after the rotate. Also the overall height will be
             reduced, thus increase will be false, but decrease
             will be true.
             */
            //set both nodes involved to balanced
            localRoot.balance = 0;
            leftChild.balance = 0;
            increase = false;
            decrease = true;

            // Now rotate 
            return rotateLeft(localRoot);
        }
    }

    private void incrementBalance(Node node) {
        node.balance++;
        if (node.balance > Node.BALANCED) {
            /* if now right heavy, the overall height has increased, but
             it has not decreased */
            increase = true;
            decrease = false;
        } else {
            /* if now balanced, the overall height has not increased, but
             it has decreased. */
            increase = false;
            decrease = true;
        }
    }

    private Node rotateRight(Node localRoot) {
        System.out.println("Rotating Right");
        Node rightChild = localRoot.getRight();
        localRoot.setRight(rightChild.getLeft());
        rightChild.setLeft(localRoot);
        return rightChild;
    }

    private Node rotateLeft(Node localRoot) {
        System.out.println("Rotating Left");
        //// hint this was only three lines that I took out. 
        Node leftChild = localRoot.getLeft();
        localRoot.setLeft(leftChild.getRight());
        leftChild.setRight(localRoot);
        return leftChild;
    }

    /**
     * Prints an in-order representation of the tree.
     */
    public void printInOrder() {
        String out = buildInOrder(root, "");
        System.out.println(out + "\n");
    }

    /**
     * Recursivly builds an in-order representation of the tree.
     *
     * @param localRoot the root to start at.
     * @param returnString the string to return.
     * @return the string above with data added.
     */
    private String buildInOrder(Node localRoot, String returnString) {
        //if has left child, recurse down it. 
        if (localRoot.getLeft() != null) {
            returnString = buildInOrder(localRoot.getLeft(), returnString);
        }
        //add the data to the string. 
        returnString = returnString + localRoot.getItem() + ", ";
        //if has right child, recurse down it. 
        if (localRoot.getRight() != null) {
            returnString = buildInOrder(localRoot.getRight(), returnString);
        }
        return returnString;
    }

    /**
     * Prints an preOrder representation of the tree.
     */
    public void printPreOrder() {
        String out = buildPreOrder(root, "");
        System.out.println(out + "\n");
    }

    /**
     * Recursivly builds an pre-order representation of the tree.
     *
     * @param localRoot the root to start at.
     * @param returnString the string to return.
     * @return the string above with data added.
     */
    private String buildPreOrder(Node localRoot, String returnString) {
        //add the data to the string. 
        returnString = returnString + localRoot.getItem() + ", ";
        //if has left child, recurse down it. 
        if (localRoot.getLeft() != null) {
            returnString = buildPreOrder(localRoot.getLeft(), returnString);
        }
        //if has right child, recurse down it. 
        if (localRoot.getRight() != null) {
            returnString = buildPreOrder(localRoot.getRight(), returnString);
        }
        return returnString;
    }

    /**
     * Prints an PostOrder representation of the tree.
     */
    public void printPostOrder() {
        String out = buildPostOrder(root, "");
        System.out.println(out + "\n");
    }

    /**
     * Recursivly builds an post-order representation of the tree.
     *
     * @param localRoot the root to start at.
     * @param returnString the string to return.
     * @return the string above with data added.
     */
    private String buildPostOrder(Node localRoot, String returnString) {

        //if has left child, recurse down it. 
        if (localRoot.getLeft() != null) {
            returnString = buildPostOrder(localRoot.getLeft(), returnString);
        }
        //if has right child, recurse down it. 
        if (localRoot.getRight() != null) {
            returnString = buildPostOrder(localRoot.getRight(), returnString);
        }
        //add the data to the string. 
        returnString = returnString + localRoot.getItem() + ", ";

        return returnString;
    }
}
