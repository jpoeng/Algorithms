=begin

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

#==============================================================================================
Pseudocode:
Input: 600851475143
Output: Largest prime factor

Create a divisor starting at 2
WHILE result is less than or equal to input
  divide input by divisor to get result
  IF result is divisible by divisor
    divide result by divisor
    IF result is divisible by divisor
      divide result by divisor
    END IF
  ELSE
    increment divisor
  END IF
END WHILE
=end
#==============================================================================================
# Initial Solution

n = 600851475143

#==============================================================================================
# Driver Tests
