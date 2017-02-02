require 'card'

describe Card do

  subject(:card) { Card.new(suit, num) }

  describe "#initialize" do
    context "when creating a heart card" do
      let(:suit) { "Hearts"}
      let(:num) { 11 }
      it "is a 11 of hearts-suit" do
        expect(card.suit).to eq(suit)
        expect(card.numeric_value).to eq(num)
      end
    end

    context "when creating make-believe cards" do
      let(:suit) {"make-believe"}
      let(:num) { 5 }

      it "rejects invalid suit" do
        expect { card }.to raise_error("Invalid suit")
      end
    end
    context "when creating make-believe cards" do
      let(:suit) { "Hearts" }
      let(:num) { "big_one"}

      it "rejects non number input for numeric_value" do
        expect { card }.to raise_error(TypeError)
      end
    end
    context "when creating make-believe cards" do
      let(:suit) {"Spades"}
      let(:num) { 14 }

      it "rejects a number outside 1..13" do
        expect { card }.to raise_error(ArgumentError)
      end
    end
  end
end
