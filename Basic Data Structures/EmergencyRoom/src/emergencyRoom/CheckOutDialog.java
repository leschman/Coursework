package emergencyRoom;

/**
 *
 * @author Logan Esch
 */
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.util.*;

public class CheckOutDialog extends JFrame {

    private ControlDialog controler;
    TreatmentRoom[] treatmentRoomsArr;
    int roomSelected = -1;
    JComboBox roomsBox;
    //Constructor

    public CheckOutDialog(ControlDialog controler) {
        super("Emergecy Room Manager");
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        // Get a reference to the content pane.
        this.controler = controler;
        Container contentPane = getContentPane();
        contentPane.setLayout(new GridLayout(3, 1));
        treatmentRoomsArr = controler.getER().getRoomsInUse();
        //loop through the rooms and display the ones in use.
        ArrayList<String> builder = new ArrayList<>();
        for (int i = 0; i < treatmentRoomsArr.length; i++) {
            if (treatmentRoomsArr[i].inUse()) {
                builder.add("Room " + i);
                roomSelected = 0;
            }
        }
        String[] roomsInUse = builder.toArray(new String[builder.size()]);
        roomsBox = new JComboBox(roomsInUse);
        roomsBox.addActionListener(new SelectionChangeMade());
        contentPane.add(roomsBox);
        //Check-Out Button
        JButton checkOutButton = new JButton("Check-Out");
        checkOutButton.addActionListener(new CheckOutButtonPressed());
        contentPane.add(checkOutButton);
        //Cancel Button
        JButton cancelButton = new JButton("Cancel");
        cancelButton.addActionListener(new CancelButtonPressed());
        contentPane.add(cancelButton);
        //pack frame and make visible.
        pack();
        setVisible(true);
    }

    //Admit Patient Button Action Listener Class
    private class CheckOutButtonPressed implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            if (roomSelected > -1) {
                //makesure room is selected.
                Patient temp = controler.getER().checkOutPatient(roomSelected);
                setVisible(false);
                CheckOutData checkOut = new CheckOutData(temp, controler);                
            }
            setVisible(false);
            
        }
    }

    private class CancelButtonPressed implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            setVisible(false);
            controler.setVisible(true);
        }
    }

    private class SelectionChangeMade implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            roomSelected = roomsBox.getSelectedIndex();
        }
    }
}
