/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lab10;

/**
 *
 * @author Logan Esch
 */
public class MainRedux {

    CardDeck deck;
    Player player1;
    Player player2;
    int bank = 125;

    public static void main(String[] args) {
        MainRedux mainRedux = new MainRedux();
        mainRedux.go();
    }

    private void go() {
        player1 = new Player("Ender");
        player2 = new Player("Bean");
        deck = new CardDeck();
        deal();
        deck = new CardDeck();
        while (bank > 0) {
            playGame();
        }

        printResults();
    }

    private void deal() {
        for (int i = 1; i <= 52; i++) {
            if (i % 2 == 0) {
                player1.giveCard(deck.getNextCard());
            } else {
                player2.giveCard(deck.getNextCard());
            }
        }
    }

    private Player whichHasCard(Card card) {
        if (player1.hasCard(card)) {
            return player1;
        } else {
            return player2;
        }
    }

    private void printResults() {
        if (player1.getMoney() >= player2.getMoney()) {
            System.out.println(player1.getName() + " $" + player1.getMoney());
            System.out.println(player2.getName() + " $" + player2.getMoney());
        } else {
            System.out.println(player2.getName() + " $" + player2.getMoney());
            System.out.println(player1.getName() + " $" + player1.getMoney());
        }
    }

    private void playGame() {
        Card card = deck.getNextCard();
        Player winner = whichHasCard(card);
        System.out.println("Card: " + printCard(card) + " " + winner.getName() + " has card.");
        winner.giveMoney(20);
        bank -= 20;
    }

    private String printCard(Card card) {
        String string = "";
        switch (card.getRankAsChar()) {
            case 'A':
                string = "Ace ";
                break;
            case 'K':
                string = "King ";
                break;
            case 'Q':
                string = "Queen ";
                break;
            case 'J':
                string = "Jack ";
                break;
            case 'T':
                string = "Ten ";
                break;
            case '9':
                string = "Nine ";
                break;
            case '8':
                string = "Eight ";
                break;
            case '7':
                string = "Seven ";
                break;
            case '6':
                string = "Six ";
                break;
            case '5':
                string = "Five ";
                break;
            case '4':
                string = "Four ";
                break;
            case '3':
                string = "Three ";
                break;
            case '2':
                string = "Two ";
                break;
        }
        switch (card.getSuit()) {

            case '♦':
                string = string.concat("of Diamonds");
                break;
            case '♠':
                string = string.concat("of Spades");
                break;
            case '♣':
                string = string.concat("of Clubs");
                break;
            case '♥':
                string = string.concat("of Hearts");
        }
        return string;
    }
}
