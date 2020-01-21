class MusicalArtistList::CLI 
  
  attr_accessor :artist, :name 
  
  def call 
    puts "Welcome Music Enthusiasts!"
    # MusicalArtistList::Scraper.display
    menu
  end
  
  def artist_list
    @artist_info = MusicalArtistList::Scraper.display
    @artist_info.map.with_index do |names,index|
    puts  "#{index}. #{names.name}"
  end
    # puts <<-DOC 
    #   1. This is the first choice.
    # DOC
    
    # puts <<-DOC
    #   2. THis is the second choice.
    # DOC
    #MusicalArtistList::Scraper.display
    # @artist = MusicalArtistList::Scraper.display
    # @artist.map.with_index do |n,i|
    #   "#{i}. #{n.name}"
    #   end
  end
  
  
  def menu
   input = nil 
    while input != "exit"
         puts "Please enter "
         input = gets.strip
       if input == "exit"
         goodbye
      elsif input.to_i > 0 
      puts @artist_info[input.to_i - 1]
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