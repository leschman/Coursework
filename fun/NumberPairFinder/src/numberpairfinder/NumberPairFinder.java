package numberpairfinder;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.lang.management.ManagementFactory;
import java.lang.management.ThreadMXBean;
import java.util.LinkedHashMap;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * given an array of integers and a value,
 *
 * @author Logan Esch
 */
public class NumberPairFinder implements Runnable {

    Random r = new Random();
    int problemSize;
    int range;
    int[] test;
    int val;
    long runningTime = 0;

    public NumberPairFinder(int problemSize, int range, int val) {
        this.problemSize = problemSize;
        this.range = range;
        this.val = val;
        test = new int[problemSize];

        for (int i = 0; i < problemSize; i++) {
            test[i] = r.nextInt(range - 1) + 1;
        }

    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        File f = new File("benchmark.csv");
        try {
            if (!f.exists()) {
                f.createNewFile();
            }
            FileWriter fw = new FileWriter(f.getAbsoluteFile());
            BufferedWriter bw = new BufferedWriter(fw);
            String out = "Problem Size,Range,RunningTime,Trial\n";
            bw.write(out);
            for (int val = 1000000; val <= 2000000000; val += 1000000) {

                for (int i = 0; i < 10; i++) {

                    NumberPairFinder n = new NumberPairFinder(val, val, val);
                    n.run();
                    out = val + "," + val + "," + n.runningTime + "," + i + "\n";
                    bw.write(out);
                }
            }
            bw.close();
        } catch (IOException ex) {
            Logger.getLogger(NumberPairFinder.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Point[] hashNumberPairFinder(int[] nums, int val) {
        if (nums == null || nums.length == 0 || val <= 0) {
            System.out.print("ERROR, bad input.");
            if (nums == null) {
                System.out.print(" Nums is null.");
            }
            if (nums.length == 0) {
                System.out.print(" Nums length is 0.");
            }
            if (val <= 0) {
                System.out.print(" val is " + val);
            }
            System.out.println();

            return null;
        }


        ArrayList<Point> returning = new ArrayList<>();
        LinkedHashMap<Integer, Integer> alreadySeen = new LinkedHashMap<>();

        for (int num : nums) {
            //if the num is < val (must be for it to be part of pair)
            //and we haven't already seen the number.
            if (num < val && !alreadySeen.containsKey(num)) {
                if (!alreadySeen.containsKey(val - num)) {
                    //add num to alreadySeen, with value intialized to -1.
                    //we will change from -1 to indicate the other part has been found.
                    alreadySeen.put(num, -1);
                } else if (alreadySeen.get(val - num) == -1) {
                    //we have already seen the corosponding int to get to value, 
                    //add this value to the hash map
                    //this is the only step where we have an acutal pair
                    alreadySeen.put(val - num, num);
                    returning.add(new Point(val - num, num));
                }
            }
        }

        //convert the arrayList to an array. 
        Point[] r = new Point[returning.size()];
        return returning.toArray(r);
    }

    @Override
    public void run() {
        ThreadMXBean bean = ManagementFactory.getThreadMXBean();

        long startTime = bean.getCurrentThreadCpuTime();
        Point[] solution = hashNumberPairFinder(test, val);
        long endTime = bean.getCurrentThreadCpuTime();

        //System.out.println("Problem Size: " + problemSize + " Range: " + range);
        runningTime = endTime - startTime;
    }
}
