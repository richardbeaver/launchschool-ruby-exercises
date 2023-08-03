# Running Totals

# Write a method that takes an Array of numbers, and returns an Array with
# the same number of elements, and each element has the running total from
# the original Array.

# Examples:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

# ==============================================

=begin

input: array of numbers
output: array with running total of original numbers at each index

1.
- Start with a total of 0 and an empty result array
- For each number in original array:
  - Add to total
  - Push total to the resulting array
- Return resulting array

2.
- Use built-in `reduce` method, an empty array as the starting accumulator
- On each iteration, append the iteration number if it's the first one, or the
  sum of that number with the last total (last number in accumulator)

=end

# 1.
def running_total(numbers)
  result = []
  total = 0

  numbers.each do |num|
    total += num
    result << total
  end

  result
end

# 2.
def running_total(numbers)
  numbers.reduce([]) do |running_totals, num|
    if running_totals.empty?
      running_totals.push(num)
    else
      running_totals.push(num + running_totals[-1])
    end
  end
end
