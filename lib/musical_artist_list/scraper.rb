
class MusicalArtistList::Scraper

attr_accessor :name, :bio

def self.scrape
    page = Nokogiri::HTML(open("https://www.pbs.org/theblues/songsartists/songsbioalpha.html"))
    
    page.css('p.textSm')[0..(-4)].each do |card|
      artist_name = card.css('span').first.children.first.text
      binding.pry
    end
    
  #   artists = page.search("td:not([class])").each do |artist|
  #     artist.name = page.css("span.textName").text
  #     artist.bio = page.css("p.textSm").text
  #     artist = MusicalArtistList::Artist.new(name,bio)
  #   binding.pry
  # end
    
    
    
    
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