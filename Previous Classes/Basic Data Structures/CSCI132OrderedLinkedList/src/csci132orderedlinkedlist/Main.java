/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package csci132orderedlinkedlist;

import java.util.NoSuchElementException;
import javax.swing.JOptionPane;

/**
 *
 * @author rockyross
 */

public class Main{
    public static void main(String args[])
    {
       int dogID; 
       String dogName; 
       Dog dogReference;
       boolean done = false;
       
       DogOrderedList dogList = new DogOrderedList();
       
       String[] choices = {"insert", "delete", "print", "quit"};
       while (!done) {
            int choice = JOptionPane.showOptionDialog(
                    null, 
                    "Click a choice",
                    "Queue Operations Menu",
                    JOptionPane.YES_NO_CANCEL_OPTION,
                    JOptionPane.QUESTION_MESSAGE, 
                    null,
                    choices,
                    choices[0]);
            try{
                if(choice < 0 || choice >= choices.length)
                {//input out of range, need to try again. 
                  JOptionPane.showMessageDialog(
                                null,
                                "Invalid selection; try again!");   
                }
                switch (choices[choice].toLowerCase()){
                case "insert":
                        dogName = JOptionPane.showInputDialog(
                                  "Enter the dog's name");
                        dogID   = Integer.parseInt(JOptionPane.showInputDialog(
                                  "Enter the dog's ID"));
                        dogReference = new Dog(dogName, dogID);
                        dogList.insert(dogReference);
                        break;                   
                case "delete":
                        dogID = Integer.parseInt(JOptionPane.showInputDialog(
                            "Enter ID of dog to be deleted from list"));
                        if (dogList.delete(dogID)){
                            JOptionPane.showMessageDialog(
                            null,
                            "Dog with ID  " + dogID + " was deleted from list");
                        }
                        else {
                            JOptionPane.showMessageDialog(
                            null,
                            "Dog with ID  " + dogID + " not found in list");                           
                        }
                            
                        break;
                case "print": 
                        dogList.print();
                        break;
                case "quit": 
                        done = true;
                        break;
                default: 
                        JOptionPane.showMessageDialog(
                                null,
                                "Invalid selection; try again!");
                } //end switch
            } // end try
            catch (NoSuchElementException e){
                JOptionPane.showMessageDialog(
                        null,
                        "The queue is Empty",
                        "",
                        JOptionPane.ERROR_MESSAGE);
                
            } // end catch
            
       } // end while
    }
}
