# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_initialize
    assert_nil nil
  end
  def test_pop!
    assert_nil nil
  end
  def test_push!
    element = 'ruby'
    assert [element]
  end
  def test_empty?
    assert_empty []
    assert_empty ''
    assert_empty({})
  end
  def test_to_a

  end
  def test_clear!

  end
  def test_size

  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
