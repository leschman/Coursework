/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lab10;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 *
 * @author Logan Esch
 */
public class MainStart {

    /**
     * @param args the command line arguments
     */
    private static void main(String[] args) throws IOException {
        CardDeck deck = new CardDeck();
        System.out.println(deck.toString());
        boolean run = true;
        while (run) {
            System.out.println("Draw Card: 0, Exit: 1");
            try {
                BufferedReader bufferRead = new BufferedReader(new InputStreamReader(System.in));
                String s = bufferRead.readLine();

                if (s.equals("0")) {
                    System.out.println(deck.getNextCard().toString());
                } else {
                    System.out.println("Bye");
                    run = false;
                }
            } catch (IOException e) {
                e.printStackTrace();
            }


        }
    }
}
