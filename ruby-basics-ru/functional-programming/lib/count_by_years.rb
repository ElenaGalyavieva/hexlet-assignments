# frozen_string_literal: true

# BEGIN
def count_by_years(users)
  x = users.filter { |u| u[:gender] == 'male' }
  y = x.map { |u| u[:birthday][0, 4] }
  y.reduce({}) do |acc, year|
    acc[year] ||= 0
    acc[year] += 1
    acc
  end
  end
# END
