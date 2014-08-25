/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package threadedquicksort;

import java.util.Random;

/**
 *
 * @author Logan Esch
 */
public class ThreadedQuickSort {

    final int n = 1000;
    int[] array;

    ThreadedQuickSort() {
        array = new int[n];
        Random r = new Random();
        for (int i = 0; i < n; i++) {
            array[i] = r.nextInt();
        }
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    }

    public int[] sort(int[] arr) {
        if (arr.length <= 1) {
            return arr;
        } else {
            int piviot = arr[0];
            int[] less = new int[arr.length];
            int[] greater = new int[arr.length];
            
        }
    }
}
