# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN

def build_query_string(page)
  query_string = []
  result = ''
  page.sort.each do |key, value|
    query_string << "#{key}=#{value}"
    result = query_string.join('&')
  end
  result
  end
# END
# rubocop:enable Style/For
