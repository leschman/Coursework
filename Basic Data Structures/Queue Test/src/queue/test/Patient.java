/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package queue.test;

/**
 *
 * @author Logan Esch
 */
/**
 * Object to hold patient information
 * @author Logan Esch
 */
public class Patient {
    //Data Fields
    private String name; // The patient's name, because our patients are more a number.
    private String ssn; //the Social Security Number of the Patient.
    private int priority; //the severity of the patients wounds.
    
    /**
     * Initializes data fields for a patient object. 
     * @param name the patient's name
     * @param ssn the patients social security number
     * @param priority the severity of the patients condition
     */
    public Patient(String name, String ssn, int priority){
        //initialize data fields
        this.name = name;
        this.ssn = ssn;
        this.priority = priority;
    }
    /**
     * 
     * @return the patient's name as a String.
     */
    public String getName(){
        return name;
    }
    /**
     * 
     * @return the patient's Social Security Number as a String. 
     */
    public String getSSN(){
        return ssn;
    }
    /**
     * 
     * @return the patient's priority as an int. 
     */
    public int getPriority(){
        return priority;
    }
    
}
