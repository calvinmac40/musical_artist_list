class MusicalArtistList::Scraper
  
  def self.display
    self.scrape
  end
  
  def self.scrape
    artist_info = []
    page = Nokogiri::HTML(open("https://www.pbs.org/theblues/songsartists/songsbioalpha.html"))
    names = page.css("span.textName")
    binding.pry
    
    artist_info
  end
end