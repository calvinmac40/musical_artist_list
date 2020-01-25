class MusicalArtistList::CLI 
  
  def call
    puts "-----------------------------"
    puts "* Welcome Music Enthusiasts! *"
    puts "-----------------------------"
    puts ""
    menu
  end
  

  def menu
   input = nil 
    while input != "exit"
         puts "To see a list of artist enter list."
         puts ""
         input = gets.strip
       if input == "exit"
         goodbye
      elsif input.to_i > 0 
       @artist_info[input.to_i - 1]
        elsif input == "list"
        puts ""
         artist_list
         else 
         puts "Not sure what you want?"
       end
    end
  end
  
  
  def artist_list
      @artist_info = MusicalArtistList::Scraper.scrape
      @artist_info.name.each do |list|
        puts "#{list}"
      end
      artist_bio 
  end
  
  def artist_bio
    input = nil 
    while input != "exit"
    puts ""
    puts "To make a selection enter a number between 1 - 79 or type list to see the menu again or type exit."
    puts ""
    input = gets.strip
    if input.to_i > 0 && input.to_i < 80
      puts ""
      puts @artist_info.bio[input.to_i - 1]
      elsif input == "list"
      artist_list
      elsif input == "exit"
      goodbye
      exit 
    else 
      puts " Not sure what you want."
    end
  end
  end
  
  
  def goodbye
    puts "Goodbye!"
  end
end