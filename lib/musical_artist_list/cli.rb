class MusicalArtistList::CLI 
  
  def call 
    puts "Welcome Music Enthusiasts!"
    puts 
    MusicalArtistList::Scraper.scrape
    menu
  end
  
  
  
  def menu
    input = nil
    while input != "exit"
      input = gets.chomp
    end
  end
end