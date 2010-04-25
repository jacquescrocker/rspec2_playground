class User
  def initialize(*roles)
    @roles = roles
  end
  
  def in_role?(role_name)
    @roles.include?(role_name)
  end
end