require 'spec_helper'

# shows how to use stubbing and mock_expectations

describe "Rspec stubbing and mocking" do

  describe "stubbing shortcuts" do
    it "should create a customer mock with inline attributes" do
      customer = double('customer', :name => "Bryan")
      customer.name.should == "Bryan"
    end
  end

  describe "stub chains" do
    it "should return a chain of crap" do
      statement = double()
      Statement.stub_chain(:recent, :published, :authored_by).and_return(statement)
      
      # fetch out the stubbed value
      Statement.recent.published.authored_by.should == statement
    end
    
  end

  describe Statement do
    it "uses the customer's name in the header" do
      customer = double("customer")

      customer.stub(:name).and_return("Aslak")
      statement = Statement.new(customer)
      statement.generate.should =~ /^Statement for Aslak/
    end

    it "uses the customer's name in the header" do
      customer = double('customer')

      customer.should_receive(:name).and_return("Aslak")
      statement = Statement.new(customer)
      statement.generate.should =~ /^Statement for Aslak/
    end
  end

end