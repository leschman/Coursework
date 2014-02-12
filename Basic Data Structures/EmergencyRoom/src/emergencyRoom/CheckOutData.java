package emergencyRoom;

/**
 *
 * @author Logan Esch
 */

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
/**
 * class to display the data of a patient object. 
 * creates a new pane and outputs the data. 
 * @author Logan Esch
 */
public class CheckOutData extends JFrame{
    
    private ControlDialog controler;
    //Constructor
    public CheckOutData(Patient patient, ControlDialog controler){
        super("Emergecy Room Manager");
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        Container contentPane = getContentPane();
        contentPane.setLayout(new GridLayout(4, 1));
        this.controler = controler;
        //messages
        JLabel name = new JLabel("Name: " + patient.getName());
        contentPane.add(name);
        JLabel ssn = new JLabel("SSN: " + patient.getSSN());
        contentPane.add(ssn);
        JLabel priority = new JLabel("Priority: " + patient.getPriority());
        contentPane.add(priority);
        
        //OK Button
        JButton okButton = new JButton("OK");
        okButton.addActionListener(new CheckOutData.OKButtonPressed());
        contentPane.add(okButton);
        pack();
        setVisible(true);
    }
    /**
     * action listener class for pressing the OK button
     */
    private class OKButtonPressed implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            setVisible(false);
            controler.setVisible(true);
        }
    }
    
}
