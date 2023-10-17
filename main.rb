class Question

  def random_number
    rand(0..20) 
  end

end

question = Question.new

random_number1 = question.random_number
random_number2 = question.random_number

correct_answer = random_number1 + random_number2

puts "What is #{random_number1} + #{random_number2}? 🤔"

player_guess = gets.chomp().to_i 

if player_guess == correct_answer
  puts "Yes! 😀 You are correct! 🎉"
else
  puts "Sorry, #{player_guess} is incorrect. ☹️"
end