//creating a caed game
void main() {
  var deck = new Deck();
  print(deck);
}

//in the deck class we will hold the cards/

class Deck {
  late List<Card> cards = [];

  //constractor function

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Dimonds', 'Hearts', 'Clubs', 'Spades'];

//for individual suit in the suits list.
    for (var suit in suits) {
      //for individual rank in the rank list.
      for (var rank in ranks) {
        var card = new Card(rank, suit);
        cards.add(card);
      }
    }
  }
  toString() {
    return "this is a deck!";
  }
}

// in the card class we will have deffrent type of cards
class Card {
  late String suit;
  late String rank;
  Card(this.rank, this.suit);
}
