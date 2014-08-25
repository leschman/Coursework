package leagueoflegendschampions;

import battlecode.common.Clock;
import battlecode.common.Direction;
import battlecode.common.GameActionException;
import battlecode.common.GameConstants;
import battlecode.common.MapLocation;
import battlecode.common.RobotController;
import battlecode.common.RobotType;
import battlecode.common.Team;

/** The example funcs player is a player meant to demonstrate basic usage of the most common commands.
 * Robots will move around randomly, occasionally mining and writing useless messages.
 * The HQ will spawn soldiers continuously. 
 */
public class RobotPlayer {
	public static void run(RobotController rc) {
		MapLocation enemy = null;
		while (true) {
			try {
				if (rc.getType() == RobotType.HQ) {
					if (rc.isActive()) {
						// Spawn a soldier
						Direction dir = rc.getLocation().directionTo(rc.senseEnemyHQLocation());
						if (rc.canMove(dir))
							rc.spawn(dir);
					}
				} else if (rc.getType() == RobotType.SOLDIER) {
					if (rc.isActive()) {
						if (Math.random() < 0.0001) {
							// Lay a mine 
							if (rc.senseMine(rc.getLocation()) == null)
								rc.layMine();
						} else {
							if (enemy == null) {
								enemy = rc.senseEnemyHQLocation();
							}
							
							Direction dir = rc.getLocation().directionTo(enemy);
							Team mine = rc.senseMine(rc.getLocation().add(dir));
							
							if (mine != null && mine != rc.getTeam()) {
								rc.defuseMine(rc.getLocation().add(dir));
							} else {
								move(rc, dir);
							}
						}
					}
					
					if (Math.random() < 0.01 && rc.getTeamPower() > 5) {
						// Write the number 5 to a position on the message board corresponding to the robot's ID
						rc.broadcast(rc.getRobot().getID() % GameConstants.BROADCAST_MAX_CHANNELS, 5);
					}
				}

				// End turn
				rc.yield();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public static void move(RobotController rc, Direction dir) throws GameActionException {
		Team mine = rc.senseMine(rc.getLocation().add(dir));
		if (rc.canMove(dir)) {
			rc.move(dir);
		} else {
			if (rc.canMove(dir.rotateLeft())) {
				if (mine != null && mine != rc.getTeam()) {
					rc.defuseMine(rc.getLocation().add(dir));
				} else {
					rc.move(dir.rotateLeft());
				}
			} else if (rc.canMove(dir.rotateRight())) {
				if (mine != null && mine != rc.getTeam()) {
					rc.defuseMine(rc.getLocation().add(dir.rotateRight()));
				} else {
					rc.move(dir.rotateRight());
				}
			}
		}
	}
}