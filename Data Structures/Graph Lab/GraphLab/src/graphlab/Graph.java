package graphlab;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.PriorityQueue;

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

    /**
     * breadth first search of the graph.
     *
     * @param seaking the node we are looking for.
     * @param start the node to start from.
     */
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
            if (nextNodeToVisit.visited) {
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

    /**
     * Depth first search of the graph.
     *
     * @param seaking the node we are looking for.
     * @param start the node we are starting at.
     */
    public void depthFirstSearch(Node seaking, Node start) {
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
            if (nextNodeToVisit.visited) {
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

    private void cleanup() {
        for (Node n : nodes) {
            n.setShortestDistanceTo(Integer.MAX_VALUE);
            n.shortestPath = null;
            n.visited = false;
        }
    }

    /**
     * Runs Dijkstra's algorithm on the graph. marks paths to take.
     *
     * @param start the node to start from.
     * @return this graph with shortest distances calculated and edges to follow
     * marked.
     */
    public Graph dijkstra(Node start) {
        cleanup();
        //the heap we will use to keep the path's minimum.
        PriorityQueue<Node> heap = new PriorityQueue<>();

        //set the start node's distance to 0.
        start.setShortestDistanceTo(0);

        heap.add(start);

        //while we still have nodes to visit, visit them.
        while (!heap.isEmpty()) {
            //get the next node from the heap.
            Node visiting = heap.poll();
            //mark the node as visited.
            visiting.visited = true;

            //loop through the edges
            for (Edge e : visiting.edges) {
                //update weights if needed
                if (e.getWeight() + visiting.getShortestDistanceTo() < e.getEnd().getShortestDistanceTo()) {
                    e.getEnd().setShortestDistanceTo(e.getWeight() + visiting.getShortestDistanceTo());

                    // set the node's shortest path to this new edge. 
                    e.getEnd().setShortestPath(e);
                }
                if (!e.getEnd().visited) {
                    heap.add(e.getEnd());
                }
            }
        }

        for (Node n : nodes) {
            if (n != start) {
                System.out.println("Node: " + n.name + " Shortest Distance: " + n.getShortestDistanceTo() + " by edge from " + n.getShortestPath().getEnd().name);
            }
        }
        return this;
    }

    public Graph prims(Node start) {
        cleanup();
        PriorityQueue<Edge> heap = new PriorityQueue<>();
        //add the start's edges to the heap.
        for (Edge e : start.getEdges()) {
            heap.add(e);
        }
        while (!heap.isEmpty()) {
            Node visiting = heap.peek().getEnd();
            if (!visiting.visited) {
                visiting.shortestPath = heap.remove();
                visiting.visited = true;
                for (Edge e : visiting.edges) {
                    heap.add(e);
                }
            }else{
                heap.remove();
            }
        }
        for (Node n : nodes) {
            System.out.println("Node: " + n.name + " Shortest Distance: " + n.getShortestPath().getWeight() + " by edge from " + n.getShortestPath().getStart().name);

        }
        return this;
    }

}
