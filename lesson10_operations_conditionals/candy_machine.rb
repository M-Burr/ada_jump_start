# https://github.com/Ada-Developers-Academy/jump-start/tree/master/learning-to-code/programming-expressions#candy-machine-assignment

# Assign variables for different items.
tw = "A: $1.00, Twix"
pbc = "B: $3.50, Peanut Butter cups"
fr = "C: $20.00, Frans"
cof = "D: $5.98 Espresso"
wine = "E: 12.50 Rose"

# Print greeting.
puts "Welcome to Mariya's Candy and Drinks Machine!"
puts ""
puts ""

# Get user's amount and convert to a float.
print "How much money would you like to spend? $"
money = gets.chomp.to_f
puts ""

# Make sure user has some money to spend.
if money <= 0
  puts "You need to have some money to spare."
  print "How much money would you like to spend? $"
  money = gets.chomp.to_f
else
  # "%.2f" converts to a string with 2 decimal points.
  puts "#{("%.2f") % money}, is that all?"
  puts "Well, lemme tell ya what we got here:"
  puts tw
  puts pbc
  puts fr
  puts cof
  puts wine
end

# Prompts user for choice selection.
# Convert user input to upcase for case insensitive comparisons.
puts "What would you like?"
choice = gets.chomp.upcase

# Handle user's input.
if choice == "A"
  if (money >= 1.00)
    puts "Great choice. Your change is $#{("%.2f") % (money - 1.00)}"
  else
     puts "You don't have enough money for that item."
  end
elsif choice == "B"
  if (money >= 3.50)
    puts "Great choice. Your change is $#{("%.2f") % (money - 3.50)}."
  else
    puts "You don't have enough money for that item."
  end
elsif choice == "C"
  if (money >= 20.00)
    puts "Great choice. Your change is $#{("%.2f") % (money - 20.00)}."
  else
    puts "You don't have enough money for that item"
  end
elsif choice == "D"
  if (money >= 5.98)
    puts "Great choice. Your change is $#{("%.2f") % (money - 5.98)}."
  else
    puts "You don't have enough money for that item."
  end
elsif choice == "E"
  if (money >= 12.50)
    puts "Great choice. Your change is #{("%.2f") % (money - 12.50)}."
  else
    puts "You don't have enough money for this item."
  end
else
  puts "Invalid selection."
end
