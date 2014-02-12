package binarysearchtree;

/**
 *
 * @author Logan Esch
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        //build and populate the tree. 
        Data rootData = new Data(10, "M");
        BinarySearchTree tree = new BinarySearchTree(rootData);
        tree.insert(new Data(9, "F"));
        tree.insert(new Data(5, "B"));
        tree.insert(new Data(7, "A"));
        tree.insert(new Data(15, "C"));
        tree.insert(new Data(12, "G"));
        tree.insert(new Data(17, "H"));
        tree.insert(new Data(20, "S"));
        tree.insert(new Data(20, "P"));
        tree.insert(new Data(20, "N"));
        tree.insert(new Data(20, "Q"));
        tree.insert(new Data(20, "T"));
        tree.insert(new Data(20, "U"));
        
        //remove a few nodes.
        tree.delete(new Data(10, "M"));
        tree.delete(new Data(20, "N"));

        //print out the result. 
        System.out.println("Pre-Order Print: ");
        tree.printPreOrder();

        System.out.println("In-Order Print: ");
        tree.printInOrder();

        System.out.println("Post-Order Print: ");
        tree.printPostOrder();

        System.out.println("Searching for M.");
        tree.search(new Data(10, "M"));

    }
}
