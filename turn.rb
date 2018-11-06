class Turn

  attr_reader :current_player, :ennemy_player, :round

  def initialize(players)
    @players = players.shuffle
    @current_player = nil
    @ennemy_player = nil
    @round = 0
  end

 end 