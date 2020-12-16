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
    puts "*-*-*-*-*-*-*-*-*".blue
    puts "Type '1' to get a list of dog breeds."
    puts "Type '2' to input the name of the breed."
    puts "Type 'exit' to exit the app."
    puts "*-*-*-*-*-*-*-*-*".blue
    main_menu
  end 

  def main_menu
    input = get_input
puts "*-*-*-*-*-*-*-*-*".blue
    if input == "1"
      breed_list
      main_menu_options
    elsif input == "2"
    puts "please enter a breed name."
    breed = Breed.find_by_name(gets.chomp)
     print_breed_details(breed)
      main_menu_options
    elsif input == "exit"
    puts "Exiting the application." 
    exit
    else
      invalid_choice
      main_menu_options
    end 
  end 

  def invalid_choice
    "*-*-*-*-*-*-*-*-*".red
    puts "Invalid choice please try again."
    "*-*-*-*-*-*-*-*-*".red
  end 

  def get_input
    puts "Enter a number."
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
    puts "Life Span: #{breed.life_span}".green
    puts "Bred For: #{breed.bred_for}".green
    puts "Temperament: #{breed.temperament}".green
    puts "*-*-*-*-*-*-*-*-*".blue
    puts " "
    select_or_exit
  end 

  def select_or_exit
    puts "*-*-*-*-*-*-*-*-*".blue
    puts "Would you like to go back or exit?"
    puts " Type '1' for the main menu or 'exit' to exit the application"
    input = get_input
    if input == '1'
      main_menu_options
    elsif input == "exit"
      puts "Exiting application..."
      puts "GoodBye"
      exit 
    else
      invalid_choice
      main_menu_options
    end 

    def exit
      exit!
    end 
end

end 
