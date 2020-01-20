class MusicalArtistList::CLI 
  
  attr_accessor :name
  
  def list_artist 
    puts "Welcome Music Enthusiasts!"
    artist_list
  end
  
  def artist_list
    MusicalArtistList::Scraper.scrape
    menu
  end
  
  def blues_artist
    puts "Make your selection"
    puts <<-DOC.gsub /^\s*/, ''
    1. Fats Domino is a blues artist that my son did a history report on.
    2. My favorite blues artist is....HMMm I don't have one.
    DOC
  end
  
  def menu
    input = nil
    while input != "exit"
    puts "Here is a list of blues artist. 
Please select an artist to learn more:"
      input = gets.chomp
      
    # case input.
    # end
    end
    goodbye
  end
  
  
  
  def goodbye
    puts "Goodbye!"
  end
end