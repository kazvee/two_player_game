class Player

  def initialize
    @lives = 3
  end

  def lives_remaining
    @lives
  end

  def lose_life
    @lives -= 1 if @lives > 0
  end

end