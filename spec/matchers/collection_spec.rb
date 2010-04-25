require 'spec_helper'

# -------
# this spec shows off the collection matchers that rspec provides
# -------

describe "Rspec Collection Matchers" do
  
  it "has some basic collection matchers" do
    @team = ["Joe", "Jim", "Bob", "Tom", "Mike"]
    @team.should have(5).players
    @team.should include("Joe")
  end

  it "has count matching specs" do
    @team = ["Joe", "Jim", "Bob", "Tom", "Mike"]
    @team.should have_exactly(5).members
    @team.should have_at_least(4).members
    @team.should have_at_most(6).members
  end
  
end