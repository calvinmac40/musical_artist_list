class Scraper
  
  def scrape 
    page = Nokogiri::HTML(open("https://www.udiscovermusic.com/artists-a-z/"))
   binding.pry 
  end
end
