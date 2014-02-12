package lab11;

import java.awt.*;
import java.awt.image.*;
import javax.swing.JPanel;

/**
 * Contains the basic elements of an individual card.
 *
 * Uses numbers 1 through 13 for rank and '♠', '♦', '♣', '♥' for suits.
 *
 * @author Eben
 */
public class Card extends JPanel implements Comparable {

    public static final char[] SUITS = new char[]{'♠', '♦', '♣', '♥'};
    public static int CARD_HEIGHT = 90, CARD_WIDTH = 60;
    public static BufferedImage BACK_IMAGE = null;
    public static Font font = new Font(Font.SANS_SERIF, Font.BOLD, 26);
    public static Font smallFont = new Font(Font.SANS_SERIF, Font.PLAIN, 10);
    private char suit;
    private int rank;
    private boolean faceUp = true;
    private BufferedImage image;

    private Card() {
        setSize(Card.CARD_WIDTH, Card.CARD_HEIGHT);
        setMinimumSize(new Dimension(Card.CARD_WIDTH, Card.CARD_HEIGHT));
        setPreferredSize(new Dimension(Card.CARD_WIDTH, Card.CARD_HEIGHT));
    }

    /**
     * Constructor with no image. Either image must be created later or the card
     * must be used in some way that doesn't require an image.
     *
     * @param suit
     * @param rank
     */
    public Card(char suit, int rank) {
        this();
        this.suit = suit;
        this.rank = rank;
        image = new BufferedImage(CARD_WIDTH, CARD_HEIGHT, BufferedImage.TYPE_4BYTE_ABGR);
    }

    /**
     * Constructor that includes an image, useful when importing external
     * images.
     *
     * @param suit
     * @param rank
     * @param image
     */
    public Card(char suit, int rank, BufferedImage image) {
        this(suit, rank);
        this.image = image;
    }

    @Override
    public void paintComponent(Graphics g) {
        if (faceUp) {
            g.drawImage(image, 0, 0, null);
        } else {
            g.drawImage(BACK_IMAGE, 0, 0, null);
        }
    }

    public boolean isFaceUp() {
        return faceUp;
    }

    public void setFaceUp(boolean faceUp) {
        this.faceUp = faceUp;
    }

    public BufferedImage getImage() {
        return image;
    }

    public void setImage(BufferedImage image) {
        this.image = image;
    }

    /**
     * Returns a String representation of the rank, with face cards using their
     * first letter and value cards using their value.
     *
     * @return
     */
    public String displayRank() {
        return displayRank(false);
    }

    /**
     * Returns a String representation of the rank, with face cards using their
     * first letter and value cards using their value.
     *
     * If tenAsT is true then a ten will be returned as T instead of 10, as is
     * common in print media.
     *
     * @return
     */
    public String displayRank(boolean tenAsT) {
        if ((rank < 10) && (rank > 1)) {
            return Integer.toString(rank);
        } else {
            switch (rank) {
                case 10:
                    if (tenAsT) {
                        return "T";
                    } else {
                        return "10";
                    }
                case 11:
                    return "J";
                case 12:
                    return "Q";
                case 13:
                    return "K";
                case 1:
                    return "A";
                default:
                    return "Z";//error marker
            }
        }
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    @Override
    public String toString() {
        return displayRank() + suit;
    }

    public char getSuit() {
        return suit;
    }

    public void setSuit(char suit) {
        this.suit = suit;
    }

    /**
     * Will allow the Card class to draw basic faces for the cards, rather than
     * requiring a previously defined image.
     */
    public void drawCardFace() {
        Graphics2D canvas = image.createGraphics();

        canvas.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        canvas.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_ON);

        canvas.setColor(Color.DARK_GRAY);
        canvas.fillRoundRect(0, 0, Card.CARD_WIDTH, Card.CARD_HEIGHT, 8, 8);
        canvas.setColor(Color.WHITE);
        canvas.fillRoundRect(2, 2, Card.CARD_WIDTH - 4, Card.CARD_HEIGHT - 4, 8, 8);

        canvas.setColor(getSuitColor());

        canvas.setFont(font);
        String display = toString();
        canvas.drawString(display, 6, (CARD_HEIGHT / 2) + 4);

        canvas.setFont(smallFont);
        canvas.drawString(display, 6, 10);

        setEnabled(true);
    }

    /**
     * Determines if two cards are identical in rank and suit.
     *
     * @param card Second card for comparison.
     * @return <code>true</code> if identical
     */
    public boolean equals(Card card) {
        return (rank == card.getRank()) && (suit == card.getSuit());
    }

    /**
     * Compares just the suits of two cards. Order of suits determined by
     * unicode value of the <code>char</code> representing them.
     *
     * @param card Second card for comparison.
     * @return -1, 0, or 1 for less than, equal, or greater than the passed in
     * card
     */
    public int compareSuitTo(Card card) {
        if (suit == card.getSuit()) {
            return 0;
        } else if (suit < card.getSuit()) {
            return -1;
        } else {
            return 1;
        }
    }

    /**
     * Compares just the ranks of two cards.
     *
     * @param card Second card for comparison
     * @return -1, 0, or 1 for less than, equal, or greater than the passed in
     * card
     */
    public int compareRankTo(Card card) {
        if (this.getRank() == card.getRank()) {
            return 0;
        } else if (this.getRank() < card.getRank()) {
            return -1;
        } else {
            return 1;
        }
    }

    /**
     * Compares two cards and determines if they are the same or which is
     * higher, based first on rank and then on suit (by unicode order) if rank
     * is the same.
     *
     * @param o
     * @return
     * @throws ClassCastException
     */
    @Override
    public int compareTo(Object o) throws ClassCastException {
        Card card = (Card) o;
        int comp = compareRankTo(card);
        if (comp == 0) {
            return compareSuitTo(card);
        } else {
            return comp;
        }
    }

    private static void drawBackImage() {
        if (BACK_IMAGE == null) {
            BACK_IMAGE = new BufferedImage(CARD_WIDTH, CARD_HEIGHT, BufferedImage.TYPE_4BYTE_ABGR);

            Graphics2D canvas = BACK_IMAGE.createGraphics();

            canvas.setColor(Color.WHITE);
            canvas.fillRoundRect(0, 0, Card.CARD_WIDTH, Card.CARD_HEIGHT, 8, 8);

            canvas.setColor(Color.DARK_GRAY);
            canvas.fillRoundRect(2, 2, Card.CARD_WIDTH - 4, Card.CARD_HEIGHT - 4, 8, 8);

            canvas.setColor(Color.ORANGE);
            canvas.fillOval(5, 5, CARD_WIDTH / 2, CARD_HEIGHT - 20);

            canvas.setFont(font);
            canvas.setColor(Color.BLACK);
            canvas.drawString("EH", 6, CARD_HEIGHT / 2 + 4);
        } else {
            Graphics2D canvas = BACK_IMAGE.createGraphics();
            canvas.drawImage(BACK_IMAGE, null, 0, 0);
        }
    }

    public boolean sameColorSuit(Card c) {
        return getSuitColor() == c.getSuitColor();
    }

    public Color getSuitColor() {
        switch (suit) {
            case '♣':
            case '♠':
                return Color.BLACK;
            case '♥':
            case '♦':
                return Color.RED;
            default:
                return Color.GREEN;//error condition
        }
    }

    public static int getCARD_HEIGHT() {
        return CARD_HEIGHT;
    }

    public static int getCARD_WIDTH() {
        return CARD_WIDTH;
    }

    /**
     * Allows for the setting of a new card size. Should be used before any
     * actual cards are created and only if using default drawing rather than
     * imported images.
     *
     * @param width
     * @param height
     */
    public static void setNewCardDimension(int width, int height) {
        CARD_HEIGHT = height;
        CARD_WIDTH = width;
    }

    /**
     * Sets just the back image. Should be same size as front images. Card's
     * width and height are reset to reflect passed in image size.
     *
     * @param image
     */
    public static void setBackImage(BufferedImage image) {
        BACK_IMAGE = image;
        if (image != null) {
            CARD_WIDTH = image.getWidth();
            CARD_HEIGHT = image.getHeight();
        }
        drawBackImage();
    }
}
