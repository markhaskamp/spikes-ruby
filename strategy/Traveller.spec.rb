require 'Travellers_All.rb'

describe Traveller_Cowboy do
  before(:each) do
    @c = Traveller.create(:cowboy)
  end

  it "When cowboy travels, then he 'moseys'" do
    @c.go.should eql("mosey")
  end

  it "When cowboy says hello, then he says 'howdy'" do
    @c.hello.should eql("howdy")
  end
end

describe Traveller_Horse do
  before(:each) do
    @t = Traveller.create(:horse)
  end

  it "When horse travels, then he 'gallops'" do
    @t.go.should eql("gallop")
  end

  it "When horse says hello, then he says 'animals don''t talk'" do
    @t.hello.should eql("animals don't talk")
  end
end

describe Traveller_Snake do
  before(:each) do
    @t = Traveller.create(:snake)
  end

  it "When snake travels, then he 'slithers'" do
    @t.go.should eql("slither")
  end

  it "When snake says hello, then he says 'animals don''t talk'" do
    @t.hello.should eql("animals don't talk")
  end
end

describe Traveller_Girl do
  before(:each) do
    @t = Traveller.create(:girl)
  end

  it "When girl travels, then she 'skips'" do
    @t.go.should eql("skip")
  end

  it "When girl says hello, then she says 'howdy'" do
    @t.hello.should eql("howdy")
  end
end
