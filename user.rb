class User
  attr_accessor :name, :lastname

  def initialize(name, lastname)
    @name = name
    @lastname = lastname
  end

  def name
    "#{name} #{lastname}"
  end
end

user=User.new("Ariel", "Zapata")
user.name
