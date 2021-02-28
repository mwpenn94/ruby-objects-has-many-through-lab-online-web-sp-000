class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def new_song(name)
    Song.new
    #give .name attribute
    #give .artist attribute of self
  end
  
  def songs 
    Song.all.select {|song| song.artist == self.name}
  end
  
  def genres
    self.songs.collect {|song| song.genre}    
  end
end