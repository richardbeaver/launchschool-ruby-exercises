# ddaaiillyy ddoouubbllee

# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use `String#squeeze`
# or `String#squeeze!`.

# Examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

# ==============================================

=begin

input: string
output: input string with all consecutive duplicate characters removed

1.
- Create an empty string to build the result
- Add each character in input string to result if it is not equal to the last
  character in the result string

2.
- Create an empty string to build the result
- At each index of input string, add character to result if it is not equal
  to the character at index + 1

=end

# 1.
def crunch(string)
  result = ''

  string.each_char do |char|
    result += char unless char == result[-1]
  end

  result
end

# 2.
def crunch(string)
  result = ''

  (0...string.length).each do |idx|
    result += string[idx] if string[idx] != string[idx + 1]
  end

  result
end
