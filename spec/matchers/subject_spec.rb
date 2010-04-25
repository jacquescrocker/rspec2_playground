require 'spec_helper'

# -------
# this spec shows off the "implicit subject" features of rspec
# -------

describe "Rspec Implicit Subject" do
  
  describe Person, "(an 18 year old)" do
    subject { Person.new(:birthdate => Person.years_ago(18)) }
    it { should be_eligible_to_vote }
  end

  describe Person, "(a 15 year old)" do
    subject { Person.new(:birthdate => Person.years_ago(15)) }
    it { should_not be_eligible_to_vote }
  end

  describe Person, "(a 20 year old)" do
    subject { Person.new(:birthdate => Person.years_ago(20)) }
    specify { subject.should be_eligible_to_vote }
  end
  
  
  describe Person, "(no fields)" do
    it { should_not be_eligible_to_vote }
  end

end