# frozen_string_literal: true

# BEGIN
def get_same_parity(test)
  result = []
  result1 = []
  result = test.select { |num| num.even? }
  result1 = test.select { |x| x.odd? }

  a = test.select { |k| k % 2 }

  test.each_with_index do |n, i|
    if i == 0
      a = n % 2
    end
  end

  if test.nil?
    test
  end
  if a == 0
    result
  else
    result1
  end
  end
  # END
