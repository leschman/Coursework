package graphlab;

/**
 * Class holds an edge for a weighted graph.
 *
 * @author Logan Esch
 */
public class Edge implements Comparable<Edge> {

    /**
     * the weight of this edge.
     */
    private int weight;
    /**
     * the start node of this edge.
     */
    private Node start;
    /**
     * the end node of this edge.
     */
    private Node end;

    /**
     *
     * @param weight the weight of this edge.
     * @param start the start node of this edge.
     * @param end the end node of this edge.
     */
    public Edge(int weight, Node start, Node end) {

        this.weight = weight;
        this.start = start;
        this.end = end;
    }

    /**
     *
     * @return the weight of this edge.
     */
    public int getWeight() {
        return weight;
    }

    /**
     *
     * @return the start Node of this edge.
     */
    public Node getStart() {
        return start;
    }

    /**
     *
     * @return the end Node of this edge.
     */
    public Node getEnd() {
        return end;
    }

    @Override
    public int compareTo(Edge otherEdge) {
        if (this.weight < otherEdge.getWeight()) {
            return -1;
        } else if (this.weight > otherEdge.getWeight()) {
            return 1;
        } else {
            return 0;
        }
    }

    /**
     *
     * @param o the object to compare this one to.
     * @return true if the object is an edge and that edge has the same endpoint
     * as this one. False otherwise.
     */
    @Override
    public boolean equals(Object o) {
        //check if the classes match up. if not return false. 
        if (o.getClass() != this.getClass()) {
            return false;
        } else {
            //cast the object as an edge. 
            Edge otherEdge = (Edge) o;
            //check their endpoints, if the same return true. 
            if (otherEdge.getEnd() == end) {
                return true;
            } else {
                //endpoints not the same. return false. 
                return false;
            }
        }
    }
}
