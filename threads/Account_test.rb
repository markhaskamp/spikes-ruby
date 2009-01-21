#!c:/ruby/bin/ruby -w

require 'Account.rb'
require 'test/unit'

class TestAccount < Test::Unit::TestCase

  def test_starting_balance
    assert_equal(0, Account.new(nil).balance)
    
    assert_equal(100,   Account.new(100).balance)
    assert_equal(32800, Account.new(32800).balance)
    assert_equal(-100,  Account.new(-100).balance)
  end

  def test_debit
    a = Account.new(100)
    a.debit(1)
    assert_equal(101, a.balance)
  end

  def test_credit
    a = Account.new(100)
    a.credit(1)
    assert_equal(99, a.balance)
  end

  def test_transfer
    a = Account.new(100)
    b = Account.new(100)
    a.transfer(1, b)
    assert_equal(99, a.balance)
    assert_equal(101, b.balance)

    c = Account.new(32766)
    d = Account.new(-32767)
    d.transfer(1, c)
    assert_equal(32767, c.balance)
    assert_equal(-32768, d.balance)
  end

  def test_When_calling_ctor_with_NaN_then_will_throw_Argument_exception
    assert_raise ArgumentError do
      a = Account.new('foo')
    end
  end

  def test_When_calling_debit_with_NaN_then_will_throw_ArguemntError_exception
    a = Account.new(100)

    assert_raise ArgumentError do
      a.debit('foo')
    end
  end

  def test_When_calling_credit_with_NaN_then_will_throw_ArguemntError_exception
    a = Account.new(100)

    assert_raise ArgumentError do
      a.credit('foo')
    end
  end

  def test_When_calling_transfer_with_NaN_then_will_throw_ArguemntError_exception
    a = Account.new(100)
    b = Account.new(100)

    assert_raise ArgumentError do
      a.transfer('foo', b)
    end
  end

end

