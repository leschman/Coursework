package graphlab;

import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author Logan Esch
 */
public class Node {

    /**
     * ArrayList to hold edges that this node is adjacent to.
     */
    private ArrayList<Edge> edges = new ArrayList<>(5);
    /**
     * the name of this node.
     *
     */
    private String name;

    /**
     *
     * @param name the name of this node.
     */
    public Node(String name) {
        this.name = name;
    }

    /**
     * add an edge to this node.
     *
     * @param weight the weight of this edge.
     * @param otherNode the node we are connecting this one to.
     */
    public void addEdge(int weight, Node otherNode) {
        edges.add(new Edge(weight, this, otherNode));
    }

    /**
     *
     * @return the name of this node.
     */
    public String getName() {
        return name;
    }

    /**
     *
     * @param nodeToCheck
     * @return true if node is adjacent to nodeToCheck, false otherwise.
     */
    public boolean hasAsNeighbor(Node nodeToCheck) {
        return edges.contains(new Edge(0, this, nodeToCheck));
    }

    /**
     * sorts edges based on cost.
     */
    public void sortEdges() {
        edges.trimToSize();
        Collections.sort(edges);
    }

    /**
     *
     * @param otherNode node to get edge to.
     * @return an edge to that node, weight will be -1 if edge not found.
     */
    public Edge getEdgeToNode(Node otherNode) {
        Edge edge = new Edge(-1, this, otherNode);
        for (Edge e : edges) {
            if (e.equals(edge)) {
                return e;
            }
        }
        return edge;
    }
}
