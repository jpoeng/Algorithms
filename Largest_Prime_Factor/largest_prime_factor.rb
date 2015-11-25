########### PROBLEM 3: Largest Prime Factor
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?


########### SOLUTION ###########
def prime?(num)
  return true if num == 1 || num == 2
  return false if num % 2 == 0

  divisor = 3
  while divisor <= num**0.5
    return false if num % divisor == 0
    divisor += 2
  end
  true
end

def largest_prime(num)
  ceil = (num**0.5).floor
  divisors = (2..ceil)

  primes = []
  divisors.each do |x|
    if num % x == 0
      if prime?(x) == true
        primes << x
      end
      num = num / x
    end
  end
  primes.max
end


########### DRIVER TESTS ###########
p prime?(5) == true
p prime?(7) == true
p prime?(13) == true
p prime?(29) == true
p prime?(6857) == true
p largest_prime(600851475143) == 6857
p largest_prime(13195) == 29
p largest_prime(200) == 5
p prime?(25) == false
p largest_prime(1000) == 5