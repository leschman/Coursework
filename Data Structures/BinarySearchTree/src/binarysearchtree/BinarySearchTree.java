package binarysearchtree;

/**
 * A Binary Search Tree class.
 *
 * @author Logan Esch
 */
public class BinarySearchTree<E extends Comparable> {

    /**
     * The root of the tree.
     */
    private Node<E> root = null;

    /**
     * Constructor for a binary search tree.
     *
     * @param rootData the root data of the tree.
     */
    public BinarySearchTree(E rootData) {
        root = new Node(rootData);
    }

    /**
     * Inserts new data into the tree.
     *
     * @param data the data to be inserted.
     */
    public void insert(E data) {
        insert(new Node(data), root);
    }

    /**
     * Inserts a new node into the tree.
     *
     * @param data the data to be inserted into the Tree
     * @param localRoot the root to start inserting from.
     */
    private void insert(Node newNode, Node localRoot) {

        if (localRoot == null) {
            localRoot = newNode;
        } else if (localRoot.compareTo(newNode) > 0) {
            if (localRoot.getLeftChild() != null) {
                insert(newNode, localRoot.getLeftChild());
            } else {
                newNode.setParent(localRoot);
                localRoot.setLeftChild(newNode);
            }
        } else {
            if (localRoot.getRightChild() != null) {
                insert(newNode, localRoot.getRightChild());
            } else {
                newNode.setParent(localRoot);
                localRoot.setRightChild(newNode);
            }
        }
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
        if (localRoot.getLeftChild() != null) {
            returnString = buildInOrder(localRoot.getLeftChild(), returnString);
        }
        //add the data to the string. 
        returnString = returnString + localRoot.getData().toString();
        //if has right child, recurse down it. 
        if (localRoot.getRightChild() != null) {
            returnString = buildInOrder(localRoot.getRightChild(), returnString);
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
        returnString = returnString + localRoot.getData().toString();
        //if has left child, recurse down it. 
        if (localRoot.getLeftChild() != null) {
            returnString = buildPreOrder(localRoot.getLeftChild(), returnString);
        }
        //if has right child, recurse down it. 
        if (localRoot.getRightChild() != null) {
            returnString = buildPreOrder(localRoot.getRightChild(), returnString);
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
        if (localRoot.getLeftChild() != null) {
            returnString = buildPostOrder(localRoot.getLeftChild(), returnString);
        }
        //if has right child, recurse down it. 
        if (localRoot.getRightChild() != null) {
            returnString = buildPostOrder(localRoot.getRightChild(), returnString);
        }
        //add the data to the string. 
        returnString = returnString + localRoot.getData().toString();

        return returnString;
    }

    /**
     * search for a data object in the tree.
     *
     * @param query
     */
    public void search(E query) {
        Node searchResult = searchTree(root, new Node(query));
        if (searchResult != null) {
            System.out.println(query.toString() + " Found!");
        } else {
            System.out.println(query.toString() + " NOT FOUND.");
        }
    }

    /**
     * recurse through the tree looking for a node.
     *
     * @param localRoot the root to search from
     * @param query what we are looking for
     * @return weather or not the node is found.
     */
    private Node searchTree(Node localRoot, Node query) {
        if (localRoot == null) {
            return null;
        } else {
            int comparison = localRoot.compareTo(query);
            if (comparison > 0) {
                if (localRoot.getLeftChild() != null) {
                    localRoot = searchTree(localRoot.getLeftChild(), query);
                } else {
                    return null;
                }
            } else if (comparison < 0) {
                if (localRoot.getRightChild() != null) {
                    localRoot = searchTree(localRoot.getRightChild(), query);
                } else {
                    return null;
                }
            }
            return localRoot;
        }
    }

    /**
     * Method to remove a node from the tree. 
     * @param dataToDelete the data to remove from the tree. 
     */
    public void delete(E dataToDelete) {
        Node toDelete = new Node(dataToDelete);
        //search the tree for a reference to the node we are deleteing. 
        toDelete = searchTree(root, toDelete);
        //check if node in tree.
        if (toDelete == null) {
            //node not in tree. 
            System.out.println("Node not found.");

        } else {
            deleteRec(toDelete);
        }
    }

    /**
     * private method to recursively delete data from a tree. 
     * @param toDelete reference to node to remove from tree. 
     */
private void deleteRec(Node toDelete) {
        
        Node parent = toDelete.getParent();
         if (toDelete.getLeftChild() == null && toDelete.getRightChild() == null) {
            //toDelete has no children.            
            if (parent.getLeftChild() == toDelete) {
                //check if toDelete is left child.
                parent.setLeftChild(null);
            } else {
                //toDelete must be right child.
                parent.setRightChild(null);
            }
        } else if (toDelete.getLeftChild() == null || toDelete.getRightChild() == null) {
            //toDelete has one child.
            if (toDelete.getLeftChild() != null) {
                //check if child is left child. 
                if (parent.getLeftChild() == toDelete) {
                    //check if toDelete is left child.
                    parent.setLeftChild(toDelete.getLeftChild());
                    toDelete.getLeftChild().setParent(parent);
                } else {
                    //toDelete must be right child.
                    parent.setRightChild(toDelete.getLeftChild());
                    toDelete.getLeftChild().setParent(parent);
                }
            } else {
                //child must be right child
                if (parent.getLeftChild() == toDelete) {
                    //check if toDelete is left child.
                    parent.setLeftChild(toDelete.getRightChild());
                    toDelete.getRightChild().setParent(parent);
                } else {
                    //toDelete must be right child.
                    parent.setRightChild(toDelete.getRightChild());
                    toDelete.getRightChild().setParent(parent);
                }
            }
        } else {
            //node has two children. 
            Node minimumNode = findMinimumNode(toDelete.getRightChild());
            toDelete.setData(minimumNode.getData());
            deleteRec(minimumNode);
            
        }
    }

/**
 * helper method to return the minimum node 
 * @param localRoot
 * @return 
 */
    private Node findMinimumNode(Node localRoot) {
        if (localRoot.getLeftChild() != null) {
           localRoot = findMinimumNode(localRoot.getLeftChild());
        }
        return localRoot;
    }
}
