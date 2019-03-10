# https://github.com/Ada-Developers-Academy/jump-start/blob/master/learning-to-code/arrays/assignments/account-generator.md

# Total number of students to generate accounts for.
num_of_students = 5

# Initialized empty arrays here so we can access them outside the local block scope.
student_names = []
student_ids = []
last_three = []
student_emails = []

# Prompt user for student names & add them to student_names array.
num_of_students.times do
  puts "Please enter the student's first and last name:"
  name = gets.chomp.upcase
  student_names << name
end

# Generate unique ids between a range.
# Add these ids to student_ids.
until (student_ids.length == num_of_students)
  unique_id = rand(111111..999999)
  if !(student_ids.include?(unique_id))
    student_ids << unique_id
  end
end

# Convert student ids into strings and slice off the last 3 characters.
student_ids.each do |num|
  three_digits = num.to_s.slice(-3, 3)
  last_three << three_digits
end

# Generate email addresses for all students.
student_names.each_with_index do |name, index|
  split = name.split(" ")
  # Get all names except last name.
  first_names = split.slice(0, split.length - 1)
  # Gather first letter of first and middle name(s) - if applicable - and combine them to form first initial(s).
  first_init = ""
  first_names.each do |init|
    first_init << (init.slice(0))
  end
  last_name = split.last
  combined_name = first_init + last_name
  # Combined the names with last 3 numbers of student id at the corresponding index to make a unique email.
  student_emails << (combined_name + last_three[index] + "@adadevelopersacademy.org")
end

# Print out the results.
0.upto(student_names.length - 1) do |index|
  puts "#{student_names[index]}, #{student_ids[index]}, #{student_emails[index]}"
end
