/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fun;

/**
 *
 * @author Logan Esch
 */
public class Fun {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        for(int i = 1; i < 255; i++){
            System.out.println("ping 192.168.5."+i+" -n 1");
        }
    }
}
