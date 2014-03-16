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

        try (BufferedReader br = new BufferedReader(new FileReader("C:/Users/Administrator/Documents/School/Data Structures/Graph Lab/GraphLab/src/graphlab/graph.txt"))) {

            String line = br.readLine();
            int lineCount = 0;

            while (line != null) {
                
                Node start = new Node("" + lineCount);
                String[] tokens = line.split(" ");
                int hCount = 0;
                for (String t : tokens) {
                    Node end = new Node("" + hCount);
                    int weight = Integer.parseInt(t);

                    graph.insertEdge(new Edge(start, end, weight));
                    
                    hCount++;
                }
                line = br.readLine();
                lineCount++;
            }

        } catch (FileNotFoundException ex) {
            System.out.println("File not found.");
        } catch (IOException ex) {
            System.out.println("IO Exception.");
        }
    }

}
