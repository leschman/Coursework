/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package discreethoemwork3;

/**
 *
 * @author Logan Esch
 */
public class DiscreetHoemwork3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    }
    public static int xnModm(int x, int n, int m){
        if(n == 0){
            return x;
        }        
        return((xnModm(x, n-1, m) * (x %m)) % m);
    }
}
