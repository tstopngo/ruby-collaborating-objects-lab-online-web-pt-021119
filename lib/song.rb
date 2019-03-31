<<<<<<< HEAD


class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(file)
    song_info = file.split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end
  
  def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
  end
  
=======
require 'artist.rb'

class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    artist_name, song_name, extra = filename.split(" - ")
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
  end
  
  
>>>>>>> 83b5cfe3a84ea6b092a58088ba079596d3a1e70a
end