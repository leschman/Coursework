package emergencyroomarrayheap;

/**
 * Object to hold patient information
 * @author Logan Esch, Hannah Cho
 */
public class Patient implements Comparable<Patient>{
    //Data Fields
    private String firstName; //the patient's first name. 
    private String lastName; // the patient's last name.
    private String ssn; //the Social Security Number of the Patient.
    private int priority; //the severity of the patients wounds.
    
    /**
     * Initializes data fields for a patient object. 
     * @param firstName the patient's name. 
     * @param ssn the patient's social security number
     * @param priority the severity of the patients condition
     */
    public Patient(String firstName, String lastName, String ssn, int priority){
        //initialize data fields
        this.firstName = firstName;
        this.lastName = lastName;
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
     * @return the patient's first name as a String.
     */
    public String getFirstName(){
        return firstName;
    }
    
    /**
     * 
     * @return the patient's last name as a String.
     */
    public String getLastName(){
        return lastName;
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
