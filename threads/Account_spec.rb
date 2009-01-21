#!/c:/ruby/bin/ruby -w

require 'Account.rb'

describe Account do
  before do
    @account = Account.new(nil)
  end

  it "when instantiated with nil, balance will equal 0" do
    a = Account.new(nil)
    a.balance.should eql(0)
    a = nil
  end

  it "when instantiated with number, then balance will equal that number(100, 32800, -100)" do
    a = Account.new(100)
    a.balance.should eql(100)

    b = Account.new(32800)
    b.balance.should eql(32800)

    c = Account.new(-100)
    c.balance.should eql(-100)
  end

  it "when calling debit with number, then will add that number to balance" do
    a = Account.new(100)
    a.debit(1)
    a.balance.should eql(101)
  end

  it "when calling credit with number,then will subtract that number from balance" do
    a = Account.new(100)
    a.credit(1)
    a.balance.should eql(99)
  end

  it "when calling transfer with number and account, will move number to account" do
    a = Account.new(100)
    b = Account.new(100)
    a.transfer(1,b)
    a.balance.should eql(99)
    b.balance.should eql(101)

    c = Account.new(32766)
    d = Account.new(-32767)
    d.transfer(1, c)
    c.balance.should eql(32767)
    d.balance.should eql(-32768)
  end

  it "when calling debit with an invalid number, will throw an ArgumentError exception" do
    lambda {@account.debit('foo')}.should raise_error(ArgumentError)
  end

  it "when calling credit with an invalid number, will throw an ArgumentError exception" do
    lambda {@account.credit('foo')}.should raise_error(ArgumentError)
  end

  it "when calling transfer with an invalid number, will throw an ArgumentError exception" do
    @account.debit(100)
    foo = Account.new(0)
    lambda {@account.transfer('foo', foo)}.should raise_error(ArgumentError)
  end
end

  
