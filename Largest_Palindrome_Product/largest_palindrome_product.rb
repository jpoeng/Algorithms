########### PROBLEM 4: LARGEST PALINDROME PRODUCT
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.


########### PSEUDOCODE ###########
# Input: 100..999
# Output: palindrome

# define a method 'find_palindrome' that takes a range as its input
#   set counter i = 0

#   add i to the first number in range and set it to variable 'first'
#   delete i from the last number in range and set it to variable 'last'
#   multiply 'first' by 'last' and set value to the variable 'test_value'
#   if 'palindrome?(test_value)' returns true
#     palindrome = test_value
#     return palindrome
#   else
#     i ++
#   end if
# end

# def a method 'palindrome?' that takes 'test_value' as its input
#   get the reverse order of 'test_value'
#   return true if 'test_value' equals the reverse of 'test_value'
# end

# set counter i=0


########### SOLUTION ###########
def palindrome?(test_value)
  test_value = test_value.to_s
  test_value == test_value.reverse
end

def find_palindrome(range)
  i = 0
  palindrome = []
  while i < (range.last-range.first)
    for x in range
      test_value = x * (range.last - i)
      if palindrome?(test_value)
        palindrome << test_value
      end
    end
    i = i + 1
  end
    return palindrome.sort.pop
end


########### DRIVER TESTS ###########
range = (100..999)
p find_palindrome(range)

