require 'spec_helper'

# -------
# this spec shows off how to use "before(:each)" so it runs before each example
# -------

describe Stack do
  before(:each) do
    @stack = Stack.new
    @stack.push :item
  end

  describe "#peek" do
    it "should return the top element" do
      @stack.peek.should == :item
    end

    it "should not remove the top element" do
      @stack.peek
      @stack.size.should == 1
    end
  end
  
  describe "#pop" do
    it "should return the top element" do
      @stack.pop.should == :item
    end
    
    it "should remove the top element" do
      @stack.pop
      @stack.size.should == 0
    end
  end
end