# Letter Swap

# Given a string of words separated by spaces, write a method that takes
# this string of words and returns a string in which the first and last
# letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the
# string will always contain at least one word. You may also assume that each
# string contains nothing but words and spaces.

# Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

# ==============================================

=begin

input: string of words and spaces
output: copy of input string with first and last characters of every
        word swapped

- Split input string into array of words
- Swap first and last characters of each word
- Join resulting array with spaces

=end

def swap(string)
  swapped_letters = string.split.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  swapped_letters.join(' ')
end
