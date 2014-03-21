package graphlab;

import java.util.ArrayList;
import java.util.LinkedList;

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

    public void breadthFirstSearch(Node seaking, Node start) {
        System.out.println("Starting breadth-first search with start " + start.name + " seaking " + seaking.name);
        //queue to hold edges we encounter. 
        LinkedList<Edge> queue = new LinkedList<>();

        //check the start, add it to the nodes visited if its not what we are seaking.
        if (seaking == start) {
            System.out.println("Found node: " + seaking.name);
            return;
        }
        start.visited = true;
        
        //add the start edges to the queue.
        for (Edge e : start.getEdges()) {
            queue.add(e);
        }

        //loop through the edges and search for that node. 
        while (!queue.isEmpty()) {
            Node nextNodeToVisit = queue.poll().getEnd();
            //if we have already visited a node, go to next. 
            if(nextNodeToVisit.visited){
                continue;
            }

            System.out.println("Checking node: " + nextNodeToVisit.name);
            //check if this is the node we were looking for. 
            if (nextNodeToVisit == seaking) {
                System.out.println("Found node: " + seaking.name);
                cleanup();
                return;
            } else {
                //not the node we were looking for.
                nextNodeToVisit.visited = true;
                //add the edges to the queue. 
                System.out.println("Adding Edges from: " + nextNodeToVisit.name);
                for (Edge e : nextNodeToVisit.getEdges()) {
                    queue.add(e);
                }
            }
        }
        cleanup();
        System.out.println("Node " + seaking.name + " cannot be reached from " + start.name);
    }
    
    public void depthFirstSearch(Node seaking, Node start){
        System.out.println("Starting depth-first search with start " + start.name + " seaking " + seaking.name);
        //stack to hold edges we will test. 
        LinkedList<Edge> stack = new LinkedList<>();
        //check the start, add it to the nodes visited if its not what we are seaking.
        if (seaking == start) {
            System.out.println("Found node: " + seaking.name);
            return;
        }
        start.visited = true;
        
        //add the start edges to the queue.
        for (Edge e : start.getEdges()) {
            stack.push(e);
        }

        //loop through the edges and search for that node. 
        while (!stack.isEmpty()) {
            Node nextNodeToVisit = stack.pop().getEnd();
            //if we have already visited a node, go to next. 
            if(nextNodeToVisit.visited){
                continue;
            }

            System.out.println("Checking node: " + nextNodeToVisit.name);
            //check if this is the node we were looking for. 
            if (nextNodeToVisit == seaking) {
                System.out.println("Found node: " + seaking.name);
                cleanup();
                return;
            } else {
                //not the node we were looking for.
                nextNodeToVisit.visited = true;
                //add the edges to the queue. 
                System.out.println("Adding Edges from: " + nextNodeToVisit.name);
                for (Edge e : nextNodeToVisit.getEdges()) {
                    stack.push(e);
                }
            }
        }
        cleanup();
        System.out.println("Node " + seaking.name + " cannot be reached from " + start.name);
    }
    
    private void cleanup(){
        for(Node n : nodes){
            n.visited = false;
        }
    }
}
