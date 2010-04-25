require 'spec_helper'

# -------
# this spec shows off all the different ways to use "pending" in rspec
# -------

describe Newspaper do
  it "should be black" do
    Newspaper.new.colors.should include("black")
  end
  
  it "should be white" do
    Newspaper.new.colors.should include("white")
  end
  
  it "should be read all over"
end

describe "Random shit" do
  describe "onion rings" do    
    # rspec2 is currently broken. this will work eventually...
    # ----
    # # this example will be marked as pending and not executed
    # it "should not be mixed with french fries" do
    #   pending "cleaning out the fryer"
    #   fryer_with(:onion_rings).should_not include(:french_fry)
    # end
    
    pending "should be fried golden brown" do
      fryer_with(:onion_rings).should be_golden_brown
    end
  end
  
  describe "an empty array" do
    it "should be empty" do
      # rspec2 is currently broken. this will work eventually...
      # ----
      # # the block passed into pending will be run, and will give an alert ONLY IF it succeeds
      # pending "bug report 18976" do
      #   [].should be_empty
      # end
    end
  end
end