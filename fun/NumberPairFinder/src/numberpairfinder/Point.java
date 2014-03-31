package numberpairfinder;

/**
 *
 * @author Logan Esch
 */
public class Point {

    private int lesser, greater;

    /**
     * Constructor for a Point class which holds two integers.
     *
     * @param first the first integer in the pair.
     * @param second the second integer in the pair.
     */
    public Point(int first, int second) {
        //if the first one is less, make it less.
        if (first < second) {
            lesser = first;
            greater = second;
        } else {
            //first is >= second, make it greater. 
            lesser = second;
            greater = first;
        }
    }

    public int getLesser() {
        return lesser;
    }

    public int getGreater() {
        return greater;
    }

    @Override
    public String toString() {
        return "(" + lesser + "," + greater + ")";
    }
}
