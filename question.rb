class Question

  def initialize
    @random_number1 = random_number
    @random_number2 = random_number
  end

  def random_number
    rand(0..20) 
  end

  def ask_question
    puts "What is #{@random_number1} + #{@random_number2}? 🤔"
  end

  def check_answer(player_guess, player)

    if !player_guess.match?(/^-?\d+(\.\d*)?$/)
      puts "Sorry, that's not even a number. 🫤"
      player.lose_life
    elsif player_guess.to_i == @random_number1 + @random_number2
      puts "Yes! 😀 You are correct! 🎉"
    else
      puts "Sorry, that is incorrect. ☹️"
      player.lose_life
    end

  end

end