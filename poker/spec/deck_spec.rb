require 'deck'

describe Deck do
  let(:card) { class_double("Card").as_stubbed_const }
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "builds a deck of 52 cards" do
      expect(card).to receive(:new).exactly(52).times
      expect(deck.cards.length).to eq(52)
    end
  end

  describe "#shuffle" do

    it "changes the positions of the cards" do
      i = 0
      expect(card).to receive(:new) { i += 1 }.exactly(52).times
      expect(deck.cards).not_to eq([*(1..52)])
      expect(deck.cards.sort).to eq([*(1..52)])
    end
  end

  describe "#draw_card" do

    it "removes the first card" do
      i = 0
      expect(card).to receive(:new) { i += 1 }.exactly(52).times

      first_card = deck.cards.first
      expect(deck.draw_card).to eq(first_card)

      expect(deck.cards.length).to eq(51)
    end
  end


end
