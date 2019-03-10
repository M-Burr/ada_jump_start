# https://github.com/Ada-Developers-Academy/jump-start/tree/master/learning-to-code/arrays#numbers-problem-assignment


# Introduction prompt.
puts "Let's play a game. How many numbers do you want to enter?"
# Get user input and convert to string.
num1 = gets.chomp.to_i


# Declare outside the until block so it lives beyond the loop's scope.
num_array = []

# The code inside the until block will execute until the length of the num_array will be equal to the number specified by the user.
until num_array.length == num1
  print "Please enter a positive integer: "
  pos_int = gets.chomp.to_i
  # Only add positive integers.
  if pos_int > 0
    num_array << pos_int
  else
    puts "Invalid entry. Please enter a positive integer: "
  end
end

#  #each_with_index to get both item and position.
num_array.each_with_index do |num, index|
  last = num_array.last
  if num < last
    puts "The value at index #{index}, #{num} is less than the value at the last index, #{last}."
  elsif num == last
    puts "The value at index #{index}, #{num} is equal to the value at the last index, #{last}."
  else
    puts "The value at index #{index}, #{num} is greater than the value at the last index, #{last}."
  end
end

# Sum up all the ints in num_array.
sum = 0
num_array.each do |int|
  sum += int
end

# #min retrieves the smallest value from the num_array.
puts "The minimum value in the array is #{num_array.min}"

# #max retrieves the largest value from the num_array.
puts "The maximum value in the array is #{num_array.max}"

# The sum is divided by the length of num_array to compute the average.
puts "The average of all the values in the array is #{sum/num_array.length}."
