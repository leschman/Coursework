package emergencyRoom;

/**
 * class for capturing data for a patient object. 
 * creates and returns a patient object. 
 * @author Logan Esch
 */
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class AdmitDialog extends JFrame {
    //Data Fields

    private JTextField nameField;
    private JTextField ssnField;
    private JTextField priorityField;
    private Patient newPatient;
    private ControlDialog controler; 

    //Constructor
    public AdmitDialog(ControlDialog controler) {
        super("Emergecy Room Manager");
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        // Get a reference to the content pane.
        this.controler = controler;
        Container contentPane = getContentPane();
        //Set the layout manager to grid layout.
        contentPane.setLayout(new GridLayout(4, 2));
        //Patient Name Field
        contentPane.add(new JLabel("Patient Name"));
        nameField = new JTextField(25);
        contentPane.add(nameField);
        //SSN Field
        contentPane.add(new JLabel("SSN: xxx-xx-xxxx"));
        ssnField = new JTextField(10);
        contentPane.add(ssnField);
        //Priority Field
        contentPane.add(new JLabel("Patient's Prority: 1-"+ controler.getER().getPriorities()));
        priorityField = new JTextField(10);
        contentPane.add(priorityField);
        //Admit Patient Button
        JButton admitButton = new JButton("Admit Patient");
        admitButton.addActionListener(new AdmitButtonPressed());
        contentPane.add(admitButton);
        //Cancel Button
        JButton cancelButton = new JButton("Cancel");
        cancelButton.addActionListener(new CancelButtonPressed());
        contentPane.add(cancelButton);
        //pack frame and make visible.
        pack();
        setVisible(true);
    }

    /**
     * Action Listener Class for pressing the admit button
     */
    private class AdmitButtonPressed implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            String name = nameField.getText();
            String ssn = ssnField.getText();
            String priorityString = priorityField.getText();
            int priority;
            try {
                priority = Integer.parseInt(priorityString);
                if (priority < 1 || priority > controler.getER().getPriorities())
                {
                    //the input is out of acceptable bounds, throw an error.
                    throw new NumberFormatException();
                }
                newPatient = new Patient(name, ssn, priority);
                controler.getER().admitPatient(newPatient);//admit the new patient
                controler.setVisible(true);
                setVisible(false);
            } catch (NumberFormatException ex) {
                String message = "ERROR: Enter a priority between 1 and " + controler.getER().getPriorities();
                JOptionPane.showMessageDialog(null,
                        message, "Bad Input", JOptionPane.ERROR_MESSAGE);
            }
        }
    }
    
  /**
   * Action listener for Cancel Button class. 
   */
    private class CancelButtonPressed implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            setVisible(false);
            controler.setVisible(true);
        }
    }
}
