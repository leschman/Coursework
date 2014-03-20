package graphlab;

import java.util.ArrayList;

/**
 * Node class for a graph.
 *
 *
 * @author Logan Esch
 */
public class Node {

    String name;
    Boolean visited = false;
    ArrayList<Edge> edges = new ArrayList<>();

    /**
     * Constructor for Node
     *
     * @param name the name of the node.
     */
    public Node(String name) {
        this.name = name;
    }

    /**
     * adds a new edge to this node. The start node of the edge will be this
     * node.
     *
     * @param endNode the end node of this edge.
     * @param weight the weight of the edge.
     */
    public void addEdge(Node endNode, int weight) {
        edges.add(new Edge(this, endNode, weight));
    }

    /**
     *
     * @param newEdge the edge to add to this node.
     */
    public void addEdge(Edge newEdge) {
        if (newEdge.start.equals(this)) {
            edges.add(newEdge);
        } else {
            throw new UnsupportedOperationException("The edge's start did not match this node.");
        }
    }

    /**
     *
     * @return the edges of this node.
     */
    public ArrayList<Edge> getEdges() {
        return edges;
    }
}
