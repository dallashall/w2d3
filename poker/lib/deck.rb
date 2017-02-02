# require "card"
class Deck
  attr_reader :cards
  def initialize
    @cards = build_deck
  end

  private
  def build_deck
    cards = []
    (1..13).each do |num|
      %w(Hearts Spades Clubs Diamonds).each do |suit|
        cards << Card.new(suit, num)
      end
    end
    cards
  end
end
