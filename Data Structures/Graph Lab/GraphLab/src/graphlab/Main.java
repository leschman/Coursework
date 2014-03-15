package graphlab;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Logan Esch
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            try (Scanner s = new Scanner(new FileReader("C:/Users/Administrator/Documents/School/Data Structures/Graph Lab/GraphLab/src/graphlab/graph.txt"))) {
                while (s.hasNextInt()) {
                    System.out.print(s.nextInt());

                }
            }

        } catch (FileNotFoundException ex) {
            System.out.println("File not found.");
        }

    }

}
