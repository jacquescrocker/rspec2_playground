require 'spec_helper'

# puts "WTF"
# require 'ruby-debug'
# puts $LOAD_PATH

describe "Rspec Mocking" do
  
  describe "#double" do
    before(:each) do
      @double_thingamajig = double("thing-a-ma-jig")
    end
    it "creates a double" do
      @double_thingamajig.should_not be_nil
      @double_thingamajig.should be_a_kind_of(Rspec::Mocks::Mock)
    end
  end
  
  describe "#stub" do
    before(:each) do
      @stub_thingamajig = stub("thing-a-ma-jig")
    end
    
    it "creates a stub" do
      @stub_thingamajig.should_not be_nil
      @stub_thingamajig.should be_a_kind_of(Rspec::Mocks::Mock)
    end
  end

  describe "#mock" do
    before(:each) do
      @mock_thingamajig = mock("thing-a-ma-jig")
    end
    
    it "creates a mock" do
      @mock_thingamajig.should_not be nil
      @mock_thingamajig.should be_a_kind_of(Rspec::Mocks::Mock)
    end
  end
end