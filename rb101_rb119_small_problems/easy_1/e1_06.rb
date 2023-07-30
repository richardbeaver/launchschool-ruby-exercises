# Right Triangles

# Write a method that takes a positive integer, n, as an argument, and
# displays a right triangle whose sides each have n stars. The hypotenuse of
# the triangle (the diagonal side in the images below) should have one end
# at the lower-left of the triangle, and the other end at the upper-right.

# Examples:

# triangle(5)
#     *
#    **
#   ***
#  ****
# *****

# triangle(9)
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

# ==============================================

# Number of stars each line: 1 to `side_length`
# Number of spaces each line: `side_length` - stars

# 1. Reassigning `spaces` based on iteration number
def triangle(side_length)
  (1..side_length).each do |stars|
    spaces = side_length - stars
    puts("#{' ' * spaces}#{'*' * stars}")
  end
end

# 2. Incrementing and decrementing `stars` and `spaces` on each iteration
def triangle2(side_length)
  stars = 1
  spaces = side_length - 1

  side_length.times do
    puts((' ' * spaces) + ('*' * stars))
    stars += 1
    spaces -= 1
  end
end
