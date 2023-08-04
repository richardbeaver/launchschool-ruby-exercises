# Get Middle Character

# Write a method that takes a non-empty string argument, and returns the
# middle character or characters of the argument. If the argument has an odd
# length, you should return exactly one character. If the argument has an
# even length, you should return exactly two characters.

# Examples:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

# ==============================================

def center_of(string)
  middle_idx = (string.size / 2.0).ceil - 1

  if string.size.odd?
    string[middle_idx]
  else
    string[middle_idx, 2]
  end
end
