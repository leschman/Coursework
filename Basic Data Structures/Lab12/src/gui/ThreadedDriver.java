package gui;

import java.awt.GridLayout;
import java.util.Random;
import javax.swing.JFrame;
import javax.swing.JPanel;

/**
 * This class starts up a demo for counting dice rolls in threads.
 *
 * @author Eben Howard
 */
public class ThreadedDriver {

    private static final int THROWS = 10000;//how many total dice will be rolled

    private JFrame frame = new JFrame("Dice Demo");
    private TotalsPanel totals = new TotalsPanel();
    private JPanel countPanel = new JPanel();
    private CountingPanel[] counts = new CountingPanel[6];
    private Random rng = new Random();

    public static void main(String... args) {
        new ThreadedDriver().go();
    }

    /**
     * The entry point to run this class.
     */
    private void go() {
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new GridLayout(0, 1));
        frame.add(totals);
        frame.add(countPanel);
        countPanel.setLayout(new GridLayout(0, 1));

        for (int i = 0; i < counts.length; i++) {
            counts[i] = new CountingPanel();
            counts[i].setOutcomeName("" + (i + 1));
            countPanel.add(counts[i]);
        }

        frame.pack();
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);

        Thread[] rollers = new Thread[10];
        for (int i = 0; i < rollers.length; i++) {
            rollers[i] = new Thread(new Roller(THROWS / rollers.length));
            rollers[i].start();
        }

        for (Thread t : rollers) {//wait for all the threads to finish
            try {
                t.join();
            } catch (InterruptedException ex) {
            }
        }

        //check result consistency
        int totalRolled = 0;
        for (CountingPanel cp : counts) {
            totalRolled += cp.getTotal();
        }
        totals.setCounted(totalRolled);
    }

    private class Roller implements Runnable {

        int rolls;

        Roller(int rolls) {
            this.rolls = rolls;
        }

        private void rollDice() {
            int result = rng.nextInt(counts.length);
            boolean scaled = counts[result].addCount();
            if (scaled) {
                totals.increaseScale();
                for (int die = 0; die < counts.length; die++) {
                    if (die != result) {
                        counts[die].increaseScale();
                    }
                }
            }
            totals.addRoll();
            try {
                Thread.sleep(20);
            } catch (InterruptedException ex) {
            }
        }

        @Override
        public void run() {
            for (int i = 0; i < rolls; i++) {
                rollDice();
            }
        }
    }
}
