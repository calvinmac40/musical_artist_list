class MusicalArtistList::Scraper
  
  attr_accessor :name, :bio
  
  # def self.display
  #   artist_info = []
  #   artist_info << self.scrape
  #   artist_info.flatten
  # # binding.pry
  # end
  

  
  def self.scrape
    page = Nokogiri::HTML(open("https://www.pbs.org/theblues/songsartists/songsbioalpha.html"))
    artists = self.new 
    artists.name = page.css("span.textName").map.with_index(1) do |name, index| 
       "#{index}. #{name.text}".strip
    end
    #binding.pry
    artists.bio = page.css("p.textSm").map do |bio|
      #unless index > 79 
      "#{bio.text.strip}".gsub("\n\t\t","")
    end
    artists
  end
    

end


# ./bin/musical_artist_list
# cd musical_artist_list