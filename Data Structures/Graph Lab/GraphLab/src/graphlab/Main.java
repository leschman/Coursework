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
        try (BufferedReader br = new BufferedReader(new FileReader("C:/Users/Administrator/Documents/School/Data Structures/Graph Lab/GraphLab/src/graphlab/graph.txt"))) {

            String line = br.readLine();

            while (line != null) {

                String[] tokens = line.split(" ");
                for (String t : tokens) {
                    int i = Integer.parseInt(t);
                    System.out.print(i + " ");
                }
                System.out.println();
                line = br.readLine();
            }

        } catch (FileNotFoundException ex) {
            System.out.println("File not found.");
        } catch (IOException ex) {
            System.out.println("IO Exception.");
        }
    }

}
