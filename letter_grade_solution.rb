# Commit 1 - Research

#  Answer the research questions below
  # 1. What happens when you make a method with no parameters then pass in an argument?

    # Unexpected number of arguments error(expect 0 got 1)

  # 2. What happens when you have a method that defines three parameters and you give it only 2 arguments when it is called?

    # Unexpected number of arguments error(expected 3 got 2)
    # 

  # 3. What are the errors you get?

    # 

  # 4. Can you get an error by adding or subtracting arguments when using the example code? If so, what errors do you get?

    # 

  # 5. What happens when you add more parameters before the splat parameter? Or after the splat parameter?

    #  

# Commit 2 - Pseudocode

# input: an array of integers
# output: a letter grade based on the mean of the grades

# Steps
# 1 - Take in a series of numbers
# 2 - Find the average of those numbers
# 3 - Give a letter grade based on that average

# Commit 3 - Initial Solution

require 'csv'

students = CSV.read("resources/grades.csv")

students.each do |student|
  name = student[0]
  grades = student.length - 1
  total_grades = 0
  index = 1

  grades.times do
    total_grades += student[index].to_i
  end

  avg = total_grades / grades
  letter_grade = ''

  if avg > 89
    if avg > 97 then letter_grade = 'A+' elsif avg < 93 then letter_grade = 'A-' else letter_grade = 'A' end
  elsif avg > 79
    if avg > 87 then letter_grade = 'B+' elsif avg < 83 then letter_grade = 'B-' else letter_grade = 'B' end
  elsif avg > 69
    if avg > 77 then letter_grade = 'C+' elsif avg < 73 then letter_grade = 'C-' else letter_grade = 'C' end
  elsif avg > 59
    if avg > 67 then letter_grade = 'D+' elsif avg < 63 then letter_grade = 'D-' else letter_grade = 'D' end
  else  
    letter_grade = 'F :('
  end
  
  puts "#{name} got an avgerage of #{avg} and recieved a #{letter_grade}"
end

# CSV.foreach("resources/grades.csv") do |row|
#     puts row 
# end 


# def calculate_letter_grade(*grades)
#   length = grades.length
#   total_grade = 0
#   grades.each do |grade|
#     total_grade += grade
#   end
#   avg = total_grade / length

#   if avg > 89
#     if avg > 97 then return 'A+' elsif avg < 93 then return 'A-' else return 'A' end
#   elsif avg > 79
#     if avg > 87 then return 'B+' elsif avg < 83 then return 'B-' else return 'B' end
#   elsif avg > 69
#     if avg > 77 then return 'C+' elsif avg < 73 then return 'C-' else return 'C' end
#   elsif avg > 59
#     if avg > 67 then return 'D+' elsif avg < 63 then return 'D-' else return 'D' end
#   else  
#     return 'F :('
#   end
# end


# # Commit 4 - Write Runner Code / Tests

# p calculate_letter_grade(65, 70, 75)
# p calculate_letter_grade(95, 98, 76, 94)
# p calculate_letter_grade(100)
# p calculate_letter_grade(85, 80, 90, 89, 87, 86, 82)
# p calculate_letter_grade(45, 75, 67, 85, 90)
# p calculate_letter_grade(45, 60, 67, 25, 0)



