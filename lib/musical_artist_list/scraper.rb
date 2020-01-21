class MusicalArtistList::Scraper
  
  attr_accessor :name, :bio
  
  def self.display
    artist_info = []
    artist_info << self.scrape
    artist_info
   # binding.pry
  end
  

  
  def self.scrape
    page = Nokogiri::HTML(open("https://www.pbs.org/theblues/songsartists/songsbioalpha.html"))
    artists = self.new 
    artists.name = page.css("span.textName").map.with_index(1) do |name, index| 
      puts "#{index}. #{name.text}".strip
    end
    artists.bio = page.css("p.textSm").map.with_index(1) do |bio,index|
      unless index > 79 
      "#{index}. #{bio.text}".gsub("\n\t","")
    end
  end
    artists
    #binding.pry
end
end

# ./bin/musical_artist_list
# cd musical_artist_list