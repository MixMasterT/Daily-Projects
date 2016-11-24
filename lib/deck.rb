require_relative "card"
class Deck

  attr_reader :cards

  def initialize
    @cards = Array.new
    fill_deck
  end

  def shuffle!
    @cards.shuffle!
  end

  def num_cards
    @cards.count
  end

  def draw_card
    @cards.pop
  end


private
  def fill_deck
    Card::CARDS.keys.each do |val|
      Card::SUITS.keys.each do |suit|
        @cards << Card.new(val, suit)
      end
    end
  end


end
