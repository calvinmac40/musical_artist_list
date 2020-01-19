class MusicalArtistList::CLI 
  
  attr_accessor :name
  
  def call 
    puts "Welcome Music Enthusiasts!"
    puts "Choose an artist you'd like to know more about!"
    artist_list
  end
  
  def artist_list
    MusicalArtistList::Scraper.scrape
    menu
  end
  
  def menu
    puts "Please select an artist to learn more:"
    input = nil
    while input != "exit"
      input = gets.chomp
    end
    goodbye
  end
  
  
  
  def goodbye
    puts "Goodbye!"
  end
end