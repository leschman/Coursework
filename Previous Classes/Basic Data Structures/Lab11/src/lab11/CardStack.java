package lab11;

import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.util.Random;

/**
 * An arbitrary stack of cards, with a maintained order.
 *
 * @author Eben Howard
 */
public class CardStack {

    protected BufferedImage backside;
    protected boolean displaySpread;
    protected ArrayList<Card> cards = new ArrayList();

    /**
     * No argument constructor, should start with no cards in this case.
     */
    public CardStack() {
    }

    /**
     * Constructs a stack containing the listed cards.
     *
     * @param cards
     */
    public CardStack(ArrayList<Card> cards) {
        this.cards = cards;
    }

    /**
     * Full constructor allows all settings at time of construction.
     *
     * @param faceUp <code>true</code> if this stack should be displayed face
     * up.
     * @param displaySpread <code>true</code> if this stack should be displayed
     * fanned out.
     * @param cards cards to be included in this stack.
     * @param backside image to be displayed when cards are face down.
     */
    public CardStack(boolean displaySpread, ArrayList<Card> cards, BufferedImage backside) {
        this.backside = backside;
        this.displaySpread = displaySpread;
        this.cards = cards;
    }

    public boolean remove(Card c) {
        return cards.remove(c);
    }

    public void add(Card c) {
        cards.add(c);
    }

    public BufferedImage getBackside() {
        return backside;
    }

    public void setBackside(BufferedImage backside) {
        this.backside = backside;
    }

    public ArrayList<Card> getCards() {
        return cards;
    }

    public void setCards(ArrayList<Card> cards) {
        this.cards = cards;
    }

    public boolean isDisplaySpread() {
        return displaySpread;
    }

    public void setDisplaySpread(boolean displaySpread) {
        this.displaySpread = displaySpread;
    }

    public void insertCard(Card draggingCard, Card targetCard) {
        int entry = cards.indexOf(targetCard);
        cards.remove(draggingCard);
        cards.add(entry, draggingCard);
    }

    public void insertAfterCard(Card draggingCard, Card targetCard) {
        int entry = cards.indexOf(targetCard);
        cards.remove(draggingCard);
        cards.add(entry + 1, draggingCard);
    }

    /**
     * Pulls a random card out of the deck and returns it.
     *
     * @return the card pulled
     */
    public Card takeRandomCard() {
        if (cards.isEmpty()) {
            return null;
        }
        Random rng = new Random();
        return cards.remove(rng.nextInt(cards.size()));
    }

    public Card takeTopCard() {
        if (cards.isEmpty()) {
            return null;
        } else {
            return cards.remove(cards.size() - 1);
        }
    }

    public void removeStack(CardStack stack) {
        for (Card c : stack.getCards()) {
            remove(c);
        }
    }

    public void addStack(CardStack stack) {
        for (Card c : stack.getCards()) {
            add(c);
        }
    }
}
