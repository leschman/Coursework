package hashlab;

/**
 * Hashtable class.
 *
 * @author Logan Esch
 */
public class HashTable<type> {

    /**
     * the table to hold the data;
     */
    private TableEntry<type>[] table = new TableEntry[5];
    /**
     * the cut off for when we will reallocate the table. Equal to %80.
     */
    private final double MAXFILLRATIO = .8;
    /**
     * counter for how many spaces in the table hold data.
     */
    int occupideSpaces = 0;

    /**
     * public insertion method.
     *
     * @param key the key for the item being inserted.
     * @param data the data held by the item being inserted.
     */
    public void insert(int key, type data) {
        insert(new TableEntry<>(key, data));
    }

    /**
     * private insertion method. automatically reallocates table as needed.
     *
     * @param newEntry the TableEntry that is being inserted into the table.
     */
    public void insert(TableEntry newEntry) {

        //loop for handling collsions via linear probing. 
        int offset = 0;
        boolean foundHome = false;
        while (!foundHome) {
            int key = (newEntry.getKey() + offset) % table.length;
            if (table[key] != null || table[key].getDeleteStatus()) {
                //entry at this location is full, need to try the next one per linear probing.
                offset++;
            } else {
                //spot is available, insert here.
                table[key] = newEntry;
                foundHome = true;
            }
        }
        //check capacity
        reallocateTable();
    }

    /**
     * Reallocates the table if the fill ratio is greater than the max fill
     * ratio constant. Doubles the size of the table and inserts all elements
     * that have not been marked for removal.
     */
    private void reallocateTable() {
        if (occupideSpaces / table.length >= MAXFILLRATIO) {
            //need to reallocate and rehash the table.
            //copy data to temporary holder.
            TableEntry<type>[] oldTable = table;
            //set table to new entity twice it's old size. 
            table = new TableEntry[2 * oldTable.length];

            //loop through all the old data. 
            for (TableEntry entry : oldTable) {
                //check if entry has been flaged for removal. 
                if (!entry.getDeleteStatus()) {
                    //insert the data into the new table.
                    insert(entry);
                }
            }
        }
    }

    /**
     * Searches table for entry to delete.
     *
     * @param key the key of the entry to delete.
     * @return true if entry is found. false otherwise.
     */
    public boolean delete(int key) {

        int offset = 0;
        boolean foundEntry = false;

        //loop through the keys and search for the entry. 
        while (!foundEntry && offset < table.length) {
            int searchKey = (offset + key) % table.length;
            if (table[searchKey] != null || table[searchKey].getDeleteStatus()) {
                //entry at this location is full, check if these are the droids we are looking for.
                if (table[searchKey].getKey() == key) {
                    //These are the droids we are looking for.
                    table[searchKey].delete();
                    foundEntry = true;
                } else {
                    //These arn't the droids you are looking for. 
                    offset++;
                }
            }
        }
        return foundEntry;
    }

    /**
     * searches table for given key.
     *
     * @param key the key of the item we are looking for.
     * @return the TableEntry of the key or null if not found.
     */
    public TableEntry search(int key) {

        int offset = 0;

        //loop through the keys and search for the entry. 
        while (offset < table.length) {
            int searchKey = (offset + key) % table.length;
            if (table[searchKey] != null || table[searchKey].getDeleteStatus()) {
                //entry at this location is full, check if these are the droids we are looking for.
                if (table[searchKey].getKey() == key) {
                    //These are the droids we are looking for.
                    return table[searchKey];
                } else {
                    //These arn't the droids you are looking for. 
                    offset++;
                }
            }
        }
        return null;
    }

    /**
     * prints the table to the console.
     */
    public void print() {
        for (TableEntry entry : table) {
            if (!entry.getDeleteStatus()) {
                System.out.println(entry.toString());
            }
        }
    }
}
