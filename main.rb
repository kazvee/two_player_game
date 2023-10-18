require_relative 'question'
require_relative 'player'

class Main
  def initialize
    @question = Question.new
    @player = Player.new
  end

  def display_lives_remaining
    puts "Lives remaining: #{@player.lives_remaining} 🧮"
  end

  def play_game
    while @player.lives_remaining > 0
      @question.ask_question
      player_guess = gets.chomp

      @question.check_answer(player_guess, @player)
      display_lives_remaining
    end

    puts "Game Over! ❌ 😭"
  end
end

Main.new.play_game