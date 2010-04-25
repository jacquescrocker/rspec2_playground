require 'spec_helper'

# -------
# this spec shows off how to use "share_as" to create ruby module that include a bunch of shared specs
# -------

share_as :AnyPizza do
  it "should taste really good" do
    @pizza.should be_tasty
  end
  
  it "should be available by the slice" do
    @pizza.should be_available_by_the_slice
  end
end

describe CheesePizza do
  before(:each) do
    @pizza = CheesePizza.new
  end
  
  include AnyPizza
  
  it "should have a ton of cheese" do
    @pizza.cheese_level.should > 1
  end
end

describe PepperoniPizza do
  before(:each) do
    @pizza = PepperoniPizza.new
  end

  include AnyPizza
  
  it "should have pepperoni on it" do
    @pizza.toppings.should include("pepperoni")
  end
end