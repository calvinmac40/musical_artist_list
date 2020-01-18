class MusicalArtistList::CLI 
  
  def call 
    puts "Welcome Music Enthusiasts!"
    puts "Find information on your favorite artists here! To find a particular artist choose the first letter of the artist name."
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