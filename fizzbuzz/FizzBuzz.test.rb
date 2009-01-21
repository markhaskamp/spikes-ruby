#!c:/ruby/bin/ruby -w

require 'FizzBuzz.rb'
require 'test/unit'

class FizzBuzz_test < Test::Unit::TestCase

  def test_When_not_multiple_of_3_or_5_then_print_number
    assert_equal(1, FizzBuzz.getFBVal(1))
    assert_equal(2, FizzBuzz.getFBVal(2))
    assert_equal(4, FizzBuzz.getFBVal(4))
    assert_equal(7, FizzBuzz.getFBVal(7))
    assert_equal(98, FizzBuzz.getFBVal(98))
  end

  def test_When_multiple_of_3_then_print_fuzz
    assert_equal('fizz', FizzBuzz.getFBVal(3))
    assert_equal('fizz', FizzBuzz.getFBVal(6))
    assert_equal('fizz', FizzBuzz.getFBVal(99))
  end

  def test_When_multiple_of_5_then_print_buzz
    assert_equal('buzz', FizzBuzz.getFBVal(5))
    assert_equal('buzz', FizzBuzz.getFBVal(100))
    assert_equal('buzz', FizzBuzz.getFBVal(10))
    assert_equal('buzz', FizzBuzz.getFBVal(20))
  end


  def test_When_multiple_of_3_AND_5_then_print_fizzbuzz
    assert_equal('fizzbuzz', FizzBuzz.getFBVal(15))
    assert_equal('fizzbuzz', FizzBuzz.getFBVal(30))
    assert_equal('fizzbuzz', FizzBuzz.getFBVal(45))
    assert_equal('fizzbuzz', FizzBuzz.getFBVal(60))
    assert_equal('fizzbuzz', FizzBuzz.getFBVal(75))
    assert_equal('fizzbuzz', FizzBuzz.getFBVal(90))
  end

end
