#!c:/ruby/bin/ruby -w

require 'thread'

class Account
  attr_accessor :balance

  # -------------------------------------------------- initialize
  def initialize(starting_balance)
    validate_arg_as_currency(starting_balance)
    starting_balance = 0 unless starting_balance

    @balance = starting_balance
    @lock = Mutex.new
  end

  # -------------------------------------------------- debit
  def debit(amount)
    validate_arg_as_currency(amount)
    @lock.synchronize {
      @balance += amount
    }
  end

  # -------------------------------------------------- credit
  def credit(amount)
    validate_arg_as_currency(amount)
    @lock.synchronize {
      @balance -= amount
    }
  end

  # -------------------------------------------------- transfer
  def transfer(amount, to_account)
    validate_arg_as_currency(amount)
      self.credit(amount)
      to_account.debit(amount)
  end

  # -------------------------------------------------- validate_arg_as_currency
  def validate_arg_as_currency(balance_number)
    raise ArgumentError if balance_number =~ /\D/
  end

    
end

