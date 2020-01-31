
class MusicalArtistList::Scraper

attr_accessor :name, :bio

def self.scrape
    page = Nokogiri::HTML(open("https://www.pbs.org/theblues/songsartists/songsbioalpha.html"))
    page.search('p.textSm')[0..(-4)].each do |card|
      artist_name = card.css('span')
      artist_bio = card.children[5..(-1)]
      artists = MusicalArtistList::Artist.new(artist_name,artist_bio)
    end
  end
end