class Person
  def initialize(fields = {})
    @fields = fields
  end
  
  def eligible_to_vote?
    birthdate = @fields[:birthdate] || Time.now
    birthdate <= self.class.years_ago(18)
  end
  
  def self.years_ago(years = 0)
    Time.now - (years*60*60*24*365.25)
  end
end