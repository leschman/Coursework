/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package discexcr;

import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author Logan Esch
 */
public class DiscExCr {

    /**
     * start times in minutes for lectures.
     */
    static int[] startTimes = {480, 540, 630, 570, 510, 660, 780};
    /**
     * end times in minutes for lectures.
     */
    static int[] endTimes = {600, 660, 720, 780, 840, 840, 840};
    static int[] students1 = {20, 10, 50, 30, 15, 25, 40};
    static int[] students2 = {100, 5, 10, 20, 25, 40, 30};
    static int[] students3 = {2, 3, 8, 5, 4, 7, 10};
    static int[] students4 = {10, 8, 7, 25, 20, 30, 5};
    static ArrayList<Lecture> lectures = new ArrayList<>();

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {


        System.out.println("Set 1");
        initalizeLectures(students1);
        maxAttend();
        System.out.println();

        System.out.println("Set 2");
        initalizeLectures(students2);
        maxAttend();
        System.out.println();

        System.out.println("Set 3");
        initalizeLectures(students3);
        maxAttend();
        System.out.println();

        System.out.println("Set 4");
        initalizeLectures(students4);
        maxAttend();
        System.out.println();
    }

    private static void maxAttend() {
        Collections.sort(lectures);
        for(int j = 0; j < lectures.size(); j++){
            for(int i = 0; i < j; i++){
                
            }
        }


    }

    private static void initalizeLectures(int[] numAttending) {
        for (int i = 0; i < startTimes.length; i++) {
            lectures.add(new Lecture());
            lectures.get(i).startTime = startTimes[i];
            lectures.get(i).endTime = endTimes[i];
            lectures.get(i).studentsAttending = numAttending[i];
        }
    }
    
    private static boolean conflicts(Lecture one, Lecture two){
        if(one.startTime < two.startTime){
            if(one.endTime > two.startTime){
                return false;
            }else if(){
                
            }
        }
    }
}
