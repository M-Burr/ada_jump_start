# https://github.com/Ada-Developers-Academy/jump-start/blob/master/learning-to-code/iterators/assignments/election.md

# Introduction message for users.
puts "Welcome to my voting election program."
puts "The election candidates are: Charlie Brown, Bugs Bunny, and Patrick Star."

# Initializing count variables for tallying up votes.
charlie_count = 0
bugs_count = 0
patrick_count = 0

# Times loop used to get user's input 10 times.
# When user votes for a specific candidate, it is added to their count variable.
10.times do
puts "Who would you like to vote for?"
vote = gets.chomp.upcase
  if vote == "CHARLIE BROWN"
    charlie_count += 1
  elsif vote == "BUGS BUNNY"
    bugs_count += 1
  elsif vote == "PATRICK STAR"
    patrick_count += 1
  else
    puts "That is not a valid selection."
  end
end

# Vote summary.
puts "Charlie - #{charlie_count} vote(s)"
puts "Bugs - #{bugs_count} vote(s)"
puts "Patrick - #{patrick_count} vote(s)"


# Conditional statements to calculate the winner of this election.
if (charlie_count > bugs_count) && (charlie_count > patrick_count)
  puts "Charlie Brown is the winner!"
elsif (bugs_count > charlie_count) && (bugs_count > patrick_count)
  puts "Bugs Bunny is the winner!"
else
  puts "Patrick Star is the winner!"
end
