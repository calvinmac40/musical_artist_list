class MusicalArtistList::Scraper
  
  @@all = []
  
  def self.scrape 
    page = Nokogiri::HTML(open("https://www.biography.com/news/aretha-franklin-black-singers-church"))
    names = page.css("h2").map.with_index(1){|artist,index| unless index > 12   
    puts "#{index}. #{artist.text}" 
     end 
    }.compact
    description = names.css("p")
    binding.pry
  end
  
  # def self.find_by_letter(input)
  #     @@all.select{|i| i == input}
  #     binding.pry
  #   end
end
