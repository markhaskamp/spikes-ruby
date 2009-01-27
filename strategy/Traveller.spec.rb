require 'Travellers_All.rb'

describe Traveller_Cowboy do
  it "When cowboy travels, then he 'moseys'" do
    c = Traveller_Cowboy.new
    c.go.should eql("mosey")
  end

  it "When cowboy says hello, then he says 'howdy'" do
    c = Traveller_Cowboy.new
    c.hello.should eql("howdy")
  end
end

describe Traveller_Horse do
  it "When horse travels, then he 'gallops'" do
    t = Traveller_Horse.new
    t.go.should eql("gallop")
  end

  it "When horse says hello, then he says 'animals don''t talk'" do
    t = Traveller_Horse.new
    t.hello.should eql("animals don't talk")
  end
end

describe Traveller_Snake do
  it "When snake travels, then he 'slithers'" do
    t = Traveller_Snake.new
    t.go.should eql("slither")
  end

  it "When snake says hello, then he says 'animals don''t talk'" do
    t = Traveller_Snake.new
    t.hello.should eql("animals don't talk")
  end
end

describe Traveller_Girl do
  it "When girl travels, then she 'skips'" do
    t = Traveller_Girl.new
    t.go.should eql("skip")
  end

  it "When girl says hello, then she says 'howdy'" do
    t = Traveller_Girl.new
    t.hello.should eql("howdy")
  end
end

