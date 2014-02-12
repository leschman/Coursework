/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lab11;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextArea;

/**
 *
 * @author Logan Esch and Hannah Cho
 */
public class MainOne {

        public static void main(String args[]){
            new MainOne().go();
            
        }
public void go() {
        JFrame WakeMeUp = new JFrame("Wake Me Up");

        JTextArea text = new JTextArea("So wake me up when it's all over\nWhen I'm wiser and I'm older\n All this time I was finding myself\nAnd I didn't know I was lost.");
        JLabel label = new JLabel("Some Song thing i dont really care about.");
        JFrame.setDefaultLookAndFeelDecorated(true);
        WakeMeUp.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        WakeMeUp.add(text);
        WakeMeUp.add(label, BorderLayout.SOUTH);
        WakeMeUp.pack();
        WakeMeUp.setLocationRelativeTo(null);
        WakeMeUp.setVisible(true);
    }
}
