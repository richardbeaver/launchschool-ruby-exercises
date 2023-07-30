# Bannerizer

# Write a method that will take a short line of text, and print it within a box.
# You may assume that the input will always fit in your terminal window.

# Example:

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# ==============================================

def print_in_box(message)
  horizontal_line = "+-#{'-' * message.length}-+"
  empty_line = "| #{' ' * message.length} |"

  puts horizontal_line
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_line
end
