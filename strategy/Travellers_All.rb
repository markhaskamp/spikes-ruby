require 'SayHello.mod.rb'

class Traveller

  def go
    self.travel()
  end

  def hello
    hi
  end

  def hi
    "whatever"
  end

end
class Traveller_Cowboy < Traveller
  include Howdy

  def travel
    'mosey'
  end
end

class Traveller_Horse < Traveller
  include NoHello

  def travel
    'gallop'
  end
end

class Traveller_Snake < Traveller
  include NoHello

  def travel
    'slither'
  end
end

class Traveller_Girl < Traveller
  include Howdy

  def travel
    'skip'
  end
end
