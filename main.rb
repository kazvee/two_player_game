require_relative 'question'
require_relative 'player'

class Main
  def initialize
    @question = Question.new("Player 1")
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def display_lives_remaining(player)
    puts "#{player.name} has #{player.lives_remaining} lives remaining. 🧮"
  end

  def play_game
    while @player1.lives_remaining > 0
      @question.ask_question
      player_guess = gets.chomp

      @question.check_answer(player_guess, @player1)
      display_lives_remaining(@player1)
    end

    puts "Game Over for #{@player1.name}! ❌ 😭"
  end
end

Main.new.play_game