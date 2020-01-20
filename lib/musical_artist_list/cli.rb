class MusicalArtistList::CLI 
  
  attr_accessor :name
  
  def call 
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
        puts "Please make your selection:"
          input = gets.chomp
      if input == "exit"
         goodbye
      elsif input == "1"
        blues_artist
      elsif input == "2"
        puts "Not sure what you're looking for? Please try again."
      end
    end
  end
  
  
  def goodbye
    puts "Goodbye!"
  end
end