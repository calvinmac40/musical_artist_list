class MusicalArtistList::CLI 
  
  def call
    MusicalArtistList::Scraper.scrape #scrapes all the information at once.
    puts "" # puts an empty space between lines.
    puts "-----------------------------"
    puts "* Welcome Music Enthusiasts! *"
    puts "-----------------------------"
    puts ""
    menu # calls on the mehod menu
  end
  
  def menu
    input = nil #gives the variable input a value of nil
    puts "To see a list of artist enter list" # promps the user to enter a command to display a list of artists.
    puts ""
    while input != "exit" # loops until a user inputs certain commands.
    input = gets.strip.downcase # waits for user input.
    if input == "exit" # if statement conditional evaluates user input.
      goodbye # calls on the method if the command 'exit' is entered by the user.
      elsif  #input.to_i > 0 && input.to_i < 80
      puts "Please enter the command 'list'!"
      puts ""
      elsif input == "list"
      puts ""
      artist_names
      else 
      puts "Not sure what you're looking for?"
      puts "Please enter the command 'list'!"
      puts ""
     end
    end
  end
  
  def artist_names
    @artists = MusicalArtistList::Artist 
    @artists.all.map.with_index(1) do |artist,index|
    puts "#{index}. #{artist.name}"
    end
  end
  
  def goodbye
    puts "Goodbye!"
  end
end