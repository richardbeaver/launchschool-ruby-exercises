# After Midnight (Part 1)

# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.

# You may not use ruby's Date and Time classes.

# Examples:
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

# ==============================================

=begin

input: number of minutes around midnight
output: time in `hh:mm` format

- If input is negative, add to it the number of minutes per day until it
  is positive
  - Makes sure value is positive before using with modulo
- Reassign input to remainder of input minutes / minutes per day
- Use division and remainder of input minutes with minutes per hour to get
  hour and minute values for output time

=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(minutes)
  minutes += MINUTES_PER_DAY while minutes.negative?
  minutes %= MINUTES_PER_DAY

  hour, minute = minutes.divmod(MINUTES_PER_HOUR)

  # Can use `String#rjust` method to format output
  # "#{hour.to_s.rjust(2, '0')}:#{minute.to_s.rjust(2, '0')}"

  # Or use `Kernel#format` method
  format('%<hour>02d:%<minute>02d', hour: hour, minute: minute)
end
