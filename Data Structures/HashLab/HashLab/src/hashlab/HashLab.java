package hashlab;

import java.io.*;

/**
 *
 * @author Logan Esch
 */
public class HashLab {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        HashTable<String> hashTable = new HashTable<>();
        BufferedReader reader = null;

        for (String input : args) {
            try {
                File file = new File(input);
                reader = new BufferedReader(new FileReader(file));
                String text = null;

                while ((text = reader.readLine()) != null) {
                    hashTable.insert(Integer.parseInt(text), text);
                }
            } catch (FileNotFoundException e) {
                System.out.println("ERROR: File \"" + input + "\" not found");
            } catch (IOException e) {
            } finally {
                try {
                    if (reader != null) {
                        reader.close();
                    }
                } catch (IOException e) {
                }
            }
        }
    }
}
