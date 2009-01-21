#!c:/ruby/bin/ruby -w

require 'Account.rb'

def print_account_balances(*args)
  args.each do |account|
    printf("account.balance: [%d]\n", account.balance);
  end
  puts
end

a = Account.new(10000)
b = Account.new(0)
c = Account.new(0)
d = Account.new(0)
e = Account.new(0)

print_account_balances(a, b, c, d, e)

10000.times do
  
  [[a,b], [b,c], [c,d], [d,e], [e,a]].each do  |from_account, to_account|
    Thread.new {
      from_account.transfer(1, to_account)
    }
  end

end

print_account_balances(a, b, c, d, e)

