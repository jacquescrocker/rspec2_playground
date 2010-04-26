require 'spec_helper'

# define a custom matcher named "report_to"
Rspec::Matchers.define :report_to do |boss|
  match do |employee|
    employee.reports_to?(boss)
  end

  failure_message_for_should do |employee|
    "expected the team run by #{boss.inspect} to include #{employee.inspect}"
  end

  failure_message_for_should_not do |employee|
    "expected the team run by #{boss.inspect} to exclude #{employee.inspect}"
  end

  # what does this do?
  description do
    "expected a member of the team run by #{boss.inspect}"
  end
end

# use the custom matcher
describe "Rspec custom matchers" do
  describe Employee, "a secretary" do
    it "should report to a boss" do
      joe = Employee.new("Joe")
      beatrice = Employee.new("Beatrice")
      joe.boss = beatrice

      joe.should report_to(beatrice)
    end
  end
end