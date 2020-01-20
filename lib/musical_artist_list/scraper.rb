class MusicalArtistList::Scraper
  
  def self.scrape 
     puts <<-DOC.gsub /^\s*/, ''
    1. Fats Domino is a blues artist that my son did a history report on.
    2. My favorite blues artist is....HMMm I don't have one.
    DOC
    page = Nokogiri::HTML(open("https://www.pbs.org/theblues/songsartists/songsbioalpha.html"))
    #artist_info = {
    names = page.css("span.textName").map.with_index(1) do |artist,index| 
      unless  index  > 20
      puts  "#{index}. #{artist.text}".strip
        end
      end
    
    desc = page.css("p").map.with_index(1) do |bio,i| 
    unless i > 20
       "#{i}. #{bio.text}".gsub("\n\t\t","").gsub("\"","").gsub("\n\t","").gsub("\t","")
      end
    end
    
  
    
  end
end