require 'spec_helper'

# -------
# this spec shows off the basic matchers that rspec provides
# -------

describe "Rspec Basic Matchers" do
  it "has some equality matchers" do
    @some_number = 5
    @some_number.should eql(5)
    @some_number.should equal(5)
    @some_number.should == 5
  end

  it "has should_not matchers" do
    @some_number = 1
    @some_number.should_not == 2

    # NEVER USE !=
    # @some_number.should != 2
    # Ruby turns it into:
    # !(@some_number.should == 2)
  end
  
  it "has some operator matchers" do
    @some_number = 5
    @some_number.should == 5
    @some_number.should >= 5
    @some_number.should >= 5
    @some_number.should <= 5
    @some_number.should <= 10
  end

  it "has some operator matchers with be" do
    @some_number = 5
    @some_number.should be == 5
    @some_number.should be >= 5
    @some_number.should be >= 5
    @some_number.should be <= 5
    @some_number.should be <= 10
  end

  it "has some string matchers" do
    @string = "something something something"
    @string.should match(/something/)
    @string.should =~ /something/
    @string.should include("something")
  end

  it "has a raise_error matcher" do
    lambda { 1/0 }.should raise_error(ZeroDivisionError)
    lambda { raise ArgumentError, "WTF" }.should raise_error(ArgumentError, "WTF")
    lambda { raise "WTF" }.should raise_error("WTF")
    lambda { raise "What the Fuuuuuuck (WTF)" }.should raise_error(/WTF/)
  end

  it "has a respond_to matcher" do
    @string = ""
    @string.should respond_to(:length)
  end

  it "has a be_close matcher for checking floating point values" do
    @float = 10.0/3.0
    @float.should be_close(3.333, 0.001)
  end

  it "has change matchers to track changes of data within lambdas" do
    @some_counter = 0
    lambda {
      @some_counter += 1
    }.should change { @some_counter }

    @some_counter = 0
    lambda {
      @some_counter += 1
    }.should change { @some_counter }.by(1)

    @some_counter = 0
    lambda {
      @some_counter += 1
    }.should change { @some_counter }.to(1)

    @some_counter = 0
    lambda {
      @some_counter += 1
    }.should change { @some_counter }.from(0).to(1)

  end

  
  it "has have([count]) specs" do
    
  end
  
end