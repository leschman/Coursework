package graphlab;

/**
 * A class to represent an edge in a graph. Contains start node, end node and
 * weight of traveling the graph.
 *
 *
 * @author Logan Esch
 */
public class Edge implements Comparable<Edge>{
    Node start;
    Node end;
    int weight;
    
    /**
     * Constructor for Edge
     * @param start the start node of the edge.
     * @param end the end node of the edge.
     * @param weight the weight of the edge. 
     */
    public Edge(Node start, Node end, int weight){
        this.start = start;
        this.end = end;
        this.weight = weight;
        //add this edge to the start Node's list.
        start.addEdge(this);
    }
    
    /**
     * 
     * @return the start node of this edge.  
     */
    public Node getStart(){
        return start;
    }
    
    /**
     * 
     * @return the end node of this edge.
     */
    public Node getEnd(){
        return end;
    }
    
    /**
     * 
     * @return the weight of this edge.
     */
    public int getWeight(){
        return weight;
    }

    @Override
    public int compareTo(Edge o) {
        return weight - o.getWeight();
    }
}
