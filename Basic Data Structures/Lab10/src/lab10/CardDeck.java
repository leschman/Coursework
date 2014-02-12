package lab10;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/**
 * This class holds an entire deck of cards throughout the life of a card game.
 *
 * Does not include Jokers.
 *
 * @author Eben Howard
 */
public class CardDeck {

    private List<Card> deck;

    /**
     * Creates a card deck that has been shuffled.
     */
    public CardDeck() {
        deck = new LinkedList<>();
        for (int rank = 1; rank <= 13; rank++) {   
                deck.add(new Card(rank, '♦'));
                deck.add(new Card(rank, '♠'));
                deck.add(new Card(rank, '♣'));
                deck.add(new Card(rank, '♥'));
        }
        Collections.shuffle(deck);
    }

    /**
     * Pulls the next card from the deck.
     *
     * @return
     */
    public Card getNextCard() {
        return deck.remove(0);
    }

    @Override
    public String toString() {
        String output = "";
        for (Card c : deck) {
            output += c + "\n";
        }
        return output;
    }
}
