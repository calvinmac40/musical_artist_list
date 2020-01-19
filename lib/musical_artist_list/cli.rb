class MusicalArtistList::CLI 
  
  attr_accessor :name
  
  def list_artist 
    puts "Welcome Music Enthusiasts!"
    puts "Choose an artist you'd like to know more about!"
    artist_list
  end
  
  def artist_list
    MusicalArtistList::Scraper.scrape
    menu
  end
  
  def menu
    input = nil
    while input != "exit"
    puts "Please select an artist to learn more:"
      input = gets.chomp
      
    # case input.to_i -1
    # end
    end
    goodbye
  end
  
  
  
  def goodbye
    puts "Goodbye!"
  end
end