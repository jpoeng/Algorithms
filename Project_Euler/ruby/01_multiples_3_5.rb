# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

# Pseudocode
# input: list of numbers from 1 through 100
# output: sum of numbers that are divisiby by 3 or 5

# Create an empty container object called 'multiples'
# FOR each integer in list
#   IF integer is divisible by 3 or 5
#     add the number to 'multiples'
#   END IF
# END FOR

# return sum of multiples

# Initial Solution
def sum_multiples_of_threes_fives(range)
  multiples=[]
  for i in range
    if i%3==0 || i%5==0
      multiples<<i
    end
  end

  sum = 0
  multiples.each do |num|
    sum+=num
  end
  p sum
end

sum_multiples_of_threes_fives(1...1000)

# Refactored Solution
def sum_multiples_of_threes_fives(range)
  multiples=[]
  for i in range
    multiples<<i if i%3==0 || i%5==0
  end

  multiples.inject { |sum, num| sum + num }
end

p sum_multiples_of_threes_fives(1...1000)