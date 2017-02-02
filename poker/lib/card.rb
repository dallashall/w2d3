require "colorize"
require 'byebug'
class Card
  attr_reader :suit, :numeric_value, :symbol

  SUITS = {
    "Hearts" => "♥".red,
    "Spades" => "♠".black,
    "Diamonds" => "♦".red,
    "Clubs" => "♣".black
  }

  def initialize(suit, numeric_value)
    @suit = suit if valid_suit?(suit)
    @numeric_value = numeric_value if valid_numeric?(numeric_value)
    @symbol = SUITS[suit]
  end

  private

  def valid_suit?(suit)
    raise ArgumentError.new("Invalid suit") unless SUITS[suit]
    true
  end

  def valid_numeric?(num)
    raise TypeError.new("NaN") unless num.is_a?(Fixnum)
    raise ArgumentError.new("Invalid value") unless num.between?(1, 13)
    true
  end
end
