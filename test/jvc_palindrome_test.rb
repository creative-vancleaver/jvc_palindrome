require "test_helper"

class JvcPalindromeTest < Minitest::Test

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_plain_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_punctuated_palindrome
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_nonpalindrome
    refute 12345.palindrome?
  end

  def test_integer_nonpalindrome
    assert 12321.palindrome?
  end

  # def test_letters
  #   assert_equal "MadamImAdam", "Madam, I'm Adam.".letters
  # end

end