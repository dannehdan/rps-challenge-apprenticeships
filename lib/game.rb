class Game
  attr_reader :players

  def initialize(player_1, player_2)
    @player_1 = player_1
    @players = [player_1, player_2]
  end

  def player_1
    @player_1
  end

  def player_2
    @players.last
  end

  def result(player_1_choice, player_2_choice)
    GameResult.new(player_1_choice, player_1_choice)
  end

end
