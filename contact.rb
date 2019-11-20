class Contacts
  def self.all
    [ 
      {age: 20, name: "Jose", lastname: "Lopez", gender: :masculino},
      {age: 21, name: "Oscar", lastname: "Perez", gender: :masculino},
      {age: 22, name: "Martha", lastname: "Sanchez", gender: :femenino}
    ]
  end

  def self.find_by(key, value)
   all.each do |contact|
      return contact if contact[key.to_sym] == value
    end
  end
end

Contacts.find_by("name", "Oscar")
