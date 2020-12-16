class Breed
  @@all = []
  attr_accessor :name, :temperament, :bred_for, :life_span

  def initialize(data)
    self.name = data["name"]
    self.temperament = data["temperament"]
    self.bred_for = data["bred_for"]
    self.life_span = data["life_span"]
     
  end 

  def self.all
    @@all
  end 

  def save 
    @@all << self
  end 

  def self.find_by_name(name)
    @@all.find do |b|
      b.name.downcase == name.downcase
    end 
  end 
  
end