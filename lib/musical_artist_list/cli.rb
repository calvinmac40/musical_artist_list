class MusicalArtistList::CLI 
  
  def call 
    puts "Welcome Music Enthusiasts!"
    puts "Find information on your favorite artist here!"
    menu
  end
  
  def menu
    input = nil
      while input != "exit"
        puts "Choose the next group of artist!"
        input = gets.chomp
      case input
      when "a"
        puts "A list artist"
      when "b"
        puts "B-list artist"
      when "c"
        puts "C-list artist"
      end
    end
  end
  
end