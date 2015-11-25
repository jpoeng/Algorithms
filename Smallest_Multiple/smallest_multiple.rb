########### PROBLEM 5: SMALLEST MULTIPLE
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


########### PSEUDOCODE ###########
# Find the prime factors for each number and store in an array
# Array should not contain duplicate elements
# Multiply elements in array and return the product


########### SOLUTION ###########
def is_prime?(num)
  return true if num == 1 || num == 2
  return false if num % 2 == 0
  divisor = 3
  while divisor <= Math::sqrt(num)
    return false if num % divisor == 0
    divisor += 2
  end
  true
end

def prime_factors(num)
  primes = []
  divisors = (2..num)
  divisors.each do |divisor|
    if num % divisor == 0
      primes << divisor if is_prime?(divisor) == true
      num = num / divisor
      prime_factors(num)
    end
  end
  primes
end

def smallest_multiple(range)
  multiples =[]
  range.each do |num|
    multiples.concat(prime_factors(num))
  end
  sum = 1
  multiples.uniq!
  multiples.each do |x|
    sum = sum*x
  end
  sum
end

########### DRIVER TESTS ###########
p prime_factors(6)
p prime_factors(7)
p prime_factors(9)
p prime_factors(25)
p smallest_multiple([15,6,10]) == 30
# p smallest_multiple(1..10)