class MusicalArtistList::Scraper
  
  def self.scrape 
    page = Nokogiri::HTML(open("https://www.udiscovermusic.com/artists-a-z/"))
    
  end
end