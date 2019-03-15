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
  
  def new_song()
    Song.new() 
  end

   
end