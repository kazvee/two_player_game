class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lives_remaining
    @lives
  end

  def lose_life
    @lives -= 1 if @lives > 0
  end
end