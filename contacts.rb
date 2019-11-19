class Contacts
  attr_accessor :contacts
  
  def initialize(contacts)
    @contacts = contacts
  end

  def all
    contacts
  end

  def find_by(key,value)
    contacts.each do |n|
      return n if n[key.to_sym] == value
    end
  end
end

contacts = [ { age: 20, name: "Jose", lastname: "Lopez", gender: :masculino },
           { age: 21, name: "Oscar", lastname: "Perez", gender: :masculino },
           { age: 22, name: "Martha", lastname: "Sanchez", gender: :femenino } ]

contact = Contacts.new(contacts)
contact.find_by("name","Oscar")
