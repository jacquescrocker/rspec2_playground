class Params
  attr_accessor :keys
  
  def initialize(*keys)
    @keys = keys
  end
  
  def has_key?(key)
    @keys.include?(key)
  end
  
end