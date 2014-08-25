package emergencyroomnodeheap;

/**
 * Object to hold patient information
 * @author Logan Esch, Hannah Cho
 */
public class Patient implements Comparable<Patient>{
    //Data Fields
    private String name; //the patient's name. 
    private String ssn; //the Social Security Number of the Patient.
    private int priority; //the severity of the patients wounds.
    
    /**
     * Initializes data fields for a patient object. 
     * @param name the patient's name. 
     * @param ssn the patient's social security number
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
    /**
     * 
     * @return the patient's name as a String.
     */
    public String getName(){
        return name;
    }
    
    @Override
    public String toString(){
        return ssn;
    }

    
    @Override
    public int compareTo(Patient o) {
        if(this.priority < o.priority){
            return -1;
        } else if( this.priority == o.priority){
            return 0;
        }else{
            return 1; 
        }
    }
    
}
