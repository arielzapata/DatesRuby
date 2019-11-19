class User
  attr_accessor :name, :lastname
  
  def initialize(name, lastname)
    @name = name
    @lastname = lastname
  end

  def complete_name
  "#{name} #{lastname}"
  end
end

name=User.new("Ariel", "Zapata")
name.complete_name
