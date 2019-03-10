# https://github.com/Ada-Developers-Academy/jump-start/tree/master/learning-to-code/grammar#numbers-problem-assignment

# Get the input from the user, convert to integer, and assign to variables.
puts "Please enter the first integer (i.e., whole positive or negative number):"
int1 = gets.chomp.to_i

puts "Please enter a second integer (i.e., whole positive or negative number):"
int2 = gets.chomp.to_i

puts "Please enter a third integer (i.e., whole positive or negative number):"
int3 = gets.chomp.to_i

# Add 20 to each number and print the result within the story.
puts "Twenty added to the numbers you entered gives us #{int1 + 20}, #{int2 + 20}, #{int3 + 20}."
