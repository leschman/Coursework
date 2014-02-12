package emergencyRoom;

/**
 *
 * @author Logan Esch
 */
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import static javax.swing.JFrame.EXIT_ON_CLOSE;

public class ControlDialog extends JFrame {
    
    private ControlDialog controler = this;
    private EmergencyRoom er;

    //Constructor   
    public ControlDialog(EmergencyRoom er) {
        super("Emergecy Room Manager");
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        // Get a reference to the content pane. 
        Container contentPane = getContentPane();
        contentPane.setLayout(new GridLayout(1, 3));
        this.er = er;
        //Admit Patient Button
        JButton admitButton = new JButton("Admit Patient");
        admitButton.addActionListener(new ControlDialog.AdmitButtonPressed());
        contentPane.add(admitButton);
        //Checkout Patient Button
        JButton checkOutButton = new JButton("Check-Out Patient");
        checkOutButton.addActionListener(new ControlDialog.CheckOutButtonPressed());
        contentPane.add(checkOutButton);
        //Quit Button
        JButton quitButton = new JButton("Quit");
        quitButton.addActionListener(new ControlDialog.QuitButtonPressed());
        contentPane.add(quitButton);
        //pack frame and make visible.
        pack();
        setVisible(true);
    }

    //Admit Patient Button Action Listener Class
    private class AdmitButtonPressed implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            setVisible(false);
            AdmitDialog admitGui = new AdmitDialog(controler);            
        }
    }
    //Check-Out Patient Button Action Listener Class
    private class CheckOutButtonPressed implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            setVisible(false);
            CheckOutDialog checkOutGUI = new CheckOutDialog(controler);            
        }
    }
    
    //Quit Patient Button Action Listener Class
    private class QuitButtonPressed implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            System.exit(0);
        }
    }
    public EmergencyRoom getER(){
        return er;
    }
    
   
}