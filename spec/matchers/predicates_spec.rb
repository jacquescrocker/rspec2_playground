require 'spec_helper'

# -------
# this spec shows off the predicate (boolean) matchers that rspec provides
# -------

describe "Rspec Predicate Matchers" do
  it "has be_empty matcher" do
    list = []
    list.should be_empty #=> calls list.empty?
  end
  
  it "has be_true matcher" do
    result = true
    result.should be_true
    result.should equal(true) # for an exact true/false match
    
    result = 0
    result.should be_true
  end
  
  # show how be_ matchers translate to methods calls (ending in ?)
  describe User, "(an admin)" do
    describe "#in_role?" do
      it "should be true if user is an admin" do
        admin = User.new("admin")
        admin.should be_in_role("admin") #=> calls admin.in_role?("Admin")
      end
    end
  end
  
  # show how have_ matchers translate to method calls (starting with has_, anding with ?)
  describe Params do
    describe "#has_key?" do
      it "should be true if it has a matching key" do
        params = Params.new(:name, :address)
        params.should have_key(:name) #=> calls params.has_key?(:name)
        params.should have_key(:address) #=> calls params.has_key?(:address)
      end
    end
  end
  
end