#!/c:/ruby/bin/ruby -w

require 'SomeClass.rb'

describe SomeClass do
  before do
    @sc = SomeClass.new
  end

  after do
    @sc = nil
  end


  it "eql" do
    @sc.double(4).should eql(8)
    @sc.double(4).should_not eql(42)
  end

  it "be_true" do
    @sc.is_positive(5).should be_true
    @sc.is_positive(-1).should_not be_true
  end

  it "be_false" do
    @sc.is_positive(0).should be_false
  end

  it "be_nil" do
    @sc.nothing_from_nothing_is?.should be_nil
  end

  it "be_a" do
    @sc.should be_a(SomeClass)
    @sc.should be_a(Object)
    @sc.should be_a(Kernel)
  end

  it "be_close" do
    @sc.double(4).should be_close(10, 5)
  end

  it "have" do
    [11,12,13].should have(3).items
  end

  it "include" do
    [11,12,13].should include(11)
    "eddie would go".should include('d')
  end

  it "should_match" do
    "eddie would go".should match(/^ed/)
    "eddie would go".should_not match(/\d/)
  end

  it "raise_error" do
    lambda { @sc.double('foo') }.should raise_error()
    lambda { @sc.double('foo') }.should raise_error(ArgumentError)
  end

  it "change" do
    lambda {
      @sc.change_thisvar
    }.should change(@sc, :thisvar)

    lambda {
      @sc.setIt('eddie would go')
    }.should change(@sc, :foo).from('foo').to('eddie would go')
  end

    
  it "respond_to" do
    @sc.should respond_to('thisvar')
    @sc.should_not respond_to('eddieWouldGo')
  end

end   # describe
