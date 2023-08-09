# Clean up the words

# Given a string that consists of some words (all lowercased) and an
# assortment of non-alphabetic characters, write a method that returns that
# string with all of the non-alphabetic characters replaced by spaces. If
# one or more non-alphabetic characters occur in a row, you should only have
# one space in the result (the result should never have consecutive spaces).

# Example:
cleanup("---what's my +*& line?") == ' what s my line '

# ==============================================

=begin

input: string of lowercase letters and non-alphabetic characters
output: input string with all non-alphabetic characters replaced by a
        space / multiple spaces

# 1.
- Create a result string, starting as empty
- For each character:
  - If character is alphabetic:
    - Add to result string
  - If not alphabetic and last character in `result` is not a space:
    - Add a space to result string
- Return result string

# 2.
- Use String methods `tr` and `squeeze` to replace all non-alphabetic
  characters and then remove all consecutive spaces

# 3.
- Can use `tr_s` method to do the replacing and squeezing in one step

# 4.
- Can use `String#gsub` with a regex instead of `tr`/`tr_s`

=end

# 1.
def cleanup(string)
  result = ''

  string.each_char do |char|
    if alphabetic?(char)
      result += char
    else
      result += ' ' unless result[-1] == ' '
    end
  end

  result
end

def alphabetic?(char)
  ('a'..'z').include? char
end

# 2.
def cleanup(string)
  string.tr('^a-z', ' ').squeeze(' ')
end

# 3.
def cleanup(string)
  string.tr_s('^a-z', ' ')
end

# 4.
def cleanup(string)
  string.gsub(/[^a-z]/, ' ').squeeze(' ')
end
