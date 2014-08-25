/*
 * Creates the control flow and gui of the ER
 * @author Logan Esch, Hannah Cho
 */
package emergencyroomarrayheap;

import java.util.Random;
import javax.swing.JOptionPane;

public class EmergencyRoomArrayHeap {

    final static int numTreatmentRooms = 2;

    static TreatmentRoom[] treatmentRooms = new TreatmentRoom[numTreatmentRooms];
    static ArrayHeap<Patient> heap = new ArrayHeap<>();

    public static void main(String[] args) {
        boolean done = false;

        String[] choices = {"admit patient", "discharge from room",
            "current patient in treatment room ", "Seek", "quit"};
        //Initailize arrays
        for (int i = 0; i < treatmentRooms.length; i++) {
            treatmentRooms[i] = new TreatmentRoom();
        }
        
        while (!done) {
            int choice = JOptionPane.showOptionDialog(null, "Choose an action",
                    "Emergency Room Menu", JOptionPane.YES_NO_CANCEL_OPTION,
                    JOptionPane.QUESTION_MESSAGE, null, choices, choices[0]);

            if (choice == 0) {
                String name = JOptionPane.showInputDialog("Patient Name: ");
                String SSN = JOptionPane.showInputDialog("Social Security Number of patient: ");
                int priority = Integer.parseInt(JOptionPane.showInputDialog("Priority (1-4, 4 high): "));
                Patient patient = new Patient(name, SSN, priority);
                Patient temp = patient;
                //loop throught the treatment rooms and put the patient in one. 
                placementLoop:
                for (int i = 0; i < treatmentRooms.length; i++) {
                    //check if room is busy
                    if (!treatmentRooms[i].inUse()) {
                        treatmentRooms[i].sendToRoom(patient);
                        break placementLoop;
                    } else {
                        //see if their priories are less or equal. 
                        if (treatmentRooms[i].checkRoom().getPriority() <= patient.getPriority()) {
                            if (treatmentRooms[i].checkRoom().getPriority() == patient.getPriority()) {
                                //if equal generate random to see who stays.
                                Random random = new Random();
                                if (random.nextBoolean()) {
                                    temp = patient;
                                }
                            } else {
                                //if the new patient is higher priority,
                                //boot the old patient from the room.
                                //put them in temp.
                                temp = treatmentRooms[i].getFromRoom();
                                treatmentRooms[i].sendToRoom(patient);
                            }
                            //put temp in the front of the queue. 
                           heap.insert(patient);
                            break placementLoop;
                            //everyone acounted for, stop looping.
                        }
                        heap.insert(patient);
                    }
                }
            } else if (choice == 1) { //discharge patient
                int roomNum = Integer.parseInt(JOptionPane.showInputDialog("Discharge from Room Number (0-1): "));
              
                
                    if (!heap.isEmpty()) {
                        treatmentRooms[roomNum].sendToRoom(heap.delete());
                        JOptionPane.showMessageDialog(null,
                                "The next patient is: "
                                + treatmentRooms[roomNum].checkRoom().getSSN() + ".");
                    } else if (!treatmentRooms[roomNum].inUse()) {
                        JOptionPane.showMessageDialog(null, "No one to discharge.");
                    } else {
                        treatmentRooms[roomNum].sendToRoom(null);
                    }
                
            } else if (choice
                    == 2) {
                int roomNum = Integer.parseInt(JOptionPane.showInputDialog("Room Number: "));
                if (treatmentRooms[roomNum].inUse()) {
                    JOptionPane.showMessageDialog(null,
                            "The SSN of the current occupant is: "
                            + treatmentRooms[roomNum].checkRoom().getSSN() + ".");
                } else {
                    JOptionPane.showMessageDialog(null, "Treatment room empty.");
                }
            } else if (choice
                    == 3) {
                String SSN = JOptionPane.showInputDialog("Social Security Number of patient: ");
                Patient temp = seek(SSN);
                if (temp != null) {
                    JOptionPane.showMessageDialog(null, "Patient Found, SSN: " + temp.getSSN() + " Priority: " + temp.getPriority());
                } else {
                    JOptionPane.showMessageDialog(null, "Patient not found.");
                }
            } else if (choice
                    == 4) {
                done = true;
                JOptionPane.showMessageDialog(null, "Quiting.");
            }
        }
    }

    public static Patient seek(String SocialSecurity) {
        Patient temp;
        //check rooms
        for (int i = 0; i < treatmentRooms.length; i++) {
            if (treatmentRooms[i].checkRoom() != null) {
                if (treatmentRooms[i].checkRoom().getSSN().equals(SocialSecurity)) {
                    return treatmentRooms[i].checkRoom();
                }
            }
        }
        //check queues
       
            temp = heap.search(SocialSecurity);
            if (temp != null) {
                return temp;
            }
        
        return null;
    }
}