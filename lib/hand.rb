require "card"

class Hand

  attr_reader :cards

  def initialize
    @cards = []
  end

  def take_card(card)
    @cards << card
  end

  def highest_card
    @cards.sort.first
  end
end
