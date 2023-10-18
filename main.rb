require_relative 'question'
require_relative 'player'

class Main
  
  def initialize
    @question = Question.new
    @player = Player.new
  end

  def play_game
    @question.ask_question
    player_guess = gets.chomp
    @question.check_answer(player_guess)
    puts "Lives remaining: #{@player.lives_remaining}"
  end
  
end

Main.new.play_game