class MusicalArtistList::CLI 
  
  def call
    MusicalArtistList::Scraper.scrape
    puts ""
    puts "-----------------------------"
    puts "* Welcome Music Enthusiasts! *"
    puts "-----------------------------"
    puts ""
    menu
  end
  

  def menu
   input = nil 
    while input != "exit"
         puts "To see a list of artist enter list."
         puts ""
         input = gets.strip.downcase
       if input == "exit"
         goodbye
      elsif input.to_i > 0 
      puts @artist_name[input.to_i - 1] 
        elsif input == "list"
        puts ""
         artist_list
         else 
         puts "Not sure what you want?"
       end
    end
  end
  
  
  def artist_list
      @artist_name = MusicalArtistList::Artist.all
      @artist_name.map.with_index(1) do |name,index|
        puts "#{index}. #{name.name.text}".strip
      end
      artist_bio 
  end
  
  def artist_bio
    input = nil 
    while input != "exit"
    puts ""
    puts "To make a selection enter a number between 1 - 79 or type list to see the menu again or type exit."
    puts ""
    input = gets.strip
    if input.to_i > 0 && input.to_i < 80
      puts ""
      puts @artist_bio[input.to_i - 1]
      elsif input == "list"
      artist_list
      elsif input == "exit"
      goodbye
      exit 
    end
  end
  end
  
  
  def goodbye
    puts "Goodbye!"
  end
end