class Employee
  def initialize(name)
    @name = name
  end
  
  def boss=(employee)
    @boss = employee
  end
  
  def reports_to?(boss)
    @boss == boss
  end
end