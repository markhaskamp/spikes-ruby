#!c:/ruby/bin/ruby -w

require 'Account.rb'

a = Account.new(10000)
b = Account.new(0)

printf("a.balance: [%d]\n", a.balance);
printf("b.balance: [%d]\n\n", b.balance);

5000.times do
  t1 = Thread.new {
    a.transfer(1, b)
    100.times do
    end
  }
  t2 = Thread.new {
    a.transfer(1,b)
    100.times do
    end
  }
end

printf("a.balance: [%d]\n", a.balance);
printf("b.balance: [%d]\n\n", b.balance);



