package mazesetupexample;

/**
 *
 * @author Logan Esch
 */
public class MapLocation implements Comparable<MapLocation> {

    char character;
    int x = -1;
    int y = -1;
    int weight = 1000;

    public MapLocation(int x, int y, char character) {
        this.character = character;
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
