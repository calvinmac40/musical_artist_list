class MusicalArtistList::Artist 
  attr_accessor :name, :bio 
  
  @@all = []
  
  def initialize(name,bio)
    @name = name
    @bio = bio
    @@all << self
    #binding.pry
  end
  
  def self.all
    @@all 
  end
  
end