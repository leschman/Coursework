package graphlab;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

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
        ArrayList<Integer> list = new ArrayList<>();
        int[][] matrix = null;

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
                line = line.trim();
                String[] tokens = line.split(" ");
                int count = 0;
                for (String s : tokens) {
                    if (!"".equals(s)) {
                        //parse the weight of the edge from the token.
                        int weight = Integer.parseInt(s);
                        if (nodesInGraph[count] == null) {
                            //initalize end node.
                            nodesInGraph[count] = new Node("" + count);
                        }
                        //set end to point to the array.
                        Node end = nodesInGraph[count];
                        //only add the edge to the graph if it is not 0. 
                        if (weight != 0) {
                            graph.insertEdge(new Edge(start, end, weight));
                            list.add(weight);
                        } else {
                            list.add(Integer.MAX_VALUE);
                        }
                        count++;
                    }

                }

                line = br.readLine();
                if(matrix == null){
                    matrix = new int[list.size()][list.size()];
                }
                for(int i = 0; i < list.size(); i++){
                    matrix[lineCount][i]= list.get(i);
                }
                list.clear();
                lineCount++;
            }
        } catch (FileNotFoundException ex) {
            System.out.println("File not found.");
        } catch (IOException ex) {
            System.out.println("IO Exception.");
        }

        //graph.breadthFirstSearch(graph.nodes.get(4), graph.nodes.get(0));
        //graph.depthFirstSearch(graph.nodes.get(4), graph.nodes.get(0));
        //graph.dijkstra(graph.nodes.get(0));
        //graph.prims(graph.nodes.get(0));
        //graph.floydsReachability();
        floydWarshall(matrix);
    }

    static void floydWarshall(int[][] matrix) {
        System.out.println("Floyd Warshall Matrix:");
        for (int lockIndex = 0; lockIndex < matrix.length; lockIndex++) {
            for (int rowWorkingOn = 0; rowWorkingOn < matrix.length; rowWorkingOn++) {
                if (rowWorkingOn == lockIndex) {
                    continue;
                }
                for (int colWorkingOn = 0; colWorkingOn < matrix.length; colWorkingOn++) {
                    if (colWorkingOn == lockIndex) {
                        continue;
                    }
                    if (matrix[lockIndex][rowWorkingOn] == Integer.MAX_VALUE || matrix[colWorkingOn][lockIndex] == Integer.MAX_VALUE) {
                        continue;
                    }
                    int lockSum = matrix[lockIndex][rowWorkingOn] + matrix[colWorkingOn][lockIndex];
                    if (lockSum < matrix[colWorkingOn][rowWorkingOn]) {
                        matrix[colWorkingOn][rowWorkingOn] = lockSum;
                    }
                }
            }
        }
        for(int i = 0; i < matrix.length; i++){
            matrix[i][i] = 0;
        };
        for (int[] i : matrix) {
            for (int j : i) {
                System.out.format("%2d ", j);
            }
            System.out.println();
        }
    }

}
