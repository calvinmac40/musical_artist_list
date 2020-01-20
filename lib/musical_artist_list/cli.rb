class MusicalArtistList::CLI 
  
  attr_accessor :name
  
  def call 
    puts "Welcome Music Enthusiasts!"
    menu
  end
  
  def artist_list
   @list = MusicalArtistList::Scraper.scrape
   @list.each_with_index(1) do |artist,index|
     puts "#{index}. #{artist.name} - #{artist.bio}"
   end
  end
  
  # def blues_artist
  #   puts <<-DOC.gsub /^\s*/, ''
  #   1. Fats Domino is a blues artist that my son did a history report on.
  #   2. My favorite blues artist is....HMMm I don't have one.
  #   DOC
  #   #@artist_bios = MusicalArtistList::Scraper.scrape
  # end
  
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
         puts "Not sure what you're looking for?"
      end
    end
  end
  
  
  def goodbye
    puts "Goodbye!"
  end
end