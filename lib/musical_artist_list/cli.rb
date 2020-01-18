class MusicalArtistList::CLI 
  
  def call 
    puts "Welcome Music Enthusiasts!"
    puts "Please select an artist to learn more:"
    menu
  end
  
  
  
  def menu
    MusicalArtistList::Scraper.scrape
    @input = nil
    while @input != "exit"
      @input = gets.chomp
      aretha_franklin
    end
  end
end