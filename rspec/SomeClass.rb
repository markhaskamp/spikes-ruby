# simple class that holds a small number of unrelated elements and methods.
# purpose of this class is to provide enough functionality to allow for successful
#  run of rspec methods in SomeClass.spec.rb

class SomeClass
  attr_reader :foo, :thisvar

  def initialize
    @thisvar = 0
    @foo = 'foo'
  end

  def double(n)
    raise ArgumentError if n =~ /\w/
    n*2
  end

  def is_positive(n)
    (n > 0)
  end

  def nothing_from_nothing_is?
    nil
  end

  def change_thisvar
    @thisvar += 1
  end

  def setIt(s)
    @foo = s
  end


end
