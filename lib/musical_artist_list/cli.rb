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
        selection = "a".."z"
        selection.map do |letter|
          if letter == input
            puts "#{letter.upcase}-list artist!"
          end
        end
      end
    end
       
            
  
  
end