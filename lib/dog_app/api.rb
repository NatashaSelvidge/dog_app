class API 

  def self.base_url
    "https://api.thedogapi.com/v1"
  end 

  def self.load_data
    load_dogs
  end 
    
  def self.load_dogs
    dogs = []
  
    response = RestClient.get(base_url + '/breeds')
    data = JSON.parse(response.body)

    data.each do |dog_data|
      Breed.new(dog_data)
    end  
  end 

end 