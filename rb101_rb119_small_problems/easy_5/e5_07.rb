# Letter Counter (Part 2)

# Modify the method from the previous exercise to exclude non-letters when
# determining word size. For instance, the length of "it's" is 3, not 4.

# Examples
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

# ==============================================

=begin

- Same as last exercise, except non-letters do not count towards a words length
- Instead of using a word string's `length` property, we can use the
  `String#count` method to count only letters
  - Could also instead use the `String#delete` method to remove non-letter
    characters before accessing the `length` property of a word

=end

# 1.
def word_sizes(string)
  counts = Hash.new(0)
  string.split.each do |word|
    counts[word.count('a-zA-Z')] += 1
  end
  counts
end

# 2.
def word_sizes(string)
  string.split.each_with_object(Hash.new(0)) do |word, counts|
    counts[word.count('a-zA-Z')] += 1
  end
end
