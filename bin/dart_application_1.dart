//creating a caed game
void main() {
  var deck = new Deck();

  // shuffle method will call here
  deck.shuffle();
  print("original list  of cards $deck");
  print("the hanfull list of mine");
  print(deck.deal(5));
  print("new list of deck $deck");
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
  // toSting function we generate a string for the cards output.
  toString() {
    return cards.toString();
  }

  // crreating the shuffle method for getting the random output
  shuffle() {
    cards.shuffle();
  }

  // creating the method for finding the cards with suits

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  //creating a new method call deal

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards.sublist(handSize);
    return hand;
  }

  //  creating another method which is remove cards
  removeCard(String suit, String rank) {
    cards.removeWhere((card) => card.suit == suit && card.rank == rank);
  }
}

// in the card class we will have deffrent type of cards
class Card {
  late String suit;
  late String rank;
  Card(this.rank, this.suit);

  String toString() {
    // TODO: implement toString
    return '$rank of $suit';
  }
}
