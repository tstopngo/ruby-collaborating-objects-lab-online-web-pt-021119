require 'song.rb'

class Artist
  
@@all = []

attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def songs
    @songs
  end
  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self 
  end
  
<<<<<<< HEAD
  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.find {|artist| artist.name == artist_name}
    if found_artist
      found_artist
    else
      new_artist = self.new(artist_name)
      new_artist.save
      new_artist
    end
=======
  def self.find_or_create_by_name(name)
    
     if self.all.find { |artist| artist.name == name} 
      self.name
     else 
       artist = self.new(name)
       artist.save
       artist
      end
    
>>>>>>> 83b5cfe3a84ea6b092a58088ba079596d3a1e70a
  end
  
  def print_songs
      @songs.each do |song| 
         puts "#{song.name}"
      end
    end
  
end