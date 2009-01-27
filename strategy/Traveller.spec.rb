require 'Travellers_All.rb'

describe Traveller_Cowboy do
  it "When cowboy travels, then he 'moseys'" do
    c = Traveller.create(:cowboy)
    c.go.should eql("mosey")
  end

  it "When cowboy says hello, then he says 'howdy'" do
    c = Traveller.create(:cowboy)
    c.hello.should eql("howdy")
  end
end

describe Traveller_Horse do
  it "When horse travels, then he 'gallops'" do
    t = Traveller.create(:horse)
    t.go.should eql("gallop")
  end

  it "When horse says hello, then he says 'animals don''t talk'" do
    t = Traveller.create(:horse)
    t.hello.should eql("animals don't talk")
  end
end

describe Traveller_Snake do
  it "When snake travels, then he 'slithers'" do
    t = Traveller.create(:snake)
    t.go.should eql("slither")
  end

  it "When snake says hello, then he says 'animals don''t talk'" do
    t = Traveller.create(:snake)
    t.hello.should eql("animals don't talk")
  end
end

describe Traveller_Girl do
  it "When girl travels, then she 'skips'" do
    t = Traveller.create(:girl)
    t.go.should eql("skip")
  end

  it "When girl says hello, then she says 'howdy'" do
    t = Traveller.create(:girl)
    t.hello.should eql("howdy")
  end
end
