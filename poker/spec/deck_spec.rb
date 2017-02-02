require 'deck'

describe Deck do
  # let(:card_class) { stub_const("Card", Class.new) }
  let(:card) { class_double("Card").as_stubbed_const }
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "builds a deck of 52 cards" do
      allow(card).to receive(:new).with("suit", "num") {"a"}
      expect(card).to receive(:new).exactly(52).times
      expect(deck.cards.length).to eq(52)
    end
  end
end
