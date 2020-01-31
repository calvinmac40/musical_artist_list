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
         artist_names
         else 
         puts "Not sure what you want?"
       end
    end
  end
  
  
  def artist_names
      @artist_name = MusicalArtistList::Artist.all
      @artist_name.map.with_index(1) do |name,index|
        puts "#{index}. #{name.name.text}".strip
      end
      artist_bios 
  end
  
  
  
  def artist_bios
    input = nil 
    while input != "exit"
    puts ""
    puts "To make a selection enter a number between 1 - 79 or type lis to see the menu again or type exit."
    puts ""
    input = gets.strip
    if input == "list"
     artist_names 
    elsif input.to_i > 0 && input.to_i < 80
     @art_bio = MusicalArtistList::Artist.all
     @art_bio[input.to_i - 1].map.with_index(1) do |info,index|
       puts "#{index}. #{info}"
     end
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