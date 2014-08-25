/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package discexcr;

/**
 *
 * @author Logan Esch
 */
public class Lecture implements Comparable<Lecture> {

    public int startTime;
    public int endTime;
    public int studentsAttending;

    @Override
    public int compareTo(Lecture l) {
        if (this.startTime < l.startTime) {
            return -1;
        } else if (this.startTime == l.startTime) {
            return 0;
        } else {
            return 1;
        }
    }
}
