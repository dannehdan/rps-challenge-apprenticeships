class Player
  attr_reader :name
  attr_accessor :score

  def initialize(name = "Computer")
    @name = name
    @score = 0
  end
end
