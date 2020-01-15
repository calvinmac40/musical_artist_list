class MusicalArtistList::CLI 
  
  def call 
    puts "Welcome Music Enthusiasts!"
    puts "Find information on your favorite artists here! To find a particular artist choose the first letter of the artist name."
    menu
  end
  
  def menu
    input = nil
      while input != "exit"
        input = gets.chomp
        selection = "a".."z"
        selection.map do |letter| 
          if letter == input
            puts "#{letter.upcase}-list artist!"
            artist_selector
          end
        end
      end
    end
    
    def artist_selector
      selection = nil
      puts "Thank you for your selection. Now choose an artist you would like to know more about by selecting the number next to that artist's name."
      while selection != "back"
      selection = gets.chomp
      if selection == "back"
        puts "Welcome Music Enthusiasts!" 
        puts "Find information on your favorite artists here! To find a particular artist choose the first letter of the artist name."
      else
        puts "To choose another artist select the number next to that artist name or select back to return to the main menu."
      end
    end
  end
end