require 'spec_helper'

# -------
# this spec shows off how to use nesting along with before/after
# -------


describe "outer" do
  
  before(:each) do
    puts "first"
  end
  
  describe "inner" do
    before(:each) do
      puts "second"
    end
    
    it "do something" do 
      puts "third"
    end
    
    after(:each) do
      puts "fourth"
    end
  end
  
  after(:each) do
    puts "fifth"
  end
  
end