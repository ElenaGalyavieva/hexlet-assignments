# frozen_string_literal: true

# rubocop:disable Style/For

  # BEGIN
def make_censored(text, stop_words)
  text1 = []
  text1 << text
  result = []
  text1 = text.split(' ')
  text1.each do |n|
      if stop_words.include? n
        result << '$#%!'
      else
        result << n
      end
             end
  result.join(' ')
end
  #END
# rubocop:enable Style/For
