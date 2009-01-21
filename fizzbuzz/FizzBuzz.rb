
class FizzBuzz

  def FizzBuzz.getFBVal(n)

    matchCount = 0
    matchCount += 1 if (n%3 == 0)
    matchCount += 2 if (n%5 == 0)

    { 0=>n, 1=>'fizz', 2=>'buzz', 3=>'fizzbuzz' }[matchCount]

  end

end
