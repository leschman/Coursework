package hashlab;

/**
 * Class to hold Key-value pair for Hash Table.
 *
 * @author Logan Esch
 */
public class TableEntry<type> {

    /**
     * The data held by this object.
     */
    private type data;
    /**
     * The key of this object to be hashed.
     */
    private int key;
    /**
     * boolean indicating if the data has been deleted or not.
     */
    private boolean deleted;

    /**
     * Constructor for Table Entry, sets-up values.
     *
     * @param key the key for hashing of this item.
     * @param data the data held by this item.
     */
    public TableEntry(int key, type data) {
        this.key = key;
        this.data = data;
        deleted = false;
    }

    /**
     * 
     * @return the data held by this object. 
     */
    public type getData() {
        return data;
    }

    /**
     * 
     * @return the key of this object.
     */
    public int getKey() {
        return key;
    }

    /**
     * 
     * @return false if still in table, true if deleted. 
     */
    public boolean getDeleteStatus() {
        return deleted;
    }
    
    /**
     * sets delete flag to true.
     */
    public void delete(){
        deleted = true;
    }
    
    @Override
    public String toString(){
        return key + " " + data;
    }
}
