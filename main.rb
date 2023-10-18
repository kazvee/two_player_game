require_relative 'question'
require_relative 'player'

class Main
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def display_lives_remaining
    puts "🧮 Current Score: Player 1 has #{@player1.lives_remaining}/3 & Player 2 has #{@player2.lives_remaining}/3 🧮"
  end

  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def play_game
    while @player1.lives_remaining > 0 && @player2.lives_remaining > 0
      puts "✨ New Turn ✨"
      question = Question.new(@current_player.name)
      question.ask_question
      player_guess = gets.chomp
      question.check_answer(player_guess, @current_player)
      display_lives_remaining

      if @player1.lives_remaining <= 0 || @player2.lives_remaining <= 0
        break
      end
      
      switch_player
    end

    winner = @player1.lives_remaining > 0 ? @player1 : @player2
    puts "Game Over! #{winner.name} wins with a score of #{winner.lives_remaining}/3! 🏆"
  end
end

Main.new.play_game