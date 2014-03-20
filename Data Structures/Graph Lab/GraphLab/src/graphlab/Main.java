package graphlab;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 *
 * @author Logan Esch
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        // the main graph
        Graph graph = new Graph();

        try (BufferedReader br = new BufferedReader(new FileReader("C:/Users/Administrator/Documents/School/Data Structures/Graph Lab/GraphLab/src/graphlab/sample.txt"))) {

            String line = br.readLine();
            int lineCount = 0;
            Node[] nodesInGraph = new Node[line.length()];

            //loop through all the lines in the input text.
            while (line != null) {

                //check if the start node has been intialized. 
                if (nodesInGraph[lineCount] == null) {
                    //initalize if it is null.
                    nodesInGraph[lineCount] = new Node("" + lineCount);
                }
                //this is the start node of any edges on this line.
                Node start = nodesInGraph[lineCount];

                int horizontalCount = 0;

                //loop through the line, processing charcter by character.  
                while (line.length() > 0) {
                    //grab the first character of the line.
                    String token = line.substring(0, 1);
                    //remove that character from the line.
                    line = line.substring(1);
                    //check if the end node of the edge has been initalized. 
                    if (nodesInGraph[horizontalCount] == null) {
                        //initalize end node.
                        nodesInGraph[horizontalCount] = new Node("" + horizontalCount);
                    }
                    //set end to point to the array.
                    Node end = nodesInGraph[horizontalCount];
                    //parse the weight of the edge from the token.
                    int weight = Integer.parseInt(token);
                    //only add the edge to the graph if it is not 0. 
                    if (weight != 0) {

                        graph.insertEdge(new Edge(start, end, weight));
                    }

                    horizontalCount++;
                }
                // line has been processed, set up for next line. 

                line = br.readLine();
                lineCount++;
            }
        } catch (FileNotFoundException ex) {
            System.out.println("File not found.");
        } catch (IOException ex) {
            System.out.println("IO Exception.");
        }
        
        graph.breadthFirstSearch(graph.nodes.get(4), graph.nodes.get(0));
    }

}
