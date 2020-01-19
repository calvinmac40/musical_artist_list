class MusicalArtistList::Scraper
  
  def self.scrape 
    page = Nokogiri::HTML(open("https://www.pbs.org/theblues/songsartists/songsbioalpha.html"))
    
    names = page.css("span.textName").each.with_index(1) do |artist,index| 
      unless  index  > 15
       puts "#{index}. #{artist.text}"
      end
    end
    
    binding.pry
    # @names = page.css("h2").map.with_index(1){|artist,index| unless index > 12   
    # puts "#{index}. #{artist.text}" 
    # end 
    # }.compact
    
    # artist_list = page.css("p").each{|bio| 
    # bio = {  
    # :intro => page.css("p")[1].text,
    # :aretha_franklin => page.css("p")[4].text, #Aretha Franklin Bio.
    # :whitney_houston => page.css("p")[10].text.gsub("\"", ""), #Whitney Houston Bio.
    # :otis_redding => page.css("p")[16].text,
    # :marvin_gaye => page.css("p")[20].text.gsub("\"", ""),
    # :staples_sisters => page.css("p")[26].text.gsub("\"", ""),
    # :the_emotions => page.css("p")[29].text.gsub("\"", ""),
    # :donna_summer => page.css("p")[33].text.gsub("\"", ""),
    # :stephanie_mills => page.css("p")[37].text,
    # :faith_evans => page.css("p")[42].text.gsub("\"", ""),
    # :john_legend => page.css("p")[47].text,
    # :laura_mvula => page.css("p")[52].text.gsub("\"", ""),
    # :curtis_mayfield => page.css("p").text.gsub("\"", "")}}
    
  end
end
