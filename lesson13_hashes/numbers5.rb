# https://github.com/Ada-Developers-Academy/jump-start/tree/master/learning-to-code/hashes#numbers-problem-assignment

# Declared rand_ints and user_ints arrays.
rand_ints = []
user_ints = []

# Generate 5 random integers between specified range.
5.times do
  rand_ints << rand(12..21)
end

# Gather 5 user integers between 12 and 21.
until (user_ints.length == 5) do
  puts "Please enter an integer between 12 and 21, inclusive: "
  user_int = gets.chomp.to_i
  if user_int >= 12 && user_int <= 21
    user_ints << user_int
  else
    puts "Invalid selection."
  end
end

# Create the first hash.
numbers = {
  random_numbers: rand_ints,
  user_input: user_ints
}

# Create (empty) second hash.
# The keys in this hash will be integers.
# The values will be two element arrays where the first element is the number of times the key appears in rand_ints and the second element is the number of times the key appears in user_ints.
second_hash_counts = {}

# Populate the second hash with user_ints.
user_ints.each do |int|
  if second_hash_counts[int] != nil
    both_counts = second_hash_counts[int]
    current_count = both_counts[1]
    second_hash_counts[int] = [0, current_count + 1]
  else
    second_hash_counts[int] = [0, 1]
  end
end

# Populate the second hash with rand_ints.
rand_ints.each do |int|
  if second_hash_counts[int] != nil
    both_counts = second_hash_counts[int]
    current_count = both_counts[0]
    second_hash_counts[int] = [
      current_count + 1, both_counts[1]
    ]
  else
    second_hash_counts[int] = [1, 0]
  end
end

3.times do
  print "Give me a number you want information about: "
  num = gets.chomp.to_i
  puts "Using only the first hash:"

  # Check the first hash for random numbers.
  if !(numbers[:random_numbers].include?(num))
    puts " The number, #{num} did not show in the randomly generated numbers."
  else
    # Count the occurances of num in :random_numbers.
    r_count = 0
    numbers[:random_numbers].each do |n|
      if n == num
        r_count += 1
      end
    end
    puts " The number, #{num} shows up #{r_count} time(s) in the randomly generated numbers."
  end

  # Check the first hash for :user_input.
  if !(numbers[:user_input].include?(num))
    puts " The number, #{num} was not provided by the user earlier."
  else
    # Count the occurances of num in :user_input.
    u_count = 0
    numbers[:user_input].each do |n|
      if n == num
        u_count += 1
      end
    end
    puts " The number, #{num} was provided #{u_count} time(s) by the user."
  end

  puts "Using only the second hash:"
  if second_hash_counts[num].nil? || second_hash_counts[num][0] == 0
    puts " The number, #{num} did not show in the randomly generated numbers."
  else
    puts " The number, #{num} shows up #{second_hash_counts[num][0]} time(s) in the randomly generated numbers."
  end

  if second_hash_counts[num].nil? || second_hash_counts[num][1] == 0
    puts " The number, #{num} was not provided by the user earlier."
  else
    puts " The number, #{num} was provided #{second_hash_counts[num][1]} time(s) by the user."
  end
end


=begin
Compare the two approaches: using only the first hash, to using only the second hash.
Which way of organizing the data made it easier to perform the tasks asked in the program?
  - I preferred the first hash because it was easier to conceptualize and reason about.

Can you think of any other way of organizing the data to make it easy to perform the tasks asked in the program?
  - You could create two seperate hashes (user hash and random hash) that each keep track of the number of occurances of that number.
=end
