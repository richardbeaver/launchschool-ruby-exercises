# Odd Numbers

# Print all odd numbers from 1 to 99, inclusive, to the console, with each
# number on a separate line.

# ==============================================

(1..99).each do |i|
  puts i if i.odd?
end

# =====

1.step(99, 2) { |i| puts i }

# =====

1.upto(99) { |i| puts i if i.odd? }

# =====

Array(1..99).each do |i|
  puts i if i.odd?
end

# ====

number = 1
while number <= 99
  puts number
  number += 2
end
