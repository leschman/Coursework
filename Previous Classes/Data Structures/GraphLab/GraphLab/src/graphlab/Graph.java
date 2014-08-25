package graphlab;

import java.util.ArrayList;
import java.util.HashMap;


/**
 *
 * @author Logan Esch
 */
public class Graph {
    
    private HashMap<String, ArrayList> nodes;
    
    public Graph(int size){
        nodes = new HashMap<>(size);
    }
    
    /**
     * adds a node to the graph. 
     * @param name the name of this node. 
     * @param edges the edges of this node. 
     */
    public void addNode(String name, ArrayList<Edge> edges){
        nodes.put(name, edges);
    }
    
    
}
