class MusicalArtistList::CLI 
  
  attr_accessor :name
  
  def call 
    puts "Welcome Music Enthusiasts!"
    MusicalArtistList::Scraper.scrape
    menu
  end
  
  # def artist_list
  # @artist = MusicalArtistList::Scraper.scrape
  # @artist.each_with_index(1) do |artist,index|
  #   puts "#{index}. #{artist.name} - #{artist.bio}"
  # end
  # end
  
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
         puts "Please enter a number for the artist you'd like to know more about!"
         input = gets.strip
       if input == "exit"
         goodbye
       elsif input.to_i > 0 
         puts @artist[input.to_i - 1]
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