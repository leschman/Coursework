package scrimpheap;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ScrimpHeap {

    /**
     * array to hold the ints in the heap.
     */
    private int[] array;
    /**
     * reference to the position after last valid item in the heap.
     */
    private int endOfHeap = 0;
    /**
     * flag for if heap has data. true if data is valid. false if heap is
     * "empty".
     */
    public boolean hasNext = false;

    /**
     * constructor for heap.
     *
     * @param size the maximum number of elements held by this heap. make it
     * big.
     */
    public ScrimpHeap(int size) {
        array = new int[size];
    }

    /**
     * inserts a new int into the heap.
     *
     * @param newInt the int to insert into the heap.
     */
    public void add(int newInt) {

        /**
         * the index of the int we just inserted.
         */
        int newIntIndex = endOfHeap;
        endOfHeap++;
        //we have data, set it to true. 
        hasNext = true;

        /**
         * the index of the parent of the int we just inserted.
         */
        int newIntParentIndex;
        /**
         * loop to insert the new int into the heap. Sorts the heap.
         */
        sortLoop:
        while (true) {
            //check if index is 0, if so heap is sorted and exit. 
            switch(newIntIndex)
            {
                case 0: array[newIntIndex] = newInt;
                        break sortLoop;
            }
            if (newIntIndex == 0) {
                array[newIntIndex] = newInt;
                break sortLoop;
                //check if index is even, set parent index accordingly. 	
            } else if (newIntIndex % 2 == 0) {
                //parent of this one.
                newIntParentIndex = (newIntIndex - 2) / 2;
                //index must be odd, set parent index. 
            } else {
                newIntParentIndex = (newIntIndex - 1) / 2;
            }
            //parent index is now set, check values to see if we need to swap.
            //need to check against newInt because it hasn't been inserted yet. 
            if (newInt < array[newIntParentIndex]) {
                //new insertion is less than parent, we need to swap.
                //move the parent to the location of the new int.
                array[newIntIndex] = array[newIntParentIndex];

                //skip putting the newInt into the parent's spot for now to save bytecodes. 

                //adjust the reference to newInt;
                newIntIndex = newIntParentIndex;
            } else {
                //newInt is greater than it's parent. 
                //newIntIndex is now pointing to the spot it needs to be inserted at. 
                array[newIntIndex] = newInt;

                break sortLoop;
            }
        }
    }

    /**
     * removes the top element from the heap and resorts it.
     *
     * @return the top element from the heap.
     */
    public int pop() {
        int topInt = array[0];
        endOfHeap--;
        if (endOfHeap == 0) {
            hasNext = false;
        }
        //move the last item inserted to the front to the heap.
        array[0] = array[endOfHeap];
        int indexOfSorting = 0;
        int indexOfChild;
        //hold reference to value so we can insert at end, should save a few bytecodes. 
        /**
         * int to hold value we bubble down.
         */
        int sorting = array[0];
        //sort it down. 
        sortLoop:
        while (indexOfSorting < endOfHeap) {
            //set index of child to the left child
            indexOfChild = (indexOfSorting * 2) + 1;
            //make sure that the child is still in the heap. 
            if (indexOfChild < endOfHeap) {
                //check which child is less
                if (array[indexOfChild] > array[indexOfChild + 1]) {
                    //need to set indexOfChild to right child. 
                    indexOfChild++;
                }
                //check if child is less than parent(what we are bubbling down)
                if (sorting > array[indexOfChild]) {
                    //parent is bigger than child, need to swap them. 
                    //move child onto parent.
                    array[indexOfSorting] = array[indexOfChild];
                    //move the pointer down. 
                    indexOfSorting = indexOfChild;
                } else {
                    // child is greater than parent, we are done. 
                    //need to insert sorting. 
                    array[indexOfSorting] = sorting;
                    break sortLoop;
                }
            } else {
                // child is greater than parent, we are done. 
                //need to insert sorting. 
                array[indexOfSorting] = sorting;
                break sortLoop;
            }



        }
        return topInt;
    }

    /**
     * shows but does not remove the top element from the heap.
     *
     * @return the top element from the heap (NOT removed).
     */
    public int peek() {
        return array[0];
    }

    public static void main(String[] Args) {
        int testSize = 10000000;
        ScrimpHeap heap = new ScrimpHeap(testSize);
        Random rand = new Random();
        //fill heap with 1000 random values, write values to file for debugging. 
        try {
            PrintWriter writer = new PrintWriter("testValues.txt", "UTF-8");

            for (int i = testSize; i > 0; i--) {
                int value = rand.nextInt(i);
                writer.println(value);
                heap.add(value);

            }
        } catch (FileNotFoundException | UnsupportedEncodingException ex) {
            Logger.getLogger(ScrimpHeap.class.getName()).log(Level.SEVERE, null, ex);
        }
        //pop 1000 values, make sure they are all greater than previous. 
        int lastValue = Integer.MIN_VALUE;
        int currentValue;
        while (heap.hasNext) {
            currentValue = heap.pop();
            if (currentValue < lastValue) {
                System.out.println("ERROR: " + lastValue + "is greater than " + currentValue);
            }
        }

    }
}
