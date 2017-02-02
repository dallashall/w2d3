class Game
  def initialize(*players)
    @players = players
    @deck = Deck.new
    @current_player = @players.first
  end

  def change_player!
    @players.rotate!
    @current_player = @players.first
  end


end
