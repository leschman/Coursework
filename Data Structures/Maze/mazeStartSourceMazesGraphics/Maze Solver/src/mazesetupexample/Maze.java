/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mazesetupexample;

import java.util.Random;
import java.util.Scanner;
import java.io.*;
import java.awt.*;
import java.awt.event.*;
import java.awt.image.*;
import java.util.ArrayDeque;
import java.util.PriorityQueue;
import javax.swing.*;

/**
 *
 * @author hunterl
 */
public class Maze extends JFrame {

    private static final int MAX_WIDTH = 255;
    private static final int MAX_HEIGHT = 255;
    private char[][] maze = new char[MAX_HEIGHT][MAX_WIDTH];
    private MapLocation[][] map;
    private ArrayDeque<MapLocation> stack = new ArrayDeque<>();
    private boolean routePlanned = false;
    private Random random = new Random();
    private JPanel mazePanel = new JPanel();
    private int width = 0;
    private int height = 0;
    private boolean step = false;
    private boolean timerFired = false;
    private Timer timer;
    private final int TIMER_DELAY = 200;
    private final int SPRITE_WIDTH = 25;
    private final int SPRITE_HEIGHT = 25;
    private BufferedImage mazeImage;
    private ImageIcon ground = new ImageIcon("sprites/ground.png");
    private ImageIcon wall1 = new ImageIcon("sprites/cactus.png");
    private ImageIcon wall2 = new ImageIcon("sprites/rock.png");
    private ImageIcon finish = new ImageIcon("sprites/well.png");
    private ImageIcon south1 = new ImageIcon("sprites/cowboy-forward-1.png");
    private ImageIcon south2 = new ImageIcon("sprites/cowboy-forward-2.png");
    private ImageIcon north1 = new ImageIcon("sprites/cowboy-back-1.png");
    private ImageIcon north2 = new ImageIcon("sprites/cowboy-back-2.png");
    private ImageIcon west1 = new ImageIcon("sprites/cowboy-left-1.png");
    private ImageIcon west2 = new ImageIcon("sprites/cowboy-left-2.png");
    private ImageIcon east1 = new ImageIcon("sprites/cowboy-right-1.png");
    private ImageIcon east2 = new ImageIcon("sprites/cowboy-right-2.png");
    private long startTime;
    private long currentTime;

    /**
     * Constructor for class Maze. Opens a text file containing the maze, then
     * attempts to solve it.
     *
     * @param fname String value containing the filename of the maze to open.
     */
    public Maze(String fname) {
        openMaze(fname);
        mazeImage = printMaze();

        timer = new Timer(TIMER_DELAY, new TimerHandler());     // setup a Timer to slow the animation down.
        timer.start();

        addWindowListener(new WindowHandler());     // listen for window event windowClosing

        setTitle("Cowboy Maze");
        setSize(width * SPRITE_WIDTH + 10, height * SPRITE_HEIGHT + 30);
        setVisible(true);

        add(mazePanel);
        setContentPane(mazePanel);

        solveMaze();
    }

    /**
     * Called from the operating system. If no command line arguments are
     * supplied, the method displays an error message and exits. Otherwise, a
     * new instace of Maze() is created with the supplied filename from the
     * command line.
     *
     * @param args[] Command line arguments, the first of which should be the
     * filename to open.
     */
    public static void main(String[] args) {
        int runny = 1;
        if (args.length > 0) {
            new Maze(args[0]);
        } else {
            System.out.println();
            System.out.println("Usage: java Maze <filename>.");
            System.out.println("Maximum Maze size:" + MAX_WIDTH + " x " + MAX_HEIGHT + ".");
            System.out.println();
            System.exit(1);
        }
    }

    /**
     * Finds the starting location and passes it to the recursive algorithm
     * solve(x, y, facing). The starting location should be the only '.' on the
     * outer wall of the maze.
     */
    public void solveMaze() {
        boolean startFound = false;
        if (!startFound) {
            for (int i = 0; i < width; i++) {       // look for the starting location on the top and bottom walls of the Maze.
                if (maze[0][i] == '.') {
                    preSolve(i, 0, "south");
                    startFound = true;
                } else if (maze[height - 1][i] == '.') {
                    preSolve(i, height - 1, "north");
                    startFound = true;
                }
            }
        }
        if (!startFound) {
            for (int i = 0; i < height; i++) {      // look for the starting location on the left and right walls of the Maze.
                if (maze[i][0] == '.') {
                    preSolve(0, i, "east");
                    startFound = true;
                } else if (maze[i][width - 1] == '.') {
                    preSolve(width - 1, i, "west");
                    startFound = true;
                }
            }
        }
        if (!startFound) {
            System.out.println("Start not found!");
        }
    }

    public void preSolve(int x, int y, String facing) {
        //Graphics2D g2 = (Graphics2D)mazePanel.getGraphics();
        //g2.drawImage(mazeImage, null, 0, 0);
        //g2.drawImage(printGuy(facing), x*SPRITE_WIDTH, y*SPRITE_HEIGHT, null, null);
        Scanner input = new Scanner(System.in);
        System.out.println("Press 1 to start");
        input.nextLine();
        startTime = System.currentTimeMillis();
        map = new MapLocation[height][width];
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                map[i][j] = new MapLocation(j, i, '*');
            }
        }
        openMemory();
        solve(x, y, facing);
    }

    /**
     * Recursive algorithm to solve a Maze. Places a X at locations already
     * visited. This algorithm is very inefficient, it follows the right hand
     * wall and will never find the end if the path leads it in a circle.
     *
     * @param x int value of the current X location in the Maze.
     * @param y int value of the current Y location in the Maze.
     * @param facing String value holding one of four cardinal directions
     * determined by the current direction facing.
     */
    private void solve(int x, int y, String facing) {
        Graphics2D g2 = (Graphics2D) mazePanel.getGraphics(); //don't mess with the next 

        while (!timerFired) {   // wait for the timer.
            try {
                Thread.sleep(10);
            } catch (Exception e) {
            }
        }
        timerFired = false;
        currentTime = System.currentTimeMillis();
        if ((currentTime - startTime) > 50000) {
            closingMethod();
        }

        //Do not mess with the above part of this method
        //Below is where you put your solution to solving the maze.  
        if (maze[y][x] != 'F') {  //this is if it doesn't find the finish on a turn.........
            g2.drawImage(mazeImage, null, 0, 0);
            g2.drawImage(printGuy(facing), x * SPRITE_WIDTH, y * SPRITE_HEIGHT, null, null);
            mazePanel.setSize(width * SPRITE_WIDTH + 10, height * SPRITE_HEIGHT + 30);
            maze[y][x] = 'X';   // mark this spot as visited. This is how you can keep track of where you've been. 

            //update memory of the squares we pass by.  
            if (y + 1 < height) {
                map[y + 1][x].character = maze[y + 1][x];
            }
            if (y - 1 >= 0) {
                map[y - 1][x].character = maze[y - 1][x];
            }
            if (x + 1 < width) {
                map[y][x + 1].character = maze[y][x + 1];
            }
            if (x - 1 >= 0) {
                map[y][x - 1].character = maze[y][x - 1];
            }

            //figureout where we are going next. 
            //figureout which way we are facing.
            Dir currentDir;
            switch (facing) {
                case "north":
                    currentDir = Dir.north;
                    break;
                case "east":
                    currentDir = Dir.east;
                    break;
                case "south":
                    currentDir = Dir.south;
                    break;
                case "west":
                    currentDir = Dir.west;
                    break;
                default:
                    currentDir = Dir.north;
                    System.out.println("couldn't understand the direction, " + facing);
            }
            if (!routePlanned) {
                Dir needToGo = directionToGo(x, y, currentDir, 0);
                if (needToGo == Dir.backup && !stack.isEmpty()) {
                    //Need to go backwards
                    MapLocation lastLocation = stack.removeLast();
                    switch (directionTo(lastLocation, map[y][x])) {
                        case north:
                            solve(lastLocation.x, lastLocation.y, "north");
                            break;
                        case east:
                            solve(lastLocation.x, lastLocation.y, "east");
                            break;
                        case south:
                            solve(lastLocation.x, lastLocation.y, "south");
                            break;
                        case west:
                            solve(lastLocation.x, lastLocation.y, "west");
                            break;
                    }
                } else {
                    //add where we are to the stack so we can backtrack.
                    stack.add(map[y][x]);
                    //go the direction we need to go. 
                    switch (needToGo) {
                        case north:
                            solve(x, y - 1, "north");
                            break;
                        case east:
                            solve(x + 1, y, "east");
                            break;
                        case south:
                            solve(x, y + 1, "south");
                            break;
                        case west:
                            solve(x - 1, y, "west");
                            break;
                    }
                }

            } else {
                //route planned, need to follow. 
                MapLocation lastLocation = stack.removeFirst();
                switch (directionTo(lastLocation, map[y][x])) {
                    case north:
                        solve(lastLocation.x, lastLocation.y, "north");
                        break;
                    case east:
                        solve(lastLocation.x, lastLocation.y, "east");
                        break;
                    case south:
                        solve(lastLocation.x, lastLocation.y, "south");
                        break;
                    case west:
                        solve(lastLocation.x, lastLocation.y, "west");
                        break;
                }
            }
        } else {
            System.out.println("Found the finish!");

            //don't mess with the following 4 lines, but you can add stuff below that if you need. 
            currentTime = System.currentTimeMillis();
            long endTime = currentTime - startTime;
            long finalTime = endTime / 1000;
            System.out.println("Final Time = " + finalTime);

        }
    }

    private Dir directionToGo(int x, int y, Dir facing, int iterations) {
        iterations++;
        //if we have tried left, forward and right, need to go back. 
        if (iterations >= 4) {
            return Dir.backup;
        } else {
            //try turning.
            switch (facing) {
                case north:
                    //try to turn left, check if inbounds and a place we can go that we haven't been. 
                    if (x - 1 >= 0 && canGo(maze[y][x - 1])) {
                        //can turn left. 
                        return Dir.west;
                    } else {
                        //cant turn left, try next direction. 
                        return directionToGo(x, y, Dir.east, iterations);
                    }
                case east:
                    //try to turn left ...
                    if (y - 1 >= 0 && canGo(maze[y - 1][x])) {
                        //can turn left
                        return Dir.north;
                    } else {
                        //cant turn left...
                        return directionToGo(x, y, Dir.south, iterations);
                    }
                case south:
                    //try to turn left...
                    if (x + 1 < width && canGo(maze[y][x + 1])) {
                        //can turn left. 
                        return Dir.east;
                    } else {
                        //cant turn left...
                        return directionToGo(x, y, Dir.west, iterations);
                    }
                case west:
                    //try to turn left...
                    if (y + 1 < height && canGo(maze[y + 1][x])) {
                        //can turn left.
                        return Dir.south;
                    } else {
                        //cant turn left.
                        return directionToGo(x, y, Dir.north, iterations);
                    }

            }
        }
        return null;
    }

    private enum Dir {

        north, west, south, east, backup
    }

    private boolean canGo(char c) {
        return (c != '#' && c != '%' && c != 'X' && c != '*');
    }

    private Dir directionTo(MapLocation goal, MapLocation start) {
        int xDif = goal.x - start.x;
        int yDif = goal.y - start.y;

        if (xDif > yDif) {
            if (xDif > 0) {
                return Dir.east;
            } else {
                return Dir.west;
            }
        } else {
            if (yDif > 0) {
                return Dir.north;
            } else {
                return Dir.south;
            }
        }
    }

    private void openMemory() {
        File file = new File("memory.txt");
        boolean foundFinish = false;
        MapLocation finish = null;
        if (file.exists()) {
            String in = "";
            int i = 0;
            try {
                Scanner sc = new Scanner(file);
                while (sc.hasNext()) {
                    in = sc.nextLine();
                    in = trimWhitespace(in);
                    if (in.length() <= MAX_WIDTH && i < MAX_HEIGHT) {
                        for (int j = 0; j < in.length(); j++) {
                            if (in.charAt(j) == '#') {
                                map[i][j].character = in.charAt(j);
                                map[i][j].weight = 10000;
                            } else {
                                if (in.charAt(j) == 'F') {
                                    foundFinish = true;
                                    finish = map[i][j];
                                }
                                map[i][j].character = in.charAt(j);
                                map[i][j].weight = 1;
                            }
                        }
                    } else {
                        System.out.println("Maximum maze size exceeded: (" + MAX_WIDTH + " x " + MAX_HEIGHT + ")!");
                        System.exit(1);
                    }
                    i++;
                }

                System.out.println("Memory opened successfuly.");
                System.out.println();
                sc.close();
            } catch (FileNotFoundException e) {
                System.err.println("File not found: " + e);
            }

            if (foundFinish) {
                layBreadCrumbs(finish);
            }
        }
    }

    private void layBreadCrumbs(MapLocation finish) {
        System.out.println("laying bread crumbs");
        stack.add(finish);
        MapLocation start = null;
        boolean foundExit = false;
        int weight = 0;
        while (!foundExit) {
            MapLocation loc = stack.removeFirst();
            loc.weight = weight;
            loc.character = 'X';
            weight++;
            //location is on edge, we have found start. 
            if (loc.x == 0 || loc.x == width - 1 || loc.y == 0 || loc.y == height - 1) {
                foundExit = true;
                start = loc;
                break;
            } else {
                if (canGo(map[loc.y - 1][loc.x].character)) {
                    stack.add(map[loc.y - 1][loc.x]);
                }
                if (canGo(map[loc.y + 1][loc.x].character)) {
                    stack.add(map[loc.y + 1][loc.x]);
                }
                if (canGo(map[loc.y][loc.x - 1].character)) {
                    stack.add(map[loc.y][loc.x - 1]);
                }
                if (canGo(map[loc.y][loc.x + 1].character)) {
                    stack.add(map[loc.y][loc.x + 1]);
                }
            }
        }
        planRoute(start, finish);
    }

    private void planRoute(MapLocation start, MapLocation finish) {
        System.out.println("planning Route");
        routePlanned = true;
        stack.add(start);
        MapLocation loc = start;
        while (loc != finish) {
            if (loc.y - 1 >= 0 && map[loc.y - 1][loc.x].weight < loc.weight) {
                loc = map[loc.y - 1][loc.x];
                stack.add(loc);
            } else if (loc.y + 1 < height && map[loc.y + 1][loc.x].weight < loc.weight) {
                loc = map[loc.y + 1][loc.x];
                stack.add(loc);
            } else if (loc.x + 1 < width && map[loc.y][loc.x + 1].weight < loc.weight) {
                loc = map[loc.y][loc.x + 1];
                stack.add(loc);
            } else if (loc.x - 1 < width && map[loc.y][loc.x - 1].weight < loc.weight) {
                loc = map[loc.y][loc.x - 1];
                stack.add(loc);
            }
        }
    }

    /**
     * Opens a text file containing a maze and stores the data in the 2D char
     * array maze[][].
     *
     * @param fname String value containing the file name of the maze to open.
     */
    public void openMaze(String fname) {
        String in = "";
        int i = 0;
        try {
            Scanner sc = new Scanner(new File(fname));
            while (sc.hasNext()) {
                in = sc.nextLine();
                in = trimWhitespace(in);
                if (in.length() <= MAX_WIDTH && i < MAX_HEIGHT) {
                    for (int j = 0; j < in.length(); j++) {
                        if (in.charAt(j) == '#') {      // if this spot is a wall, randomize the wall peice to display
                            if (random.nextInt(2) == 0) {
                                maze[i][j] = '#';
                            } else {
                                maze[i][j] = '%';
                            }
                        } else {
                            maze[i][j] = in.charAt(j);
                        }
                    }
                } else {
                    System.out.println("Maximum maze size exceeded: (" + MAX_WIDTH + " x " + MAX_HEIGHT + ")!");
                    System.exit(1);
                }
                i++;
            }
            width = in.length();
            height = i;
            System.out.println("(" + width + " x " + height + ") maze opened.");
            System.out.println();
            sc.close();
        } catch (FileNotFoundException e) {
            System.err.println("File not found: " + e);
        }
    }

    /**
     * Removes white space from the supplied string and returns the trimmed
     * String.
     *
     * @param s String value to strip white space from.
     * @return String stripped of white space.
     */
    public String trimWhitespace(String s) {
        String newString = "";
        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) != ' ') {
                newString += s.charAt(i);
            }
        }
        return newString;
    }

    /**
     * Returns the sprite facing the direction supplied.
     *
     * @param facing String value containing 1 of 4 cardinal directions to make
     * the sprite face.
     * @return Image of the sprite facing the proper direction.
     */
    private Image printGuy(String facing) {
        if (facing.equals("south")) {  // draw sprite facing south
            if (step) {
                step = false;
                return south1.getImage();
            } else {
                step = true;
                return south2.getImage();
            }
        } else if (facing.equals("north")) {  // draw sprite facing north
            if (step) {
                step = false;
                return north1.getImage();
            } else {
                step = true;
                return north2.getImage();
            }
        } else if (facing.equals("east")) {  // draw sprite facing east
            if (step) {
                step = false;
                return east1.getImage();
            } else {
                step = true;
                return east2.getImage();
            }
        } else if (facing.equals("west")) {  // draw sprite facing west
            if (step) {
                step = false;
                return west1.getImage();
            } else {
                step = true;
                return west2.getImage();
            }
        }
        return null;
    }

    /**
     * Prints the Maze using sprites.
     *
     * @return BufferedImage rendition of the maze.
     */
    public BufferedImage printMaze() {
        BufferedImage mi = new BufferedImage(width * SPRITE_WIDTH, height * SPRITE_HEIGHT, BufferedImage.TYPE_INT_ARGB);
        Graphics g2 = mi.createGraphics();

        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                if (maze[i][j] == '#') {    // draw wall
                    g2.drawImage(wall1.getImage(), j * SPRITE_WIDTH, i * SPRITE_HEIGHT, null, null);
                } else if (maze[i][j] == '%') {   // draw wall
                    g2.drawImage(wall2.getImage(), j * SPRITE_WIDTH, i * SPRITE_HEIGHT, null, null);
                } else if (maze[i][j] == '.' || maze[i][j] == 'X') {  // draw ground
                    g2.drawImage(ground.getImage(), j * SPRITE_WIDTH, i * SPRITE_HEIGHT, null, null);
                } else if (maze[i][j] == 'F') {   // draw finish
                    g2.drawImage(finish.getImage(), j * SPRITE_WIDTH, i * SPRITE_HEIGHT, null, null);
                }
            }
        }
        return mi;
    }

    public void closingMethod() {
        String out = "";
        for (MapLocation[] row : map) {
            for (MapLocation m : row) {
                if (m != null) {
                    if (m.character == '#' || m.character == '%') {
                        m.character = '#';
                    } else if (m.character == 'X') {
                        m.character = '.';
                    }

                    out = out + " " + m.character;
                }
            }
            out = out + "\n";
        }

        try {
            File file = new File("memory.txt");
            if (!file.exists()) {
                file.createNewFile();
            }

            FileWriter fw = new FileWriter(file.getAbsoluteFile());
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(out);
            bw.close();
        } catch (IOException e) {
        }

        long endTime = currentTime - startTime;
        long finalTime = endTime / 100;
        System.out.println("Final Time = " + ((double) finalTime / (double) 10));
        System.exit(0);

    }

    /**
     * Handles the Timer, updates the boolean timerFired every time the Timer
     * ticks. Used to slow the animation down.
     */
    private class TimerHandler implements ActionListener {

        public void actionPerformed(ActionEvent e) {
            timerFired = true;
        }
    }

    /**
     * Catch the windowClosing event and exit gracefully.
     */
    private class WindowHandler extends WindowAdapter {

        public void windowClosing(WindowEvent e) {
            removeAll();
            closingMethod();
            System.exit(0);
        }
    }
}
