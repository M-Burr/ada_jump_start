# https://github.com/Ada-Developers-Academy/jump-start/tree/master/learning-to-code/programming-expressions#numbers-problem-assignment

# Introduction statement for the user
puts "This program will ask you to enter numbers and share if the number is less than 20"
puts ""


# Use a times loop to prompt the user to enter a number 3 times.
3.times do
  puts ""
  puts "Please enter a number"
  number = gets.chomp.to_i
  # Print different message depending on user input value.
  if number >= 20
    puts "#{number} is greater than or equal to 20."
  else
    puts "#{number} is less than 20."
  end
end
