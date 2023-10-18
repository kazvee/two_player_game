class Question
  def initialize(player_name)
    @player_name = player_name
    generate_numbers
  end

  def generate_numbers
    @random_number1 = random_number
    @random_number2 = random_number
  end

  def random_number
    rand(0..20)
  end

  def ask_question
    puts "#{@player_name}, what is #{@random_number1} + #{@random_number2}? 🤔"
  end

  def check_answer(player_guess, player)
    if !player_guess.match?(/^-?\d+(\.\d*)?$/)
      puts "Sorry, #{@player_name}, that's not even a number. 🫤"
      player.lose_life
    elsif player_guess.to_i == @random_number1 + @random_number2
      puts "Yes! 😀 #{@player_name}, you are correct! 🎉"
    else
      puts "Sorry, #{@player_name}, that is incorrect. ☹️"
      player.lose_life
    end

    generate_numbers
  end
end