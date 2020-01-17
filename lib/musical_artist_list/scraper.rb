class MusicalArtistList::Scraper
  
  def self.scrape 
    page = Nokogiri::HTML(open("https://www.udiscovermusic.com/artists-a-z/"))
    names = page.css(".ud-artist-page-columns")
    binding.pry
  end


end
