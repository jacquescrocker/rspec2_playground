require 'spec_helper'

# -------
# this spec shows off all the different ways you can use "describe" blocks
# -------

# simple way
describe "A new Account" do
  it "should have a balance of 0" do
    account = Account.new
    account.balance.should == 0
  end
end

# describe an object
describe Account, "a new account" do
  it "should have a balance of 0" do
    account = Account.new
    account.balance.should == 0
  end
end

# using contextual blocks
describe Account do
  context "a new account" do
    it "should have a balance of 0" do
      account = Account.new
      account.balance.should == 0
    end
  end
end