class MusicalArtistList::CLI 
  
  attr_accessor :artist, :name 
  
  def call 
    puts "Welcome Music Enthusiasts!"
    # MusicalArtistList::Scraper.display
    menu
  end
  
  def artist_list
      @artist_info = MusicalArtistList::Scraper.display
      @artist_info
  end
  
  
  def menu
   input = nil 
    while input != "exit"
         puts "Please enter "
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
  
  
  def goodbye
    puts "Goodbye!"
  end
end