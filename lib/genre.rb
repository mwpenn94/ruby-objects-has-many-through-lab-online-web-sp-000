class Genre
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Song.all.select {|song| song.genre == self.name}
  end
  
  def genres
    self.songs.collect {|song| song.artist}    
  end
end