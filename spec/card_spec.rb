require 'rspec'
require 'card'

describe "#initialize" do
  subject(:king) {Card.new(:king, :clubs)}
  it "creates a card with value and suit" do
    expect(king.suit).to eq(:clubs)
  end

  it "creates a card with value and suit" do
    expect(king.value).to eq(:king)
  end
end

describe "#to_s" do
  subject(:king) {Card.new(:king, :clubs)}
  it "returns a beautiful string representation" do
    expect(king.to_s).to eq("[♣ K ♣]")
  end
end

describe "#<=>" do
  subject(:ten_of_hearts) { Card.new(:ten, :hearts) }
  let(:other_ten_of_hearts) { Card.new(:ten, :hearts) }
  let(:nine_of_diamonds) { Card.new(:nine, :diamonds) }

  it "returns 0 when values are the same" do
    expect(ten_of_hearts <=> other_ten_of_hearts).to eq(0)
  end

  context "comparison" do
    it "greater than returns false when self is compared to larger value" do
      expect(nine_of_diamonds > ten_of_hearts).to eq(true)
    end
  end

  context "equality" do
    it "returns true if self is equal to other card" do
      expect(ten_of_hearts == other_ten_of_hearts).to eq(true)
    end
  end

  context "sorting" do
    it "sorts an array of cards" do
      a = [Card.new(:king, :diamonds), Card.new(:two, :hearts), Card.new(:nine, :spades)]
      expect(a.sort.last).to eq(Card.new(:two, :hearts))
    end
  end
end
