class CLI

  def start
       puts "
              
               
          *-*-*-*-*-*-*-*-*
           D|o|g|g|o|A|p|p
          *-*-*-*-*-*-*-*-*
            
               WELCOME

               U ´ᴥ` U

           ".blue
           puts " "
   puts "Loading..."
    API.load_data
   main_menu_options
  end 

  def main_menu_options
    puts "Type '1' to get a list of dog breeds."
    puts "Type '2' if you already know the number of the breed."
    puts "Type 'exit' to exit the app."
    main_menu
  end 

  def main_menu
    input = get_input

    if input == "1"
      breed_list
      main_menu_options
    elsif input == "2"
      breed_details_menu_options
    elsif input == "exit"
    puts "Exiting the application."
    else
      invalid_choice
      main_menu_options
    end 
  end 

  def invalid_choice
    puts "Invalid choice please try again."
  end 

  def get_input
    puts "Enter a choice."
    gets.strip
  end 

#1
  def breed_list
    Breed.all.each.with_index(1) do |breed, index|
      puts "#{index}. #{breed.name}"
    end 
    breed_details_menu_options
  end 
 


  def breed_details_menu_options
    puts "Select the number next to the breed you wish to know more about"
    puts "Or type 'exit' to exit application"
    breed_details_menu
  end 

  def breed_details_menu
      input = get_input

    if input.to_i.between?(1, Breed.all.length)
 
      index = input.to_i - 1
      breed = Breed.all[index]
      print_breed_details(breed)
    elsif input == "exit"
    puts "Exiting the application."
    else
      invalid_choice
      breed_details_menu_options
    end 
  end 

  def print_breed_details(breed)
    puts " "
    puts "*-*-*-*-*-*-*-*-*".blue
    puts "Breed: #{breed.name}".green
    puts "Temperament: #{breed.temperament}".green
    puts "Bred For: #{breed.bred_for}".green
    puts "Life Span: #{breed.life_span}".green
    puts "*-*-*-*-*-*-*-*-*".blue
    puts " "
  end 

  def select_or_exit
    puts "Would you like to go back or exit?"
    puts "'1' for main or '2' for exit application"
    input = get_input
    if input == '1'
      main_menu_options
    elsif input == "exit"
      puts "GoodBye"
    else
      invalid_choice
      select_or_exit
    end 
end

end 
