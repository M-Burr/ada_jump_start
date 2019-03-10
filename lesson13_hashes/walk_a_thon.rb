# https://github.com/Ada-Developers-Academy/jump-start/blob/master/learning-to-code/hashes/assignments/walkathon.md

number_of_walkers = 5

# Print introduction.
puts "Welcome to Mariya's Walk-A-Thon Tracker!"
puts "Our goal is to raise money."
puts "Enter the earning goal for this event:"

# Gather walk-a-thon parameters.
# Use floats to enable change (currency).
goal = gets.chomp.to_f
puts "Enter the amount earned per lap (per person):"
amount = gets.chomp.to_f
walk_a_thon = {}

puts ""
puts "Please enter the number of laps completed by each person."

# Gather laps/contributions per walker.
count = 1
number_of_walkers.times do
  walker = "Walker #{count}"
  print "#{walker}? "
  laps = gets.chomp.to_i
  walk_a_thon[walker] = laps
  walker_contribution = laps * amount
  # Format dollar value with two decimal places.
  puts "   Earned $#{("%.2f") % walker_contribution}"
  count += 1
end

puts ""
# Calculate total amount and max laps.
total_amount = (walk_a_thon.each_value.sum) * amount
max_laps = walk_a_thon.values.max

# Find all the walkers who walked the max laps (as an array, in case of ties).
winners = []
walkers_array = walk_a_thon.sort_by {|key,value| value}
walkers_array.each do |walker|
  if walker[1] == max_laps
    winners << walker[0]
  end
end

# Print the results.
puts "The highest earning walker(s) is/are #{winners.join(" and ")}!"
puts "Total amount earned: $#{("%.2f") % total_amount}"

# Calcuate difference in money raised vs. goal.
if total_amount >= goal
  positive_difference = total_amount - goal
  puts "Hooray! You beat your goal by $#{("%.2f") % positive_difference}."
else
  negative_difference = goal - total_amount
  puts "You did not meet your goal by $#{("%.2f") % negative_difference}."
end
