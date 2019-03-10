# https://github.com/Ada-Developers-Academy/jump-start/blob/master/learning-to-code/hashes/assignments/account-generator-cont.md

num_of_students = 5

# Declared empty array.
student_data = []

# Generate student data.
num_of_students.times do
  puts ""
  puts "Please enter student's first and last name:"
  # #upcase method to control for case sensitivity.
  name = gets.chomp.upcase
  id = rand(111111..999999).to_s
  # Loop will continue until a unique (non-repeating) ID is generated.
  # ID number turned into string to enable slice method later.
  while student_data.map {|ids| ids[:id]}.include?(id)
    id = rand(111111..999999).to_s
  end
  last_three = id.slice(-3,3)
  name_split = name.split(" ")
  # Gather all first and middle name(s) when applicable.
  first_names = name_split.slice(0, name_split.length - 1)
  # Gathers first initial of all applicable first and middle name(s).
  first_init = ""
  first_names.each do |initials|
    first_init << initials.slice(0)
  end
  last_name = name_split.last
  combined_name = first_init + last_name
  email = "#{combined_name}#{last_three}@adadevelopersacademy.org"
  # Convert student data into a hash.
  student = {
    name: name,
    id: id,
    email: email
  }
  student_data << student
end

# Print out results.
puts ""
student_data.each do |student_hash|
  puts "Name:#{student_hash[:name]}, ID: #{student_hash[:id]}, Email: #{student_hash[:email]}."
end
