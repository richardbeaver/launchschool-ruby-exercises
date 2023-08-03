# Multiples of 3 and 5

# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples. For
# instance, if the supplied number is 20 , the result should be 98
# (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Examples
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

# ==============================================

=begin

- Create an array of all numbers in (1..input number)
- Filter array to numbers that are multiples of 3 or 5
- Sum resulting array

=end

def multisum(number)
  multiples = Array(1..number).filter do |num|
    (num % 3).zero? || (num % 5).zero?
  end
  multiples.sum
end
