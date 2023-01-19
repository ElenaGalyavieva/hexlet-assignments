# frozen_string_literal: true

# BEGIN
def anagramm_filter(test, arr)
  result = []
  a = []
  b = []
  b = test.chars.sort.join

  arr.each do |x|
    c = x.chars.sort.join

    if b == c
      result << x
    else
      result << a
    end
  end
  result.reject(&:empty?)
  end

# END
