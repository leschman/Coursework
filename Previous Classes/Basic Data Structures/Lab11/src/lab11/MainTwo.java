/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lab11;

import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JTextField;

/**
 *
 * @author Logan Esch
 */
public class MainTwo {

    private CardDeck deck = new CardDeck();
    ArrayList<Card> hand = new ArrayList<>();
    JFrame frame = new JFrame("Black Jack");
    JTextField handValue = new JTextField();

    public static void main(String args[]) {
        new MainTwo().go();
    }

    public void go() {
        deck.fillDeckWithDefaultImages();

        hand.add(deck.takeTopCard());
        hand.add(deck.takeTopCard());



        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new FlowLayout());
        JButton hitButton = new JButton("Hit Me!");
        hitButton.addActionListener(new HitButtonPressed());
        JButton stayButton = new JButton("I'm A coward who's staying");
        stayButton.addActionListener(new StayButtonPressed());
        JLabel total = new JLabel("Total");
        JMenuBar menu = new JMenuBar();
        JMenu file = new JMenu("File");
        JMenuItem exit = new JMenuItem("Exit");
        exit.addActionListener(new ExitMenuPressed());
        file.add(exit);
        menu.add(file);
        frame.setJMenuBar(menu);
        addCards();
        frame.add(hitButton);
        frame.add(stayButton);
        frame.add(total);
        frame.add(handValue);

        frame.pack();
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }

    public void addCards() {
        for (int i = 0; i < hand.size(); i++) {
            frame.getContentPane().add(hand.get(i));
        }
    }

    private class HitButtonPressed implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            hand.add(deck.takeTopCard());
            frame.getContentPane().add(hand.get(hand.size() - 1));
            int value = 0;
            for (int i = 0; i < hand.size(); i++) {
                if(hand.get(i).getRank() == 1){
                    value += 11;
                }else if(hand.get(i).getRank() > 10){
                    value+= 10;
                }else {
                value += hand.get(i).getRank();
                }
            }
            handValue.setText("" + value);
            frame.pack();
        }
    }

    private class StayButtonPressed implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {

            int value = 0;
            for (int i = 0; i < hand.size(); i++) {
                if(hand.get(i).getRank() == 1){
                    value += 11;
                }else if(hand.get(i).getRank() > 10){
                    value+= 10;
                }else {
                value += hand.get(i).getRank();
                }
            }
            handValue.setText("" + value);
            frame.pack();
        }
    }
       private class ExitMenuPressed implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            System.exit(0);
        }
    }
}
