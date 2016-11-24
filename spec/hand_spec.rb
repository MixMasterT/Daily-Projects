require "rspec"
require "hand"
require "card"

describe "#initialize" do
  subject(:hand) {Hand.new}
  it "starts off empty" do
    expect(hand.cards).to eq([])
  end
end

describe "#take_card" do
  subject(:hand) {Hand.new}
  let(:card) {double("card")}
  it "adds a card to @cards" do
    expect(hand.cards).to eq([])
    hand.take_card(card)
    expect(hand.cards.length).to eq(1)
  end
end

describe "#highest_card" do
  subject(:hand) {Hand.new}
  let(:card1) {Card.new(:king, :spades)}
  let(:card2) {Card.new(:nine, :spades)}
  let(:card3) {Card.new(:five, :spades)}
  it "returns the card in the hand with the highest value" do
    hand.take_card(card1)
    hand.take_card(card2)
    hand.take_card(card3)
    expect(hand.highest_card.value).to eq(:king)
  end
end

describe "#show_cards" do
  subject(:hand) {Hand.new}
  let(:card1) {double("card", to_s: 5)}
  let(:card2) {double("card", to_s: 2)}
  let(:card3) {double("card", to_s: 3)}
  it "returns a string showing all the cards" do

  end
end
