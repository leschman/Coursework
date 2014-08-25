package lab10;

/**
 * Represents a single immutable card.
 *
 * The rank is 1 through 13. 1 is an ace, 11 is a jack, 12 is a queen, 13 is a
 * king.
 *
 * The suit is one of the following: ♦ ♠ ♣ ♥
 * 
 * @author Eben Howard
 */
public class Card {

    private final int rank;
    private final char suit;

    public Card(int rank, char suit) {
        this.rank = rank;
        this.suit = suit;
    }

    public int getRank() {
        return rank;
    }

    public char getSuit() {
        return suit;
    }

    /**
     * Returns the common single character abbreviation for the rank of the
     * card.
     *
     * @return
     */
    public char getRankAsChar() {
        switch (rank) {
            case 1:
                return 'A';
            case 10:
                return 'T';
            case 11:
                return 'J';
            case 12:
                return 'Q';
            case 13:
                return 'K';
            default:
                return (char) ('0' + rank);//unicode math to find character representation of integer
        }
    }

    @Override
    public String toString() {
        return "" + getRankAsChar() + suit;// initial "" is to indicate String concatenation is desired
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 83 * hash + this.rank;
        hash = 83 * hash + this.suit;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Card other = (Card) obj;
        if (this.rank != other.rank) {
            return false;
        }
        if (this.suit != other.suit) {
            return false;
        }
        return true;
    }

    
}
