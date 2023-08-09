# Spin Me Around In Circles

# You are given a method named spin_me that takes a string as an argument
# and returns a string that contains the same words, but with each word's
# characters reversed. Given the method's implementation, will the returned
# string be the same object as the one passed in as an argument or a
# different object?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(' ')
end

spin_me('hello world') # "olleh dlrow"

# ==============================================

=begin

The returned object will be a different object than the one passed as an
argument. `.split` creates a new array of strings, and `.join` creates a new
string by combining array elements.

This newly created joined string is what is returned, which is a different
object than the original.

=end
