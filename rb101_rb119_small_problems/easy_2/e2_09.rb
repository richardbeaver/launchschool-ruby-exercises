# String Assignment

# Take a look at the following code:

# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name

# What does this code print out? Think about it for a moment before continuing.

# If you said that code printed:
# Alice
# Bob

# you are 100% correct, and the answer should come as no surprise. Now, let's
# look at something a bit different:

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

# What does this print out? Can you explain these results?

# ==============================================

# BOB
# BOB

# Here, we are not reassigning the `name` variable. Since `upcase!` is a
# destructive method, we are modifying the string that `name` refers to.
# `save_name` refers to the same string as `name`, so when we modify that
# string, the change is reflected in the `save_name` variable as well.
