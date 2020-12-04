class Breed
  @@all = ["Vizsla,", "Husky", "Golden"]
  attr_accessor :name, :temperament, :life_span
  def initialize
    @name=name
    @temperament=temperament
    @life_span=life_span
    save 
  end 

  def self.all
    @@all
  end 

  def save
  @@all << self
  end 

  
end