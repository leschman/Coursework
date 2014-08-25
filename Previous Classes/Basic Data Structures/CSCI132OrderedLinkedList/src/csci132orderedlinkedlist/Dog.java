/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rockyross
 */
package csci132orderedlinkedlist;

public class Dog {
    
   private String name  = new String();
   private int ID;
   
   public Dog(String dogName, int dogID){
       name = dogName;
       ID = dogID;
   }
   
   public void setName(String dogName){
       name = dogName;
   }
   
   public String getName(){
       return name;
   }
   
   public void setID(int newID){
       ID = newID;
    }
   
   public int getID(){
       return ID;
   }
}
