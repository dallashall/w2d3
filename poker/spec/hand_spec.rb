require "hand"

describe Hand do
  subject(:hand) { Hand.new }
  describe "#initialize" do
    it "starts with an empty hand" do
      expect(hand.hand_cards).to be_empty
    end
  end

  describe "#add_card" do
    it "adds a card to the hand" do
      hand.add_card("card")
      expect(hand.hand_cards).to include("card")
    end

    it "doesn't add more than five cards" do
      
    end
  end

  describe "#remove_card" do

  end
end
