package emergencyroomarrayheap;

import java.util.ArrayList;

/**
 * a generic heap.
 *
 * @author Logan Esch, Hannah Cho
 */
public class ArrayHeap<E extends Comparable<E>> {
    //data fields

    /**
     * The data structure underlying the heap. 
     */
    private ArrayList<E> array = new ArrayList<>();

    /**
     * Inserts data into the heap.
     *
     * @param data the inserted.
     */
    public void insert(E data) {
        array.add(data);
        int indexOfData = array.size() - 1;
        int indexOfParent = (int) Math.floor((indexOfData - 1) / 2);
        while (indexOfData > 0 && data.compareTo(array.get(indexOfParent)) <= 1) {
            //the parent is bigger than the child, swap them.
            //insert the data in the parents location.
            array.add(indexOfParent, array.get(indexOfData));
            //add parent to end 
            array.add(indexOfData, array.get(indexOfParent + 1));
            //remove the parent after it has been shifted over. 
            array.remove(indexOfParent + 1);
            array.remove(indexOfData + 1);
            indexOfData = indexOfParent;
            indexOfParent = (int) Math.floor((indexOfData - 1) / 2);
        }
    }

    /**
     *
     * @return data on top of heap.
     */
    public E delete() {
        E data = array.get(0);
        array.remove(0);
        if (array.size() > 2) {
            array.add(0, array.get(array.size() - 1));
            array.remove(array.size() - 1);
            int indexOfData = 0;
            int indexOfChildOne = 2 * indexOfData + 1;
            int indexOfChildTwo = 2 * indexOfData + 2;
            int indexOfSmallestChild = 0;
            if (array.get(indexOfChildOne).compareTo(array.get(indexOfChildTwo)) < 0) {
                indexOfSmallestChild = indexOfChildOne;
            } else {
                indexOfSmallestChild = indexOfChildTwo;
            }
            loop:
            while (indexOfData < array.size() - 1 && array.get(indexOfData).compareTo(array.get(indexOfSmallestChild)) > 0) {

                //the parent is bigger than the child, swap them.
                //insert the data in the parents location.
                array.add(indexOfSmallestChild, array.get(indexOfData));
                //add parent to end 
                array.add(indexOfData, array.get(indexOfSmallestChild + 1));
                //remove the parent after it has been shifted over. 
                array.remove(indexOfSmallestChild + 2);
                array.remove(indexOfData + 1);
                indexOfData = indexOfSmallestChild;
                indexOfChildOne = 2 * indexOfData + 1;
                indexOfChildTwo = 2 * indexOfData + 2;
                if (indexOfChildOne > array.size() - 1) {
                    break loop;
                } else if (indexOfChildTwo > array.size() - 1) {
                    indexOfSmallestChild = indexOfChildOne;
                } else {
                    if (array.get(indexOfChildOne).compareTo(array.get(indexOfChildTwo)) < 0) {
                        indexOfSmallestChild = indexOfChildOne;
                    } else {
                        indexOfSmallestChild = indexOfChildTwo;
                    }
                }

            }
        }
        if (array.size() == 2) {
            if (array.get(0).compareTo(array.get(1)) > 0) {
                array.add(0, array.get(1));
                array.remove(2);
            }
        }
        return data;
    }
/**
 * 
 * @return boolean, true if empty, otherwise false.
 */
    public boolean isEmpty() {
        if (array.size() > 0) {
            return false;
        } else {
            return false;
        }
    }
    
    /**
     * 
     * @param search the string representation of the object we are searching for. 
     * @return the object if found, null if otherwise. 
     */
    public E search(String search){
        for(int i = 0; i < array.size(); i++){
            if(array.get(i).toString().compareTo(search) == 0){
                return array.get(i);
            }
        }
        return null;
    }
}
