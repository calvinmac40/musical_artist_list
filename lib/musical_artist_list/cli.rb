class MusicalArtistList::CLI 
  
  def call 
    puts "Welcome Music Enthusiasts!"
    # MusicalArtistList::Scraper.display
    menu
  end
  

  def menu
   input = nil 
    while input != "exit"
         puts "To see a list of artist enter list."
         input = gets.strip
       if input == "exit"
         goodbye
      elsif input.to_i > 0 
       @artist_info[input.to_i - 1]
        elsif input == "list"
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
    
    puts "To make another selection enter a number 1 - 79 or type list to see the menu again or type exit."
    input = gets.strip
    if input.to_i > 0 && input.to_i < 80 
     puts  @artist_info.name[input.to_i - 1]
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