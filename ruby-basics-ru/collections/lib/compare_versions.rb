# frozen_string_literal: true

# BEGIN
def compare_versions(version1, version2)
  if Gem::Version.new(version1) > Gem::Version.new(version2)
    1
  elsif Gem::Version.new(version1) < Gem::Version.new(version2)
    -1
  else Gem::Version.new(version1) == Gem::Version.new(version2)
  0
  end

  end


  # END
