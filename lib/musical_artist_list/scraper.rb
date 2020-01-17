class MusicalArtistList::Scraper
  
  def self.scrape 
    page = Nokogiri::HTML(open("https://www.udiscovermusic.com/artists-a-z/"))
    names = page.css(".ud-artist-page-columns").text.split
    artist_list = names.map.with_index(1){|artist,index| "#{index}. #{artist}"}.drop(5)
    binding.pry
  end
end
