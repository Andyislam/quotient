require "minitest/autorun"
require "pry"

class Quotient

  def self.return_quotient x, y
    #example of function that returns quotient of 2 numbers without using the / or * operators
    if x > y
      divident = x
      divisor = y
    else
      divident = y
      divisor = x
    end

    quotient = 0
    total = 0
    loop do 
      total = total + divisor
      quotient = quotient + 1
      break if total > divident
    end 

    return quotient - 1

  end

end

class QuotientTest < Minitest::Test

  def test_3_6_returns_2
    assert_equal 2, Quotient.return_quotient(3, 6)
  end


  def test_50_100_returns_2
    assert_equal 2, Quotient.return_quotient(50, 100)
  end


  def test_100_50_returns_2
    assert_equal 2, Quotient.return_quotient(100, 50)
  end


  def test_7_15_returns_2
    assert_equal 2, Quotient.return_quotient(7, 15)
  end
 
end
