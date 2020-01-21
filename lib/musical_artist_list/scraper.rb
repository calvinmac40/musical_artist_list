class MusicalArtistList::Scraper
  
  attr_accessor :name, :bio
  
  def self.display
    artist_info = []
    artist_info << self.scrape
    artist_info
    binding.pry
  end
  

  
  def self.scrape
    page = Nokogiri::HTML(open("https://www.pbs.org/theblues/songsartists/songsbioalpha.html"))
    artists = self.new 
    artists.name = page.css("span.textName")
    artists.bio = page.css("p.textSm").text.gsub("\n\t\t","")
    artists
    #binding.pry
  end
end

# ./bin/musical_artist_list
# cd musical_artist_list