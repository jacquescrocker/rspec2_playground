class Statement
  def initialize(customer)
    @customer = customer
  end
  
  def generate
    "Statement for #{@customer.name}"
  end
  
end