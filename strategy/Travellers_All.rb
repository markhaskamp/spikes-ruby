require 'SayHello.mod.rb'

class Traveller

  def Traveller.create(sym)
    case sym
    when :cowboy then Traveller_Cowboy.new
    when :girl   then Traveller_Girl.new
    when :snake  then Traveller_Snake.new
    when :horse  then Traveller_Horse.new
    else nil
    end

  end

  def go
    self.travel
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
