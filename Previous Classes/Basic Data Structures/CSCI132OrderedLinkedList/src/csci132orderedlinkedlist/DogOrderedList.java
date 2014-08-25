package csci132orderedlinkedlist;

import java.util.ArrayList;

public class DogOrderedList {

    private Node front, back;

    DogOrderedList() {

        /**
         * Constructor for the list. creates an empty front node and empty back
         * node. points the next for front to the empty back node. points the
         * next for back to null.
         */

        front = new Node(null);
        back = new Node(null);
        front.nextNode = back;
        front.prevNode = null;
        back.nextNode = null;
        back.prevNode = front;
    }

    private class Node {
        /**
         * this class wraps a dog reference in a node, 
         * so that we can build a linked list of dogs with 
         * a reference to another node that is the next one. 
         * this is initalized to null. 
         */

        private Dog doggy;
        private Node nextNode;
        private Node prevNode;

        Node(Dog newDog) {
            doggy = newDog;
            nextNode = null;
            prevNode = null;
            
        }
    }

    public void insert(Dog aDog) {
        Node aNode = new Node(aDog);
        Node temp = front;
        while(temp.nextNode != back){
            if(temp.nextNode.doggy.getID() > aNode.doggy.getID()){
                //next node has larger ID: insert new node before it. 
                aNode.nextNode = temp.nextNode;
                aNode.prevNode = temp;
                temp.nextNode = aNode;
                aNode.nextNode.prevNode = aNode;
                return; //our job is done, return. 
            }
            temp = temp.nextNode;
            
        }
        if(temp.nextNode == back){
            temp.nextNode = aNode;
            aNode.nextNode = back;
            aNode.prevNode = temp;
            aNode.nextNode.prevNode = aNode;
        }
    }

    public boolean delete(int ID) {
        // Finish this method by 
        // 1. searching through the list to find a dog with the given ID
        // 2. If found, delete the matched node and return true
        // 3. If not found, return false
        Node temp = front;
        
        while(temp.nextNode != back){
            if(temp.nextNode.doggy.getID() == ID){
                temp.nextNode = temp.nextNode.nextNode;
                temp.nextNode.prevNode = temp;
                return true;
            }else{
                temp = temp.nextNode;
            }
            
        }
        return false;
    }

    public String print() {
        Node temp = front.nextNode;
        String stringList = "";
        while(temp != back){
             stringList= stringList + ("Name: " + temp.doggy.getName() + " ID: " + temp.doggy.getID()+"\n");
            temp = temp.nextNode;
        }
        return stringList;
    }
}
