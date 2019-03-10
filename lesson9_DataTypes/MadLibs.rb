# https://github.com/Ada-Developers-Academy/jump-start/tree/master/learning-to-code/grammar#madlib-assignment

# Gather user entries and assign values to variables.
puts "Please enter a pet type:"
pet_noun = gets.chomp
puts "Please enter a proper noun:"
prop_noun = gets.chomp.capitalize
puts "Pleae enter an adjective:"
adj1 = gets.chomp
puts "Please enter a verb:"
verb1 = gets.chomp
puts "Please enter a verb:"
verb2 = gets.chomp
puts "Please enter a verb:"
verb3 = gets.chomp
puts "Please enter a verb:"
verb4 = gets.chomp
puts "Please enter an occupation:"
occupation_noun = gets.chomp
puts "Please enter a verb:"
verb5 = gets.chomp
puts "Please enter a verb:"
verb6 = gets.chomp
puts "Please enter a present progressive verb:"
verb7 = gets.chomp
puts "Please enter a noun:"
noun = gets.chomp
puts "Pleae enter a number greater than 1:"
number = gets.chomp
puts "Please enter a plural noun:"
plural_noun = gets.chomp

# Insert variables into the story and print the result.
puts "My #{pet_noun}, #{prop_noun}, is very #{adj1 }! In the morning, #{prop_noun} loves to #{verb1} and eat #{number} #{plural_noun}. Then #{prop_noun} likes to #{verb2} until I  leave for work. During the day, #{prop_noun} also likes to #{verb3} and #{verb4}. At noon, I send a(n) #{occupation_noun} to #{verb5} with #{prop_noun}. In the evening, #{prop_noun} likes to #{verb6} until he goes to sleep. #{prop_noun} always #{verb7} in my #{noun} throughout the night."
