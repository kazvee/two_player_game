class Question

  def random_number
    rand(0..20) 
  end

end

question = Question.new

random_number = question.random_number

puts "This is a random number: #{random_number}! 😀"