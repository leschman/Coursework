package emergencyRoom;

/**
 * an object to simulate a treatment room for a hospital.
 * @author Logan Esch
 */
public class TreatmentRoom {
    //data fields
    private Patient currentPatient; //the current patient being treated in the room
    private boolean isOccupied; //whether or not the room is inuse.
    
    /**
     * constructor for a treatment room.
     * initializes currentPatient to null and isOcupide to false.
     */
    public TreatmentRoom(){
        currentPatient = null;
        isOccupied = false;
    }
   
    /**
     * 
     * @return true if occupied, false if vacant. 
     */
    public boolean inUse(){
        return isOccupied;
    }
    
    /**
     * takes a new patient and puts them in the room.
     * @param newPatient the new patient to put in the room.
     */
    public void sendToRoom(Patient newPatient){
        currentPatient = newPatient;
        isOccupied = true;
    }
    
    /**
     * takes the patient out of the room. 
     * @return the patient that was in the room
     */
    public Patient getFromRoom(){
        isOccupied = false;
        return currentPatient;
    }
    
    /**
     * takes current patient out of room and puts new patient in.
     * @param newPatient the new patient to put in the room
     * @return the old patient who was in the room. 
     */
    public Patient swapPatient(Patient newPatient){
        Patient temp = this.getFromRoom();
        this.sendToRoom(newPatient);
        return temp;
    }
    
    /**
     * @return the priority of the patient currently in the room.
     */
    public int getPriority(){
        return currentPatient.getPriority();
    }
}
