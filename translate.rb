class Dictionary
  def self.translate(language, word)  
    spanish = { 
      departamento: "departament", 
      inquilino: "tenant", 
      propietario: "owner", 
      renta: "rent" 
    }
    case language
      when "spanish"
      spanish.map { |words,translate| words if translate == word.downcase }.join 
      when "english"
      spanish[word.downcase.to_sym]
      else
      "No hay traduccion para #{language}" 
    end
  end
end

Dictionary.translate("spanish", "teNaNt")
