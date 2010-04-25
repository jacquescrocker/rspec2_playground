class Pizza
  def tasty?
    true
  end
  
  def available_by_the_slice?
    true
  end
  
  def toppings
    []
  end
end

class CheesePizza < Pizza
  def cheese_level
    2
  end
end

class PepperoniPizza < Pizza
  def cheese_level
    1
  end
  
  def toppings
    ["pepperoni"]
  end
end