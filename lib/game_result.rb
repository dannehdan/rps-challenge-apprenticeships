class GameResult
  attr_reader :choices, :user_choice, :computer_choice

  def initialize(user_choice, computer_choice)
    @user_choice = user_choice
    @computer_choice = computer_choice
    @choices = [user_choice, computer_choice]
  end

  def result
    @result = draw ? "Draw" : no_draw
    update_score
    @result
  end

  def update_score
    case @result 
      when "You win"
        $game.player_1.score += 1
      when "You lose"
        $game.player_2.score += 1
      else
      end
  end

  private

  def no_draw
    case user_choice
      when "Rock"
        rock
      when "Paper"
        paper
      else
        scissors
      end
  end

  def rock
    computer_choice == "Scissors" ? "You win" : "You lose"
  end

  def paper
    computer_choice == "Rock" ? "You win" : "You lose"
  end

  def scissors
    computer_choice == "Paper" ? "You win" : "You lose"
  end

  def draw
    user_choice == computer_choice
  end

end
