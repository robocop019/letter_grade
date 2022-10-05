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

def calculate_letter_grade(*grades)
  length = grades.length
  total_grade = 0
  grades.each do |grade|
    total_grade += grade
  end
  avg = total_grade / length
  
  if avg > 89
    return 'A'
  elsif avg > 79
      return 'B'
  elsif avg > 69
    return 'C'
  elsif avg > 59
    return 'D'
  else  
    return 'F :('
  end
end

# Commit 5 - Refactor Solution



# Commit 4 - Write Runner Code / Tests

p calculate_letter_grade(65, 70, 75)
p calculate_letter_grade(95, 98, 76, 94)
p calculate_letter_grade(100)
p calculate_letter_grade(85, 80, 90, 89, 87, 86, 82)
p calculate_letter_grade(45, 75, 67, 85, 90)
p calculate_letter_grade(45, 60, 67, 25, 0)



