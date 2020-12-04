class Breed
  @@all = []

  def initialize
    save 
  end 

  def self.all
    @@all
  end 

  def save
  @@all << self
  end 

  
end