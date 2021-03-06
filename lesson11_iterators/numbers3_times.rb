# https://github.com/Ada-Developers-Academy/jump-start/tree/master/learning-to-code/iterators#numbers-problem-assignment

puts "Let's play a numbers game. How many numbers would you like to enter? "
# Get user's input and convert into an integer.
number = gets.chomp.to_i

# Block will iterate number of times based on user's input.
number.times do
  puts ""
  print "Enter a positive integer: "
  pos_int = gets.chomp.to_i
  if (pos_int > 0) && (pos_int % 3 == 0)
    puts "#{pos_int} is divisible by 3."
  elsif pos_int < 0
    puts "This is a negative integer. Please enter a positive integer next time."
  else
    puts "#{pos_int} is not divisible by 3."
  end
end
