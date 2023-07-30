# Always Return Negative

# Write a method that takes a number as an argument. If the argument is a
# positive number, return the negative of that number. If the number is 0 or
# negative, return the original number.

# Examples:
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

# ==============================================

def negative(number)
  number.abs * -1
end

# Or:

def negative(number)
  number.positive? ? -number : number
end
