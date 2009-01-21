#!/C:/ruby/bin/ruby -w

require 'FizzBuzz.rb'

(1..100).each do |i|
  printf("%d. %s\n", i, FizzBuzz.getFBVal(i))
end
