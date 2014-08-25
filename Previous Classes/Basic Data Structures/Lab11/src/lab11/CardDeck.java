package lab11;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import javax.imageio.ImageIO;

/**
 * A stack of cards that represents an entire deck of 52 cards. Includes notions
 * of filling with standard cards and shuffling.
 *
 * @author Eben Howard
 */
public class CardDeck extends CardStack {

    private boolean shuffled = true;

    /**
     * Fills the deck with the standard 52 cards and shuffles them.
     */
    public void fillDeckWithDefaultImages() {
        Card.setBackImage(null);

        cards = new ArrayList<>();
        for (int rank = 1; rank <= 13; rank++) {
            for (char suit : Card.SUITS) {
                Card c = new Card(suit, rank);
                c.drawCardFace();
                cards.add(c);
            }
        }
        shuffleCards();
    }

    /**
     * Allows a folder to be selected which should contain properly named images
     * for the cards. The cards should be of any image format that Java can
     * read.
     *
     * @param folder The folder that directly contains the card images.
     * @throws IOException
     */
    public void fillDeckWithFolderImages(File folder) throws IOException {
        File[] images = folder.listFiles();
        if (images == null) {//if it's not a folder, all done
            throw new IOException("Not a folder selected.");
        }
        String fileName;
        int value;

        //search for back first, which will also set the card size
        for (File f : images) {
            if (f.getName().contains("Back")) {
                Card.setBackImage(ImageIO.read(f));
            }
        }
        for (File f : images) {
            fileName = f.getName();
            for (value = 13; value >= 1; value--) {//iterate through values, starting high so 13 isn't confused with 1
                if (fileName.contains(String.valueOf(value)) && !fileName.contains("Back")) {
                    if (fileName.contains("c")) {
                        cards.add(new Card('♣', value, ImageIO.read(f)));
                    } else if (fileName.contains("d")) {
                        cards.add(new Card('♦', value, ImageIO.read(f)));
                    } else if (fileName.contains("s")) {
                        cards.add(new Card('♠', value, ImageIO.read(f)));
                    } else if (fileName.contains("h")) {
                        cards.add(new Card('♥', value, ImageIO.read(f)));
                    }
                    break;//prevent further checks once card represented by file is found
                }
            }
        }

        shuffleCards();
    }

    public boolean isShuffled() {
        return shuffled;
    }

    private void setShuffled(boolean shuffled) {
        this.shuffled = shuffled;
    }

    public void orderCards() {
        if (shuffled) {
            Collections.sort(cards);
            setShuffled(false);
        }
    }

    public void shuffleCards() {
        Collections.shuffle(cards);
        setShuffled(true);
    }
}
