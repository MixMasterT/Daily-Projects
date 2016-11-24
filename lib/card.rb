require 'byebug'

class Card
  CARDS = {
    ace: "A",
    king: "K",
    queen: "Q",
    jack: "J",
    ten: "10",
    nine: "9",
    eight: "8",
    seven: "7",
    six: "6",
    five: "5",
    four: "4",
    three: "3",
    two: "2"
  }


  SUITS = {
    spades: "♠",
    diamonds:	"♦",
    hearts: "♥",
    clubs: "♣"
  }

  attr_reader :value, :suit
  include Comparable

  def initialize(value, suit)
    @value, @suit = value, suit
  end

  def to_s
    "[#{SUITS[@suit]} #{CARDS[@value]} #{SUITS[@suit]}]"
  end

  def <=>(other_card)
    values = CARDS.keys
    suits = SUITS.keys

    if values.find_index(self.value) == values.find_index(other_card.value)
      suits.find_index(self.suit) <=> suits.find_index(other_card.suit)
    else
      values.find_index(self.value) <=> values.find_index(other_card.value)
    end
  end
end
