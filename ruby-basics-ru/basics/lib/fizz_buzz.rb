# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return if start > stop

  result = []
  while start <= stop
    result << get_string_value(start)
    start += 1
  end
  result.join(' ')
end

def get_string_value(number)
  divisible_by15 = (number % 15).zero?
  divisible_by3 = (number % 3).zero?
  divisible_by5 = (number % 5).zero?
  if divisible_by15
    'FizzBuzz'
  elsif divisible_by3
    'Fizz'
  elsif divisible_by5
    'Buzz'
  else
    number.to_s
  end
end
# END