package binarysearchtree;

/**
 *
 * @author Logan Esch
 */
public class Data implements Comparable<Data> {

    private int number;
    private String name;

    public Data(int number, String name) {
        this.number = number;
        this.name = name;
    }

    public int getNumber() {
        return number;
    }

    public String getName() {
        return name;
    }

    /**
     * Compares first based on the strings then on the ints. 
     * @param otherData the data to compare this one against. 
     * @return integer indicating less than, greater than or equal. 
     */
    @Override
    public int compareTo(Data otherData) {
        int comparison = this.name.compareTo(otherData.getName());
        if (comparison == 0) {
            return this.number - otherData.getNumber();
        } else {
            return comparison;
        }
    }

    @Override
    public String toString() {
        return  number + " " + name + ", ";
    }
}
