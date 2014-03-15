package graphlab;

import java.util.ArrayList;

/**
 * A weighted graph. Could also be unweighted if all edges have the same weight.
 *
 *
 * @author Logan Esch
 */
public class Graph {

    /**
     * The edges of the graph.
     */
    ArrayList<Node> nodes = new ArrayList<>();

    /**
     * adds a new edge to the graph. If the start or end nodes of the edge are
     * not already in the graph then they are added.
     *
     * @param newEdge the new edge to add.
     */
    public void insertEdge(Edge newEdge) {

        Node start = newEdge.getStart();
        Node end = newEdge.getEnd();
        boolean startIsNewNode = true;
        boolean endIsNewNode = true;

        //check if the edge adds a new node. 
        for (Node n : nodes) {
            if (n.equals(start)) {
                startIsNewNode = false;
            }
            if (n.equals(end)) {
                endIsNewNode = false;
            }
        }
        //add any new nodes to the arraylist. 
        if (startIsNewNode) {
            nodes.add(start);
        }
        if (endIsNewNode) {
            nodes.add(end);
        }

    }

    public void breadthFirstSearch(){
        
    }
}
