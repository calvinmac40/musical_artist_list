class MusicalArtistList::Scraper

attr_accessor :name, :bio

def self.scrape
    page = Nokogiri::HTML(open("https://www.pbs.org/theblues/songsartists/songsbioalpha.html"))
    artists = self.new 
    artists.name = page.css("span.textName").map.with_index(1) do |name, index| 
       "#{index}. #{name.text}".strip
    end
    artists.bio = page.css("p.textSm").map do |bio|
      "#{bio.text.strip}".gsub("\t","")
    end
    artists
  end
end