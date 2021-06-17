# frozen_string_literal: true

require 'test/unit'
require_relative './string'

# Tests for String class extension
class StringTest < Test::Unit::TestCase
  def test_letter_check_true_with_alpha_character
    assert_equal true, 'Q'.letter?, 'letter? should return true if string contains letter'
  end

  def test_letter_check_false_with_numeric_character
    assert_equal false, '7'.letter?, 'letter? should return false if string contains number'
  end

  def test_letter_check_false_with_special_character
    assert_equal false, '@'.letter?, 'letter? should return false if string contains special character'
  end
end
