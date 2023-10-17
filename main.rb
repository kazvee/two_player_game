class Question

  def random_number
    rand(0..20) 
  end

end

question = Question.new

random_number1 = question.random_number
random_number2 = question.random_number

puts "What is #{random_number1} + #{random_number2}? 🤔"