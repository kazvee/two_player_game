require_relative 'question'

class Main
  
  def initialize
    @question = Question.new
  end

  def play_game
    @question.ask_question
    player_guess = gets.chomp
    @question.check_answer(player_guess)
  end
  
end

# game = Main.new
# game.play_game
# Can refactor on one line as:
Main.new.play_game