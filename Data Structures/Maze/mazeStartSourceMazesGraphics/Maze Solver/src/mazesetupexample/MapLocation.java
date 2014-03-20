package mazesetupexample;

/**
 *
 * @author Logan Esch
 */
public class MapLocation implements Comparable<MapLocation> {

    int weight = 0;
    int x = -1;
    int y = -1;

    public MapLocation(int x, int y, int weight) {
        this.weight = weight;
        this.x = x;
        this.y = y;
    }

    @Override
    public int compareTo(MapLocation o) {
        if (this.weight < o.weight) {
            return -1;
        } else if (this.weight > o.weight) {
            return 1;
        } else {
            return 0;
        }
    }
}
