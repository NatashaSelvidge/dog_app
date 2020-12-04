class CLI

  def start
   puts "Welcome"

   puts "Loading..."

   main_menu_options
  end 

  def main_menu_options
    puts "Type '1' to get a list of dog breeds."
    puts "Type '2' to enter a breed name."
    puts "Type 'exit' to exit the app."
    main_menu
  end 

  def main_menu
    input = get_input
    if input == "1"
      puts "Here is a list of all the dog breeds you can choose from."
      puts breed_list
    elsif input == "2"
      puts "Please enter a dog breed."
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

  def breed_list
    Breed.all
  end 
  
end 