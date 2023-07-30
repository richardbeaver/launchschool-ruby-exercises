# Even Numbers

# Print all even numbers from 1 to 99, inclusive, to the console, with each
# number on a separate line.

# ==============================================

(2..98).each { |i| puts i if i.even? }

# =====

2.step(98, 2) { |i| puts i }

# =====

2.upto(98) { |i| puts i if i.even? }

# =====

Array(2..98).each do |i|
  puts i if i.even?
end

# ====

number = 2
while number <= 98
  puts number
  number += 2
end
