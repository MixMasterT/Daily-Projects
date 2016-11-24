require "deck"
require "rspec"

describe "#initialize" do
  subject(:deck) {Deck.new}
  it "start with a full deck" do
    expect(deck.cards.length).to eq(52)
  end

  let(:high_card) {double("ace of spades", value: :ace, suit: :spades)}
  it "provides a deck ordered from highest to lowest value" do
    expect(deck.cards.first.value).to eq(high_card.value)
    expect(deck.cards.first.suit).to eq(high_card.suit)
  end
end

describe "#shuffle!" do
  let(:high_card) {double("ace of spades", value: :ace, suit: :spades)}
  let(:low_card) {double("ace of spades", value: :two, suit: :clubs)}
  subject(:deck) {Deck.new}
  it "Shuffles a deck of cards" do
    deck.shuffle!
    expect(deck.cards.first.value).not_to eq(high_card.value)
    expect(deck.cards.last.value).not_to eq(low_card.value)
  end
end

describe "#draw_card" do
  subject(:deck) {Deck.new}
  it "pops the last card in cards array" do
    expect(deck.draw_card.value).to eq(:two)
  end

  it "reduces the number of cards in the deck" do
    deck.draw_card
    expect(deck.num_cards).to eq(51)
  end
end
