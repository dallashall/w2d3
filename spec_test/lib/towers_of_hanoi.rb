require 'byebug'
class Towers

  attr_accessor :sticks

  def initialize
    @sticks = [[3,2,1],[],[]]
  end

  def play

  end

  def move(start_pos, end_pos)
    raise ArgumentError.new("Not valid move!") unless valid_move?(start_pos, end_pos)

    @sticks[end_pos] << @sticks[start_pos].pop
  end

  def won?
    @sticks == [[], [], [3, 2, 1]] ||
    @sticks == [[], [3, 2, 1], []]
  end

  private
  def valid_move?(start_pos, end_pos)
    if @sticks[start_pos].empty?
      false
    elsif @sticks[end_pos].empty? || smaller_pos?(start_pos, end_pos)
      true
    else
      false
    end
  end

  def smaller_pos?(start_pos, end_pos)
    @sticks[end_pos].last > @sticks[start_pos].last
  end

  def prompt_user

  end


end
