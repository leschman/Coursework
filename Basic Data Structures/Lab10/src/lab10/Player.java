package lab10;

import java.util.LinkedList;
import java.util.List;

/**
 * This class represents someone playing a card game.
 *
 * @author Eben Howard
 */
public class Player {

    private final String name;
    private List<Card> hand = new LinkedList<>();
    private int money = 0;

    /**
     * Creates a player with the provided name.
     *
     * @param name
     */
    public Player(String name) {
        this.name = name;
    }

    /**
     * Adds the given amount of money to the player.
     *
     * @param amount
     */
    public void giveMoney(int amount) {
        money += amount;
    }
    
    /**
     * Returns the amount of money the player currently has.
     * 
     * @return 
     */
    public int getMoney(){
        return money;
    }

    public String getName(){
        return name;
    }
    
    /**
     * Adds the provided card to the player's hand.
     *
     * @param card
     */
    public void giveCard(Card card) {
        hand.add(card);
    }

    /**
     * Returns true if the player has a card matching the passed in one.
     *
     * @param card
     * @return
     */
    public boolean hasCard(Card card) {
        return hand.contains(card);
    }

    @Override
    public String toString() {
        return name + " has $" + money;
    }
}
