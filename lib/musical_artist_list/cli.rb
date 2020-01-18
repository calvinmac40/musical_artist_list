class MusicalArtistList::CLI 
  
  def call 
    puts "Welcome Music Enthusiasts!"
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