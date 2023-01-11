# frozen_string_literal: true

# BEGIN
def reverse(text)
  count = ''
  text.each_char do |c|
    count = "#{c}#{count}"
  end
  count
end
# END
