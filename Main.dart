import 'dart:math';

void main() {
  var deck = Deck();
  var array = deck.display();
}
class Card
{
  String? house;
  int? number;
  String? color;

  Card(this.house, this.number, this.color) ;

  String cardIdentity()
  {
    return "$house $number $color";
  }
}
  class Deck extends Card
  {
    var cards = [];
    var listColors = ["red", "black"];
    var list = ["Diamond", "Spade", "Club", "Heart"];
    Deck({String? house, int? number, String? color}) : super(house, number, color);

    void display() {
      for (int i = 0; i < 4; i++)
      {
        for (int count = 1; count <= 13; count++)
        {
          if (i == 0 || i == 3)
          {
            cards.add(Card(list[i], count, listColors[0]).cardIdentity());
          }
          else
            {
            cards.add(Card(list[i], count, listColors[1]).cardIdentity());
          }
        }
      }
      print(cards);
    }
  }
