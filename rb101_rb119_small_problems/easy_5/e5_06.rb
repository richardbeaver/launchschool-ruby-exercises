# Letter Counter (Part 1)

# Write a method that takes a string with one or more space separated words
# and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Examples
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# ==============================================

=begin

input: string of words
output: hash containing the occurrence counts of words of each length

- A word is any grouping of characters that does not contain a space
- Punctuation is included in the length of a word

# 1.
- Create hash with default value of 0
- Split input by spaces into words
- For each word:
  - Get length of the word
  - Increment value of entry with length as its key by 1
- Return resulting hash

# 2.
- Can use `each_with_object` method to construct the resulting hash

=end

# 1.
def word_sizes(string)
  counts = Hash.new(0)
  string.split.each do |word|
    counts[word.length] += 1
  end
  counts
end

# 2.
def word_sizes(string)
  string.split.each_with_object(Hash.new(0)) do |word, counts|
    counts[word.length] += 1
  end
end
