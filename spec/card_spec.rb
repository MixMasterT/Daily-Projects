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

end

describe "#<=>" do
  context "comparison" do

  end
  context "equality" do

  end
  context ".max for set of cards" do

  end
end
