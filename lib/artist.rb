class Artist 
  
  @@all = []

  def self.all
    @@all 
  end 
  
  attr_accessor :name 
   
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def new_song(song_name, genre)
    Song.new(song_name, self, genre) 
  end

  def songs 
    Songs.all.select do |song|
       song.artist 
    end 
  end 
   
end