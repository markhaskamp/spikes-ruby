#!/c:/ruby/bin/ruby -w

require 'FizzBuzz.rb'

describe FizzBuzz do

  it "When input number is not a multiple of 3 or 5, then return the input number" do
    FizzBuzz.getFBVal(1).should eql(1)
    FizzBuzz.getFBVal(2).should eql(2)
    FizzBuzz.getFBVal(4).should eql(4)
    FizzBuzz.getFBVal(7).should eql(7)
    FizzBuzz.getFBVal(98).should eql(98)
  end

  it "When input number is multiple of 3 and not 5, then return 'fizz'" do
    FizzBuzz.getFBVal(3).should eql('fizz')
    FizzBuzz.getFBVal(6).should eql('fizz')
    FizzBuzz.getFBVal(99).should eql('fizz')
  end

  it "When input number is multiple of 5 and not 3, then return 'buzz'" do
    FizzBuzz.getFBVal(5).should eql('buzz')
    FizzBuzz.getFBVal(100).should eql('buzz')
  end

  it "When input number is multiple of 3 and 5, then return 'fizzbuzz'" do
    FizzBuzz.getFBVal(15).should eql('fizzbuzz')
    FizzBuzz.getFBVal(30).should eql('fizzbuzz')
  end
    
end   # describe FizzBuzz
