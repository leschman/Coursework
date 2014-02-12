package emergencyRoom;

import javax.swing.JOptionPane;

/**
 * Program helps prioritize patients in an emergency room.
 *
 * @author Logan Esch
 * @version 0.1
 */
public class EmergencyRoom {
    //data fields

    private static int priorities; //the number of priorities
    private Queuer<Patient>[] waitingLines; // queues for patients waiting by priority
    private TreatmentRoom[] treatmentRoomsArr; // treatment rooms
    private int numTreatmentRooms; //number of treatment rooms

    //Constructor
    public EmergencyRoom() {

        //get data to initalize and build the program.
        try {
            numTreatmentRooms = Integer.parseInt(JOptionPane.showInputDialog("Enter the number of treatment rooms: "));
        } catch (NumberFormatException ex) {
            JOptionPane.showMessageDialog(null,
                    "ERROR: Please enter an integer!", "Bad Input", JOptionPane.ERROR_MESSAGE);
        }
        try {
            priorities = Integer.parseInt(JOptionPane.showInputDialog("Enter number of priority levels: "));
        } catch (NumberFormatException ex) {
            JOptionPane.showMessageDialog(null,
                    "ERROR: Please enter an integer!", "Bad Input", JOptionPane.ERROR_MESSAGE);
        }
        //initalize the data fields. 
        waitingLines = new Queuer[priorities];
        treatmentRoomsArr = new TreatmentRoom[numTreatmentRooms];
        for (int i = 0; i < treatmentRoomsArr.length; i++) {
            treatmentRoomsArr[i] = new TreatmentRoom();
        }
        for (int i = 0; i < priorities; i++) {
            waitingLines[i] = new Queuer();
        }

    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        EmergencyRoom room = new EmergencyRoom();
        ControlDialog control = new ControlDialog(room);

    }

    /**
     * places new patients ether in a treatment room or a queue.
     *
     * @param temp the new patient being admitted.
     */
    public void admitPatient(Patient temp) {
        boolean placed = false; //indicator that patient has a place.
        int i = 0;
        while (!placed) {
            //if we have checked all treatment rooms, place patient in line.
            if (i >= treatmentRoomsArr.length) {
                waitingLines[temp.getPriority() - 1].enqueue(temp);
                placed = true;
                break;
            } //check if treatment room is empty.
            else if (!treatmentRoomsArr[i].inUse()) {
                treatmentRoomsArr[i].sendToRoom(temp);
                placed = true;
                break;
            } //check if the new patient has a higher priority.
            else if (treatmentRoomsArr[i].getPriority() < temp.getPriority()) {
                //place the new patient in the room
                temp = treatmentRoomsArr[i].swapPatient(temp);
                //find a place for the old patient recursivly.
                admitPatient(temp);
                placed = true;
                break;
            } // check if they have the same priority.  
            else if (treatmentRoomsArr[i].getPriority() == temp.getPriority()) {
                //swap patients with same priority randomly. 
                if (Math.random() >= .5) {
                    temp = treatmentRoomsArr[i].swapPatient(temp);
                    admitPatient(temp);
                    placed = true;
                    break;
                }
            }
            i++; //increment counter to check next queue. 
        }
    }

    /**
     * takes a patient out of a specified room and checks if there is someone
     * waiting. if there is, puts them in the room.
     *
     * @param roomNum the treatment room number to take the patient out of.
     * @return the patient in that treatment room.
     */
    public Patient checkOutPatient(int roomNum) {
        Patient temp = treatmentRoomsArr[roomNum].getFromRoom();
        boolean roomBusy = false;
        int i = priorities - 1;
        //loop through all the lines and pick the next priority.
        while (!roomBusy) {
            if (i < 0) {//if we've gone through all the lines and found no one, quit. 
                roomBusy = true;
                break;
            } else if (waitingLines[i].isEmpty()) {
                //if this line is empty, check the next one.
                i--;
                break;
            } else {
                //someone is waiting, put them in the room. 
                treatmentRoomsArr[roomNum].sendToRoom(waitingLines[i].dequeue());
            }
        }
        return temp;
    }

    /**
     *
     * @return the number of priority levels
     */
    public int getPriorities() {
        return priorities;
    }

    /**
     *
     * @return the number of treatment rooms
     */
    public int getNumTreatmentRooms() {
        return numTreatmentRooms;
    }

    /**
     *
     * @return the number of treatment rooms in use.
     */
    public TreatmentRoom[] getRoomsInUse() {
        return treatmentRoomsArr;

    }
}
