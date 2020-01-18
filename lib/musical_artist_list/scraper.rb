class MusicalArtistList::Scraper
  
  @@all = []
  
  def self.scrape 
    page = Nokogiri::HTML(open("https://www.udiscovermusic.com/artists-a-z/"))
    names = page.css(".ud-artist-page-columns").text.split
    artist_list = names.map.with_index(1){|artist,index| "#{index}. #{artist}"}
    @@all << artist_list
    #binding.pry
  end
  
  def self.find_by_letter(input)
    @@all.select{|i| i == input}
    binding.pry
  end
end
