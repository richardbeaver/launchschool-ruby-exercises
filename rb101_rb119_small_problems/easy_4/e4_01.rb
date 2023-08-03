# Short Long Short

# Write a method that takes two strings as arguments, determines the longest
# of the two strings, and then returns the result of concatenating the shorter
# string, the longer string, and the shorter string once again. You may assume
# that the strings are of different lengths.

# Examples:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

# ==============================================

# 1. Compare lengths explicitly
def short_long_short(string1, string2)
  if string1.length <= string2.length
    string1 + string2 + string1
  else
    string2 + string1 + string2
  end
end

# 2. Place input strings in an array and sort by string length so that shorter
#    string is first
def short_long_short(string1, string2)
  strings = [string1, string2].sort { |a, b| a.length <=> b.length }
  strings[0] + strings[1] + strings[0]
end
