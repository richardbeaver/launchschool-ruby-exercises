# After Midnight (Part 2)

# As seen in the previous exercise, the time of day can be represented as
# the number of minutes before or after midnight. If the number of minutes
# is positive, the time is after midnight. If the number of minutes is
# negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and
# return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Examples:
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

# ==============================================

=begin

input: time in a 24-hour format string
output: time after / before midnight based on given time

`after_midnight`
- Get hour and minute values as integers from input time string
- Return (hour value * minutes per hour + minute value) modulo minutes per day

`beforeMidnight`
- Use input time to get what would be the number of minutes after midnight
  for that time
- Return (minutes per day - minutes after midnight) modulo minutes per day

=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(time_string)
  hour, minute = time_string.split(':').map(&:to_i)
  (hour * MINUTES_PER_HOUR + minute) % MINUTES_PER_DAY
end

def before_midnight(time)
  minutes_after_midnight = after_midnight(time)
  (MINUTES_PER_DAY - minutes_after_midnight) % MINUTES_PER_DAY
end
